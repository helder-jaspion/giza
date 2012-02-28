// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.DocumentoIdentidade;
import com.jaspions.giza.domain.DocumentoIdentidadeDataOnDemand;
import com.jaspions.giza.domain.DocumentoIdentidadeIntegrationTest;
import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DocumentoIdentidadeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DocumentoIdentidadeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DocumentoIdentidadeIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DocumentoIdentidadeIntegrationTest: @Transactional;
    
    @Autowired
    private DocumentoIdentidadeDataOnDemand DocumentoIdentidadeIntegrationTest.dod;
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testCountDocumentoIdentidades() {
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", dod.getRandomDocumentoIdentidade());
        long count = DocumentoIdentidade.countDocumentoIdentidades();
        Assert.assertTrue("Counter for 'DocumentoIdentidade' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testFindDocumentoIdentidade() {
        DocumentoIdentidade obj = dod.getRandomDocumentoIdentidade();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to provide an identifier", id);
        obj = DocumentoIdentidade.findDocumentoIdentidade(id);
        Assert.assertNotNull("Find method for 'DocumentoIdentidade' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'DocumentoIdentidade' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testFindAllDocumentoIdentidades() {
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", dod.getRandomDocumentoIdentidade());
        long count = DocumentoIdentidade.countDocumentoIdentidades();
        Assert.assertTrue("Too expensive to perform a find all test for 'DocumentoIdentidade', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<DocumentoIdentidade> result = DocumentoIdentidade.findAllDocumentoIdentidades();
        Assert.assertNotNull("Find all method for 'DocumentoIdentidade' illegally returned null", result);
        Assert.assertTrue("Find all method for 'DocumentoIdentidade' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testFindDocumentoIdentidadeEntries() {
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", dod.getRandomDocumentoIdentidade());
        long count = DocumentoIdentidade.countDocumentoIdentidades();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<DocumentoIdentidade> result = DocumentoIdentidade.findDocumentoIdentidadeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'DocumentoIdentidade' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'DocumentoIdentidade' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testFlush() {
        DocumentoIdentidade obj = dod.getRandomDocumentoIdentidade();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to provide an identifier", id);
        obj = DocumentoIdentidade.findDocumentoIdentidade(id);
        Assert.assertNotNull("Find method for 'DocumentoIdentidade' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDocumentoIdentidade(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'DocumentoIdentidade' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testMergeUpdate() {
        DocumentoIdentidade obj = dod.getRandomDocumentoIdentidade();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to provide an identifier", id);
        obj = DocumentoIdentidade.findDocumentoIdentidade(id);
        boolean modified =  dod.modifyDocumentoIdentidade(obj);
        Integer currentVersion = obj.getVersion();
        DocumentoIdentidade merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'DocumentoIdentidade' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", dod.getRandomDocumentoIdentidade());
        DocumentoIdentidade obj = dod.getNewTransientDocumentoIdentidade(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'DocumentoIdentidade' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'DocumentoIdentidade' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DocumentoIdentidadeIntegrationTest.testRemove() {
        DocumentoIdentidade obj = dod.getRandomDocumentoIdentidade();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'DocumentoIdentidade' failed to provide an identifier", id);
        obj = DocumentoIdentidade.findDocumentoIdentidade(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'DocumentoIdentidade' with identifier '" + id + "'", DocumentoIdentidade.findDocumentoIdentidade(id));
    }
    
}