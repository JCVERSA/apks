package org.greenrobot.greendao.generator;

import java.util.List;

public class ContentProvider {
    private String authority;
    private String basePath;
    private String className;
    private final List<Entity> entities;
    private String javaPackage;
    private boolean readOnly;
    private Schema schema;

    public ContentProvider(Schema schema, List<Entity> list) {
        this.schema = schema;
        this.entities = list;
    }

    public String getAuthority() {
        return this.authority;
    }

    public String getBasePath() {
        return this.basePath;
    }

    public String getClassName() {
        return this.className;
    }

    public List<Entity> getEntities() {
        return this.entities;
    }

    public String getJavaPackage() {
        return this.javaPackage;
    }

    public void init2ndPass() {
        if (this.authority == null) {
            this.authority = this.schema.getDefaultJavaPackage() + ".provider";
        }
        if (this.basePath == null) {
            this.basePath = "";
        }
        if (this.className == null) {
            this.className = this.entities.get(0).getClassName() + "ContentProvider";
        }
        if (this.javaPackage == null) {
            this.javaPackage = this.schema.getDefaultJavaPackage();
        }
    }

    public boolean isReadOnly() {
        return this.readOnly;
    }

    public void readOnly() {
        this.readOnly = true;
    }

    public void setAuthority(String str) {
        this.authority = str;
    }

    public void setBasePath(String str) {
        this.basePath = str;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setJavaPackage(String str) {
        this.javaPackage = str;
    }
}
