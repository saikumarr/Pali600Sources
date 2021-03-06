// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.cemetery.web;

import org.kep.cemetery.domain.Address;
import org.kep.cemetery.domain.ChurchMaintenance;
import org.kep.cemetery.domain.Munificence;
import org.kep.cemetery.domain.Person;
import org.kep.cemetery.domain.PhoneNumber;
import org.kep.cemetery.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Address, String> ApplicationConversionServiceFactoryBean.getAddressToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.kep.cemetery.domain.Address, java.lang.String>() {
            public String convert(Address address) {
                return new StringBuilder().append(address.getStreet()).append(' ').append(address.getCity()).append(' ').append(address.getZipCode()).append(' ').append(address.getCountry()).toString();
            }
        };
    }
    
    public Converter<String, Address> ApplicationConversionServiceFactoryBean.getStringToAddressConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.kep.cemetery.domain.Address>() {
            public org.kep.cemetery.domain.Address convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Address.class);
            }
        };
    }
    
    public Converter<ChurchMaintenance, String> ApplicationConversionServiceFactoryBean.getChurchMaintenanceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.kep.cemetery.domain.ChurchMaintenance, java.lang.String>() {
            public String convert(ChurchMaintenance churchMaintenance) {
                return new StringBuilder().append(churchMaintenance.getYearOfMaintenance()).append(' ').append(churchMaintenance.getPaymentNumber()).append(' ').append(churchMaintenance.getAmount()).append(' ').append(churchMaintenance.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, ChurchMaintenance> ApplicationConversionServiceFactoryBean.getIdToChurchMaintenanceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.kep.cemetery.domain.ChurchMaintenance>() {
            public org.kep.cemetery.domain.ChurchMaintenance convert(java.lang.Long id) {
                return ChurchMaintenance.findChurchMaintenance(id);
            }
        };
    }
    
    public Converter<String, ChurchMaintenance> ApplicationConversionServiceFactoryBean.getStringToChurchMaintenanceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.kep.cemetery.domain.ChurchMaintenance>() {
            public org.kep.cemetery.domain.ChurchMaintenance convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ChurchMaintenance.class);
            }
        };
    }
    
    public Converter<Munificence, String> ApplicationConversionServiceFactoryBean.getMunificenceToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.kep.cemetery.domain.Munificence, java.lang.String>() {
            public String convert(Munificence munificence) {
                return new StringBuilder().append(munificence.getPurpose()).append(' ').append(munificence.getAmount()).append(' ').append(munificence.getYearOfMunificence()).append(' ').append(munificence.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Munificence> ApplicationConversionServiceFactoryBean.getIdToMunificenceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.kep.cemetery.domain.Munificence>() {
            public org.kep.cemetery.domain.Munificence convert(java.lang.Long id) {
                return Munificence.findMunificence(id);
            }
        };
    }
    
    public Converter<String, Munificence> ApplicationConversionServiceFactoryBean.getStringToMunificenceConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.kep.cemetery.domain.Munificence>() {
            public org.kep.cemetery.domain.Munificence convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Munificence.class);
            }
        };
    }
    
    public Converter<Person, String> ApplicationConversionServiceFactoryBean.getPersonToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.kep.cemetery.domain.Person, java.lang.String>() {
            public String convert(Person person) {
                return new StringBuilder().append(person.getName()).append(' ').append(person.getEmailAddress()).append(' ').append(person.getMaidenName()).append(' ').append(person.getBirthDate()).toString();
            }
        };
    }
    
    public Converter<String, Person> ApplicationConversionServiceFactoryBean.getStringToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.kep.cemetery.domain.Person>() {
            public org.kep.cemetery.domain.Person convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Person.class);
            }
        };
    }
    
    public Converter<PhoneNumber, String> ApplicationConversionServiceFactoryBean.getPhoneNumberToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.kep.cemetery.domain.PhoneNumber, java.lang.String>() {
            public String convert(PhoneNumber phoneNumber) {
                return new StringBuilder().append(phoneNumber.getPhoneNumber()).toString();
            }
        };
    }
    
    public Converter<Long, PhoneNumber> ApplicationConversionServiceFactoryBean.getIdToPhoneNumberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.kep.cemetery.domain.PhoneNumber>() {
            public org.kep.cemetery.domain.PhoneNumber convert(java.lang.Long id) {
                return PhoneNumber.findPhoneNumber(id);
            }
        };
    }
    
    public Converter<String, PhoneNumber> ApplicationConversionServiceFactoryBean.getStringToPhoneNumberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.kep.cemetery.domain.PhoneNumber>() {
            public org.kep.cemetery.domain.PhoneNumber convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PhoneNumber.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAddressToStringConverter());
        registry.addConverter(getStringToAddressConverter());
        registry.addConverter(getChurchMaintenanceToStringConverter());
        registry.addConverter(getIdToChurchMaintenanceConverter());
        registry.addConverter(getStringToChurchMaintenanceConverter());
        registry.addConverter(getMunificenceToStringConverter());
        registry.addConverter(getIdToMunificenceConverter());
        registry.addConverter(getStringToMunificenceConverter());
        registry.addConverter(getPersonToStringConverter());
        registry.addConverter(getStringToPersonConverter());
        registry.addConverter(getPhoneNumberToStringConverter());
        registry.addConverter(getIdToPhoneNumberConverter());
        registry.addConverter(getStringToPhoneNumberConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
