package org.schabi.newpipe.extractor.exceptions;

public class ReCaptchaException extends ExtractionException {
    private final String url;

    public ReCaptchaException(String str, String str2) {
        super(str);
        this.url = str2;
    }

    public String getUrl() {
        return this.url;
    }
}
