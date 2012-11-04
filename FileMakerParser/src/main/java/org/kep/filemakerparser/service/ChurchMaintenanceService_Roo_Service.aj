// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.filemakerparser.service;

import java.util.List;
import org.kep.filemakerparser.domain.ChurchMaintenance;
import org.kep.filemakerparser.service.ChurchMaintenanceService;

privileged aspect ChurchMaintenanceService_Roo_Service {
    
    public abstract long ChurchMaintenanceService.countAllChurchMaintenances();    
    public abstract void ChurchMaintenanceService.deleteChurchMaintenance(ChurchMaintenance churchMaintenance);    
    public abstract ChurchMaintenance ChurchMaintenanceService.findChurchMaintenance(Long id);    
    public abstract List<ChurchMaintenance> ChurchMaintenanceService.findAllChurchMaintenances();    
    public abstract List<ChurchMaintenance> ChurchMaintenanceService.findChurchMaintenanceEntries(int firstResult, int maxResults);    
    public abstract void ChurchMaintenanceService.saveChurchMaintenance(ChurchMaintenance churchMaintenance);    
    public abstract ChurchMaintenance ChurchMaintenanceService.updateChurchMaintenance(ChurchMaintenance churchMaintenance);    
}
