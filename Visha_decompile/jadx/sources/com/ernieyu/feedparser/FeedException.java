package com.ernieyu.feedparser;

public class FeedException extends Exception {
    public FeedException() {
    }

    public FeedException(String str) {
        super(str);
    }

    public FeedException(Throwable th) {
        super(th);
    }

    public FeedException(String str, Throwable th) {
        super(str, th);
    }
}
