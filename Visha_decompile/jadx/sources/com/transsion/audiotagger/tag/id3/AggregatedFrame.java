package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import com.transsion.audiotagger.tag.id3.valuepair.TextEncoding;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class AggregatedFrame implements TagTextField {
    protected Set<AbstractID3v2Frame> frames = new LinkedHashSet();

    public void addFrame(AbstractID3v2Frame abstractID3v2Frame) {
        this.frames.add(abstractID3v2Frame);
    }

    @Override
    public void copyContent(TagField tagField) {
    }

    @Override
    public String getContent() {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractID3v2Frame> it = this.frames.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getContent());
        }
        return sb.toString();
    }

    @Override
    public Charset getEncoding() {
        return TextEncoding.getInstanceOf().getCharsetForId(this.frames.iterator().next().getBody().getTextEncoding());
    }

    public Set<AbstractID3v2Frame> getFrames() {
        return this.frames;
    }

    @Override
    public String getId() {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractID3v2Frame> it = this.frames.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getId());
        }
        return sb.toString();
    }

    @Override
    public byte[] getRawContent() throws UnsupportedEncodingException {
        throw new UnsupportedEncodingException();
    }

    @Override
    public void isBinary(boolean z) {
    }

    @Override
    public boolean isCommon() {
        return true;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public void setContent(String str) {
    }

    @Override
    public void setEncoding(Charset charset) {
    }

    @Override
    public boolean isBinary() {
        return false;
    }
}
