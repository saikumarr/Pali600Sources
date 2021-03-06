package org.kep.cemetery.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaEntity
public class Address {

    /**
     */
    @NotNull
    private String street;

    /**
     */
    @NotNull
    private String city;

    /**
     */
    @NotNull
    @Size(min = 4)
    private String zipCode;

    /**
     */
    private String country;
}
