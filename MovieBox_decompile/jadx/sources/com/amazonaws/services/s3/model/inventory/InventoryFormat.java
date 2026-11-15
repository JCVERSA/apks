package com.amazonaws.services.s3.model.inventory;

public enum InventoryFormat {
    CSV("CSV");

    private final String format;

    InventoryFormat(String str) {
        this.format = str;
    }

    @Override
    public String toString() {
        return this.format;
    }
}
