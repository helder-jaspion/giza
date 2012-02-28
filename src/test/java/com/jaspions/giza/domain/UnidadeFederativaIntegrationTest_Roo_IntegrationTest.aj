// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.UnidadeFederativa;
import com.jaspions.giza.domain.UnidadeFederativaDataOnDemand;
import com.jaspions.giza.domain.UnidadeFederativaIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect UnidadeFederativaIntegrationTest_Roo_IntegrationTest {
    
    declare @type: UnidadeFederativaIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: UnidadeFederativaIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: UnidadeFederativaIntegrationTest: @Transactional;
    
    @Autowired
    private UnidadeFederativaDataOnDemand UnidadeFederativaIntegrationTest.dod;
    
    @Test
    public void UnidadeFederativaIntegrationTest.testCountUnidadeFederativas() {
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", dod.getRandomUnidadeFederativa());
        long count = UnidadeFederativa.countUnidadeFederativas();
        Assert.assertTrue("Counter for 'UnidadeFederativa' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testFindUnidadeFederativa() {
        UnidadeFederativa obj = dod.getRandomUnidadeFederativa();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to provide an identifier", id);
        obj = UnidadeFederativa.findUnidadeFederativa(id);
        Assert.assertNotNull("Find method for 'UnidadeFederativa' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'UnidadeFederativa' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testFindAllUnidadeFederativas() {
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", dod.getRandomUnidadeFederativa());
        long count = UnidadeFederativa.countUnidadeFederativas();
        Assert.assertTrue("Too expensive to perform a find all test for 'UnidadeFederativa', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<UnidadeFederativa> result = UnidadeFederativa.findAllUnidadeFederativas();
        Assert.assertNotNull("Find all method for 'UnidadeFederativa' illegally returned null", result);
        Assert.assertTrue("Find all method for 'UnidadeFederativa' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testFindUnidadeFederativaEntries() {
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", dod.getRandomUnidadeFederativa());
        long count = UnidadeFederativa.countUnidadeFederativas();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<UnidadeFederativa> result = UnidadeFederativa.findUnidadeFederativaEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'UnidadeFederativa' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'UnidadeFederativa' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testFlush() {
        UnidadeFederativa obj = dod.getRandomUnidadeFederativa();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to provide an identifier", id);
        obj = UnidadeFederativa.findUnidadeFederativa(id);
        Assert.assertNotNull("Find method for 'UnidadeFederativa' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyUnidadeFederativa(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'UnidadeFederativa' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testMergeUpdate() {
        UnidadeFederativa obj = dod.getRandomUnidadeFederativa();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to provide an identifier", id);
        obj = UnidadeFederativa.findUnidadeFederativa(id);
        boolean modified =  dod.modifyUnidadeFederativa(obj);
        Integer currentVersion = obj.getVersion();
        UnidadeFederativa merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'UnidadeFederativa' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", dod.getRandomUnidadeFederativa());
        UnidadeFederativa obj = dod.getNewTransientUnidadeFederativa(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'UnidadeFederativa' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'UnidadeFederativa' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void UnidadeFederativaIntegrationTest.testRemove() {
        UnidadeFederativa obj = dod.getRandomUnidadeFederativa();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'UnidadeFederativa' failed to provide an identifier", id);
        obj = UnidadeFederativa.findUnidadeFederativa(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'UnidadeFederativa' with identifier '" + id + "'", UnidadeFederativa.findUnidadeFederativa(id));
    }
    
}