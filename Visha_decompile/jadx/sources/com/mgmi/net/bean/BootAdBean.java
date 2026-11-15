package com.mgmi.net.bean;

import java.io.Serializable;

public class BootAdBean extends MgmiBaseBean implements com.mgadplus.netlib.json.a, Serializable {
    private static final long serialVersionUID = 5051054885087539681L;
    public com.mgmi.e.a bidResult;
    public SdkConfigData config;
    public BootDataItem data;
    public int err_code;
    public String err_msg;
    public boolean isWarmBoot;
    public String platform;
    public a reportCreativeTrackInfo;
    public int roll_time;
    public String success;
    public d thirdPartSdkCostItem;
    public String trace;
    public String uniqueId;
}
