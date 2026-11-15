package com.mgtv.task.http;

import androidx.collection.SimpleArrayMap;
import com.mgtv.json.JsonInterface;
import java.util.ArrayList;
import java.util.Map;
import okhttp3.Headers;

public class HttpTraceObject implements JsonInterface {
    public static final int STEP_LAST_TCP = 4;
    public static final int STEP_REQUEST = 2;
    public static final int STEP_RESPONSE = 5;
    public static final int STEP_TOTAL = 1;
    public static final int STEP_TOTAL_TCP = 3;
    private Map<String, String> body;
    private String bodyText;
    private String contentType;
    private Exception exception;
    private String finalUrl;
    private Map<String, String> header;
    private int httpStatus;
    private boolean isBodyGZip;
    private String method;
    private MultiParts multiParts;
    private String response;
    private Headers responseHeader;
    private String url;
    public ArrayList<com.mgtv.task.http.retry.b> mRetryLogs = new ArrayList<>();
    private SimpleArrayMap<Integer, Long[]> stepDurationMap = new SimpleArrayMap<>();

    public Map<String, String> getBody() {
        return this.body;
    }

    public String getBodyText() {
        return this.bodyText;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Exception getException() {
        return this.exception;
    }

    public String getFinalUrl() {
        return this.finalUrl;
    }

    public Map<String, String> getHeader() {
        return this.header;
    }

    public int getHttpStatus() {
        return this.httpStatus;
    }

    @Deprecated
    public String getIp() {
        return "";
    }

    public String getMethod() {
        return this.method;
    }

    public MultiParts getMultiParts() {
        return this.multiParts;
    }

    public String getResponse() {
        return this.response;
    }

    public Headers getResponseHeader() {
        return this.responseHeader;
    }

    public long getStepDuration(int i) {
        Long l;
        Long[] lArr = this.stepDurationMap.get(Integer.valueOf(i));
        if (lArr == null || lArr[0] == null || (l = lArr[1]) == null) {
            return -1L;
        }
        return l.longValue() - lArr[0].longValue();
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isBodyGZip() {
        return this.isBodyGZip;
    }

    public void setBody(Map<String, String> map) {
        this.body = map;
    }

    public void setBodyGZip(boolean z) {
        this.isBodyGZip = z;
    }

    public void setBodyText(String str) {
        this.bodyText = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setException(Exception exc) {
        this.exception = exc;
    }

    public void setFinalUrl(String str) {
        this.finalUrl = str;
    }

    public void setHeader(Map<String, String> map) {
        this.header = map;
    }

    public void setHttpStatus(int i) {
        this.httpStatus = i;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setMultiParts(MultiParts multiParts) {
        this.multiParts = multiParts;
    }

    public void setResponse(String str) {
        this.response = str;
    }

    public void setResponseHeader(Headers headers) {
        this.responseHeader = headers;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void stepEnd(int... iArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i : iArr) {
            Long[] lArr = this.stepDurationMap.get(Integer.valueOf(i));
            if (lArr != null) {
                lArr[1] = Long.valueOf(jCurrentTimeMillis);
            }
        }
    }

    public void stepStart(int... iArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        for (int i : iArr) {
            Long[] lArr = new Long[2];
            lArr[0] = Long.valueOf(jCurrentTimeMillis);
            this.stepDurationMap.put(Integer.valueOf(i), lArr);
        }
    }
}
