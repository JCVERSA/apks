package com.iab.omid.library.hisavana.adsession;

public enum Owner {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");

    private final String owner;

    Owner(String str) {
        this.owner = str;
    }

    @Override
    public String toString() {
        return this.owner;
    }
}
