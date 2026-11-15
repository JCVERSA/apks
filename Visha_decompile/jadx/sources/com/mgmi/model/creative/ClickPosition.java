package com.mgmi.model.creative;

import com.mgadplus.netlib.json.a;
import java.io.Serializable;

public class ClickPosition implements a, Serializable {
    public boolean autoOpen;
    public boolean noClickReport;
    public String type;
    public int x;
    public int y;
}
