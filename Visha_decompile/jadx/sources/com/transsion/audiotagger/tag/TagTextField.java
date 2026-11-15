package com.transsion.audiotagger.tag;

import java.nio.charset.Charset;

public interface TagTextField extends TagField {
    String getContent();

    Charset getEncoding();

    void setContent(String str);

    void setEncoding(Charset charset);
}
