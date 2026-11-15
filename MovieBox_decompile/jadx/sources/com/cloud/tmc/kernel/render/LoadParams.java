package com.cloud.tmc.kernel.render;

public class LoadParams {
    public String appId;
    public String beforeScript;
    public boolean forceLoad;
    public boolean isReload;
    public String pagePath;
    public String url;

    public LoadParams() {
    }

    public String toString() {
        return "LoadParams{url='" + this.url + "'}";
    }

    public LoadParams(LoadParams loadParams) {
        this.url = loadParams.url;
        this.isReload = loadParams.isReload;
        this.forceLoad = loadParams.forceLoad;
        this.pagePath = loadParams.pagePath;
        this.appId = loadParams.appId;
    }
}
