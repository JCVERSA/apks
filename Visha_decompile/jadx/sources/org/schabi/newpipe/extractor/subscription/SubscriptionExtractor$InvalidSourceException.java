package org.schabi.newpipe.extractor.subscription;

import org.schabi.newpipe.extractor.exceptions.ParsingException;

public class SubscriptionExtractor$InvalidSourceException extends ParsingException {
    public SubscriptionExtractor$InvalidSourceException() {
        this(null, null);
    }

    public SubscriptionExtractor$InvalidSourceException(String str) {
        this(str, null);
    }

    public SubscriptionExtractor$InvalidSourceException(Throwable th) {
        this(null, th);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SubscriptionExtractor$InvalidSourceException(String str, Throwable th) {
        String str2;
        if (str == null) {
            str2 = "";
        } else {
            str2 = " (" + str + ")";
        }
        super("Not a valid source" + str2, th);
    }
}
