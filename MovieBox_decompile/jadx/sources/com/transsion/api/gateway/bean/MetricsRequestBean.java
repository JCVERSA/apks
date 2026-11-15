package com.transsion.api.gateway.bean;

import java.util.HashMap;
import java.util.List;
import nl.a;

public class MetricsRequestBean {

    @a(name = "collectType")
    public String collectType;

    @a(name = "commonTags")
    public HashMap<String, Object> commonTags;

    @a(name = "db")
    public String f41366db;

    @a(name = "expireSeconds")
    public int expireSeconds;

    @a(name = "metricsName")
    public String metricsName;

    @a(name = "specificTags")
    public List<SpecificTagBean> specificTags;
}
