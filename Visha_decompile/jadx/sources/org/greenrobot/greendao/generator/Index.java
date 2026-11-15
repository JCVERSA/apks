package org.greenrobot.greendao.generator;

public class Index extends PropertyOrderList {
    private String name;
    private boolean nonDefaultName;
    private boolean unique;

    public String getName() {
        return this.name;
    }

    public boolean isNonDefaultName() {
        return this.nonDefaultName;
    }

    public boolean isUnique() {
        return this.unique;
    }

    public Index makeUnique() {
        this.unique = true;
        return this;
    }

    public void setDefaultName(String str) {
        this.name = str;
        this.nonDefaultName = false;
    }

    public Index setName(String str) {
        this.name = str;
        this.nonDefaultName = str != null;
        return this;
    }
}
