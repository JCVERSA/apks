package com.mgtv.data.aphone.core.bean;

import com.mgtv.json.JsonInterface;

public class AppInfoBean implements JsonInterface {
    public String appPermissions;
    public String appName = "";
    public String packageName = "";
    public String versionName = "";
    public int versionCode = 0;
}
