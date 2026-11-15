package com.mgtv.thirdsdk.shortvideo.task;

import com.mgtv.json.JsonInterface;

public class ShortVideoInfo implements JsonInterface {
    private String url;
    private a user;

    public static class a {
    }

    public String getUrl() {
        return this.url;
    }

    public a getUser() {
        return this.user;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUser(a aVar) {
        this.user = aVar;
    }
}
