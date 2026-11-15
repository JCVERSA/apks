package com.transsion.audiotagger.tag.id3;

import com.alibaba.android.arouter.utils.Consts;
import java.util.logging.Logger;

public abstract class AbstractID3Tag extends AbstractTag {
    protected static final String TAG_RELEASE = "ID3v";
    public static Logger logger = Logger.getLogger("com.transsion.audiotagger.tag.id3");
    private String loggingFilename;

    public AbstractID3Tag() {
        this.loggingFilename = "";
    }

    @Override
    public String getIdentifier() {
        return TAG_RELEASE + ((int) getRelease()) + Consts.DOT + ((int) getMajorVersion()) + Consts.DOT + ((int) getRevision());
    }

    public String getLoggingFilename() {
        return this.loggingFilename;
    }

    public abstract byte getMajorVersion();

    public abstract byte getRelease();

    public abstract byte getRevision();

    public void setLoggingFilename(String str) {
        this.loggingFilename = str;
    }

    public AbstractID3Tag(AbstractID3Tag abstractID3Tag) {
        super(abstractID3Tag);
        this.loggingFilename = "";
    }
}
