package com.mgmi.model;

import java.io.Serializable;
import java.util.Map;

public class DianaEventBean implements com.mgadplus.netlib.json.a, Serializable {
    public String action;
    public String modelType;
    public Map<String, String> params;
}
