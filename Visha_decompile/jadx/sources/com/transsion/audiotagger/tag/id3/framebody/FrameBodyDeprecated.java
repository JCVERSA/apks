package com.transsion.audiotagger.tag.id3.framebody;

public class FrameBodyDeprecated extends AbstractID3v2FrameBody implements ID3v24FrameBody, ID3v23FrameBody {
    private AbstractID3v2FrameBody originalFrameBody;

    public FrameBodyDeprecated(AbstractID3v2FrameBody abstractID3v2FrameBody) {
        this.originalFrameBody = abstractID3v2FrameBody;
    }

    @Override
    public boolean equals(Object obj) {
        return (obj instanceof FrameBodyDeprecated) && getIdentifier().equals(((FrameBodyDeprecated) obj).getIdentifier()) && super.equals(obj);
    }

    @Override
    public String getBriefDescription() {
        AbstractID3v2FrameBody abstractID3v2FrameBody = this.originalFrameBody;
        return abstractID3v2FrameBody != null ? abstractID3v2FrameBody.getBriefDescription() : "";
    }

    @Override
    public String getIdentifier() {
        return this.originalFrameBody.getIdentifier();
    }

    public AbstractID3v2FrameBody getOriginalFrameBody() {
        return this.originalFrameBody;
    }

    @Override
    public int getSize() {
        return this.originalFrameBody.getSize();
    }

    @Override
    public void setupObjectList() {
    }

    @Override
    public String toString() {
        return getIdentifier();
    }

    public FrameBodyDeprecated(FrameBodyDeprecated frameBodyDeprecated) {
        super(frameBodyDeprecated);
    }
}
