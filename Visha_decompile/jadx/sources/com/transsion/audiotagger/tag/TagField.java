package com.transsion.audiotagger.tag;

import java.io.UnsupportedEncodingException;

public interface TagField {
    void copyContent(TagField tagField);

    String getId();

    byte[] getRawContent() throws UnsupportedEncodingException;

    void isBinary(boolean z);

    boolean isBinary();

    boolean isCommon();

    boolean isEmpty();

    String toString();
}
