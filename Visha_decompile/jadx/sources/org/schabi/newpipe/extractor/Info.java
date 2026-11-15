package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;

public abstract class Info implements Serializable {
    private final List<Throwable> errors;
    private final String id;
    private final String name;
    private String originalUrl;
    private final int serviceId;
    private final String url;

    public Info(int i, String str, String str2, String str3, String str4) {
        this.errors = new ArrayList();
        this.serviceId = i;
        this.id = str;
        this.url = str2;
        this.originalUrl = str3;
        this.name = str4;
    }

    public void addAllErrors(Collection<Throwable> collection) {
        this.errors.addAll(collection);
    }

    public void addError(Throwable th) {
        this.errors.add(th);
    }

    public List<Throwable> getErrors() {
        return this.errors;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getOriginalUrl() {
        return this.originalUrl;
    }

    public StreamingService getService() {
        try {
            return a.f(this.serviceId);
        } catch (ExtractionException e) {
            throw new RuntimeException("Info object has invalid service id", e);
        }
    }

    public int getServiceId() {
        return this.serviceId;
    }

    public String getUrl() {
        return this.url;
    }

    public void setOriginalUrl(String str) {
        this.originalUrl = str;
    }

    public String toString() {
        String str;
        if (this.url.equals(this.originalUrl)) {
            str = "";
        } else {
            str = " (originalUrl=\"" + this.originalUrl + "\")";
        }
        return getClass().getSimpleName() + "[url=\"" + this.url + "\"" + str + ", name=\"" + this.name + "\"]";
    }

    public Info(int i, LinkHandler linkHandler, String str) {
        this(i, linkHandler.getId(), linkHandler.getUrl(), linkHandler.getOriginalUrl(), str);
    }
}
