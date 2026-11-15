package com.transsion.audiotagger.tag.id3;

public interface Id3SupportingTag {
    AbstractID3v2Tag getID3Tag();

    void setID3Tag(AbstractID3v2Tag abstractID3v2Tag);
}
