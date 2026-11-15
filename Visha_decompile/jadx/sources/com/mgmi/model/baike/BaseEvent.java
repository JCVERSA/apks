package com.mgmi.model.baike;

import java.io.Serializable;
import java.util.List;

public class BaseEvent implements com.mgadplus.netlib.json.a, Serializable {
    public List<TabEvent> events;
    public String resInfo;
}
