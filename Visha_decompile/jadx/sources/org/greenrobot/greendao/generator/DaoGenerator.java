package org.greenrobot.greendao.generator;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.xe1;
import freemarker.template.Template;
import freemarker.template.TemplateNotFoundException;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

public class DaoGenerator {
    private Pattern patternKeepFields;
    private Pattern patternKeepIncludes;
    private Pattern patternKeepMethods;
    private Template templateContentProvider;
    private Template templateDao;
    private Template templateDaoMaster;
    private Template templateDaoSession;
    private Template templateDaoUnitTest;
    private Template templateEntity;

    public DaoGenerator() throws IOException {
        PrintStream printStream = System.out;
        printStream.println("greenDAO Generator");
        printStream.println("Copyright 2011-2016 Markus Junginger, greenrobot.de. Licensed under GPL V3.");
        printStream.println("This program comes with ABSOLUTELY NO WARRANTY");
        this.patternKeepIncludes = compilePattern("INCLUDES");
        this.patternKeepFields = compilePattern("FIELDS");
        this.patternKeepMethods = compilePattern("METHODS");
        xe1 configuration = getConfiguration("dao.ftl");
        this.templateDao = configuration.M0("dao.ftl");
        this.templateDaoMaster = configuration.M0("dao-master.ftl");
        this.templateDaoSession = configuration.M0("dao-session.ftl");
        this.templateEntity = configuration.M0("entity.ftl");
        this.templateDaoUnitTest = configuration.M0("dao-unit-test.ftl");
        this.templateContentProvider = configuration.M0("content-provider.ftl");
    }

    private void checkKeepSections(File file, Map<String, Object> map) {
        if (file.exists()) {
            try {
                String str = new String(DaoUtil.readAllBytes(file));
                Matcher matcher = this.patternKeepIncludes.matcher(str);
                if (matcher.matches()) {
                    map.put("keepIncludes", matcher.group(1));
                }
                Matcher matcher2 = this.patternKeepFields.matcher(str);
                if (matcher2.matches()) {
                    map.put("keepFields", matcher2.group(1));
                }
                Matcher matcher3 = this.patternKeepMethods.matcher(str);
                if (matcher3.matches()) {
                    map.put("keepMethods", matcher3.group(1));
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private Pattern compilePattern(String str) {
        return Pattern.compile(".*^\\s*?//\\s*?KEEP " + str + ".*?\n(.*?)^\\s*// KEEP " + str + " END.*?\n", 40);
    }

    private void generate(Template template, File file, String str, String str2, Schema schema, Entity entity) throws Exception {
        generate(template, file, str, str2, schema, entity, null);
    }

    private xe1 getConfiguration(String str) throws IOException {
        xe1 xe1Var = new xe1(xe1.j0);
        xe1Var.Z0(getClass(), "/");
        try {
            xe1Var.M0(str);
        } catch (TemplateNotFoundException e) {
            File file = new File("src/main/resources/");
            if (!file.exists()) {
                file = new File("DaoGenerator/src/main/resources/");
            }
            if (!file.exists() || !new File(file, str).exists()) {
                throw e;
            }
            xe1Var.a1(file);
            xe1Var.M0(str);
        }
        return xe1Var;
    }

    public void generateAll(Schema schema, String str) throws Exception {
        generateAll(schema, str, null, null);
    }

    public File toFileForceExists(String str) throws IOException {
        File file = new File(str);
        if (file.exists()) {
            return file;
        }
        throw new IOException(str + " does not exist. This check is to prevent accidental file generation into a wrong path.");
    }

    public File toJavaFilename(File file, String str, String str2) {
        return new File(new File(file, str.replace('.', IOUtils.DIR_SEPARATOR_UNIX)), str2 + ".java");
    }

    private void generate(Template template, File file, String str, String str2, Schema schema, Entity entity, Map<String, Object> map) throws Exception {
        HashMap map2 = new HashMap();
        map2.put("schema", schema);
        map2.put("entity", entity);
        if (map != null) {
            map2.putAll(map);
        }
        try {
            File javaFilename = toJavaFilename(file, str, str2);
            javaFilename.getParentFile().mkdirs();
            if (entity != null && entity.getHasKeepSections().booleanValue()) {
                checkKeepSections(javaFilename, map2);
            }
            FileWriter fileWriter = new FileWriter(javaFilename);
            try {
                template.H0(map2, fileWriter);
                fileWriter.flush();
                System.out.println("Written " + javaFilename.getCanonicalPath());
            } finally {
                fileWriter.close();
            }
        } catch (Exception e) {
            PrintStream printStream = System.err;
            printStream.println("Data map for template: " + map2);
            printStream.println("Error while generating " + str + Consts.DOT + str2 + " (" + file.getCanonicalPath() + ")");
            throw e;
        }
    }

    public void generateAll(Schema schema, String str, String str2, String str3) throws Exception {
        long jCurrentTimeMillis = System.currentTimeMillis();
        File fileForceExists = toFileForceExists(str);
        File fileForceExists2 = str2 != null ? toFileForceExists(str2) : fileForceExists;
        File fileForceExists3 = str3 != null ? toFileForceExists(str3) : null;
        schema.init2ndPass();
        schema.init3rdPass();
        System.out.println("Processing schema version " + schema.getVersion() + "...");
        List<Entity> entities = schema.getEntities();
        for (Entity entity : entities) {
            generate(this.templateDao, fileForceExists, entity.getJavaPackageDao(), entity.getClassNameDao(), schema, entity);
            if (!entity.isProtobuf() && !entity.isSkipGeneration()) {
                generate(this.templateEntity, fileForceExists2, entity.getJavaPackage(), entity.getClassName(), schema, entity);
            }
            if (fileForceExists3 != null && !entity.isSkipGenerationTest()) {
                String javaPackageTest = entity.getJavaPackageTest();
                String classNameTest = entity.getClassNameTest();
                File javaFilename = toJavaFilename(fileForceExists3, javaPackageTest, classNameTest);
                if (javaFilename.exists()) {
                    System.out.println("Skipped " + javaFilename.getCanonicalPath());
                } else {
                    generate(this.templateDaoUnitTest, fileForceExists3, javaPackageTest, classNameTest, schema, entity);
                }
            }
            for (ContentProvider contentProvider : entity.getContentProviders()) {
                HashMap map = new HashMap();
                map.put("contentProvider", contentProvider);
                generate(this.templateContentProvider, fileForceExists, entity.getJavaPackage(), entity.getClassName() + "ContentProvider", schema, entity, map);
            }
        }
        generate(this.templateDaoMaster, fileForceExists, schema.getDefaultJavaPackageDao(), schema.getPrefix() + "DaoMaster", schema, null);
        generate(this.templateDaoSession, fileForceExists, schema.getDefaultJavaPackageDao(), schema.getPrefix() + "DaoSession", schema, null);
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        System.out.println("Processed " + entities.size() + " entities in " + jCurrentTimeMillis2 + "ms");
    }
}
