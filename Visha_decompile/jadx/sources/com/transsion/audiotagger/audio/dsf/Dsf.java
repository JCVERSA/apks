package com.transsion.audiotagger.audio.dsf;

import com.transsion.audiotagger.tag.Tag;
import com.transsion.audiotagger.tag.TagOptionSingleton;
import com.transsion.audiotagger.tag.id3.ID3v22Tag;
import com.transsion.audiotagger.tag.id3.ID3v23Tag;
import com.transsion.audiotagger.tag.id3.ID3v24Tag;
import com.transsion.audiotagger.tag.reference.ID3V2Version;

public class Dsf {
    public static Tag createDefaultTag() {
        if (TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V24) {
            return new ID3v24Tag();
        }
        if (TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V23) {
            return new ID3v23Tag();
        }
        return TagOptionSingleton.getInstance().getID3V2Version() == ID3V2Version.ID3_V22 ? new ID3v22Tag() : new ID3v24Tag();
    }
}
