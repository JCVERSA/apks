package com.mgmi.model.creative;

import com.mgadplus.netlib.json.a;
import java.io.Serializable;
import java.util.ArrayList;

public class showAdPopupItem implements a, Serializable {
    public ArrayList<item> items;
    public int x;
    public int y;

    public static class item implements a, Serializable {
        public String label;
        public String type;
    }
}
