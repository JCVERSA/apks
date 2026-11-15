package com.transsion.audiotagger.tag.id3;

import com.transsion.audiotagger.utils.EqualsUtil;

public abstract class AbstractTagFrame extends AbstractTagItem {
    protected AbstractTagFrameBody frameBody;

    public AbstractTagFrame() {
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractTagFrame)) {
            return false;
        }
        AbstractTagFrame abstractTagFrame = (AbstractTagFrame) obj;
        return EqualsUtil.areEqual(getIdentifier(), abstractTagFrame.getIdentifier()) && EqualsUtil.areEqual(this.frameBody, abstractTagFrame.frameBody) && super.equals(abstractTagFrame);
    }

    public AbstractTagFrameBody getBody() {
        return this.frameBody;
    }

    @Override
    public boolean isSubsetOf(Object obj) {
        AbstractTagFrameBody abstractTagFrameBody;
        if (!(obj instanceof AbstractTagFrame)) {
            return false;
        }
        AbstractTagFrameBody abstractTagFrameBody2 = this.frameBody;
        if (abstractTagFrameBody2 == null && ((AbstractTagFrame) obj).frameBody == null) {
            return true;
        }
        return abstractTagFrameBody2 != null && (abstractTagFrameBody = ((AbstractTagFrame) obj).frameBody) != null && abstractTagFrameBody2.isSubsetOf(abstractTagFrameBody) && super.isSubsetOf(obj);
    }

    public void setBody(AbstractTagFrameBody abstractTagFrameBody) {
        this.frameBody = abstractTagFrameBody;
        abstractTagFrameBody.setHeader(this);
    }

    public String toString() {
        return getBody().toString();
    }

    public AbstractTagFrame(AbstractTagFrame abstractTagFrame) {
        AbstractTagFrameBody abstractTagFrameBody = (AbstractTagFrameBody) ID3Tags.copyObject(abstractTagFrame.frameBody);
        this.frameBody = abstractTagFrameBody;
        abstractTagFrameBody.setHeader(this);
    }
}
