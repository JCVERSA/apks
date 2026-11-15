package com.mgmi.model;

import java.util.List;

public class LandPage implements com.mgadplus.netlib.json.a {
    public String fileName;
    public String h5Url;
    public int jumpType;
    public String params;
    public List<ReportItem> report;
    public String zipUrl;

    public static class ReportItem implements com.mgadplus.netlib.json.a {
        public String eventType;
        public int sdk;
        public String value;
    }
}
