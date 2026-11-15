package org.schabi.newpipe.extractor;

import java.io.Serializable;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.stream.Description;

public class MetaInfo implements Serializable {
    private Description content;
    private String title;
    private List<String> urlTexts;
    private List<URL> urls;

    public MetaInfo(String str, Description description, List<URL> list, List<String> list2) {
        this.title = "";
        this.urls = new ArrayList();
        new ArrayList();
        this.title = str;
        this.content = description;
        this.urls = list;
        this.urlTexts = list2;
    }

    public void addUrl(URL url) {
        this.urls.add(url);
    }

    public void addUrlText(String str) {
        this.urlTexts.add(str);
    }

    public Description getContent() {
        return this.content;
    }

    public String getTitle() {
        return this.title;
    }

    public List<String> getUrlTexts() {
        return this.urlTexts;
    }

    public List<URL> getUrls() {
        return this.urls;
    }

    public void setContent(Description description) {
        this.content = description;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrlTexts(List<String> list) {
        this.urlTexts = list;
    }

    public void setUrls(List<URL> list) {
        this.urls = list;
    }

    public MetaInfo() {
        this.title = "";
        this.urls = new ArrayList();
        this.urlTexts = new ArrayList();
    }
}
