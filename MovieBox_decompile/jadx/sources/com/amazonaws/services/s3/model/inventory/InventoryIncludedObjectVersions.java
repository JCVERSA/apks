package com.amazonaws.services.s3.model.inventory;

public enum InventoryIncludedObjectVersions {
    All("All"),
    Current("Current");

    private final String name;

    InventoryIncludedObjectVersions(String str) {
        this.name = str;
    }

    @Override
    public String toString() {
        return this.name;
    }
}
