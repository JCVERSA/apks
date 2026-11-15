package org.schabi.newpipe.extractor.exceptions;

public final class UnsupportedTabException extends UnsupportedOperationException {
    public UnsupportedTabException(String str) {
        super("Unsupported tab " + str);
    }
}
