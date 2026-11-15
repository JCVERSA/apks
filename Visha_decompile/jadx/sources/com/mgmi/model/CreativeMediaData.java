package com.mgmi.model;

import java.io.Serializable;

public class CreativeMediaData implements com.mgadplus.netlib.json.a, Serializable {
    public MediaParams params;
    public String type;

    public static class MediaParams implements com.mgadplus.netlib.json.a, Serializable {
        public String baseOn;
        public int clickOpenWebview;
        public int fill;
        public String fit;
        public int fullScreen;
        public int height;
        public String interactJson;
        public int keepShow;
        public String key;
        public Position position;
        public float scale;
        public int showCloseButton;
        public String src;
        public int width;

        public class Position implements com.mgadplus.netlib.json.a, Serializable {
            public float x;
            public float y;

            public Position() {
            }
        }
    }
}
