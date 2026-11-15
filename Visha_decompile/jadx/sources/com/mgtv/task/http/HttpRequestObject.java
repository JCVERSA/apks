package com.mgtv.task.http;

import com.mgtv.json.JsonInterface;

public class HttpRequestObject implements JsonInterface {
    public transient a channel;
    public boolean enableSmartDns;
    public HttpParams params;
    public HttpTraceObject traceData = new HttpTraceObject();
    public String url;
    public boolean wholeResponse;
}
