package com.mgmi.model;

import java.io.Serializable;
import java.util.List;

public class AiDataBean implements com.mgadplus.netlib.json.a, Serializable {
    public int duration;
    public List<AiItem> items;
    public long triggertime;
    public String zip;

    public static class AiItem implements com.mgadplus.netlib.json.a, Serializable {
        public int resolution;
        public List<Seqs> seqs;
        public String size;
    }

    public static class Seqs implements com.mgadplus.netlib.json.a, Serializable {
        int end;
        public int gap;
        public String img;
        public float oh;
        public float ow;
        public float ox;
        public float oy;
        public float[] poly_points;
        public int triggertime;
    }
}
