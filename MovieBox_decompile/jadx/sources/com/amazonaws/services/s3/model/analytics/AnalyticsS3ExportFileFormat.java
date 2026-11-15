package com.amazonaws.services.s3.model.analytics;

import java.io.Serializable;

public enum AnalyticsS3ExportFileFormat implements Serializable {
    CSV("CSV");

    private final String format;

    AnalyticsS3ExportFileFormat(String str) {
        this.format = str;
    }

    @Override
    public String toString() {
        return this.format;
    }
}
