package com.transsion.audiotagger.tag.wav;

import com.transsion.audiotagger.audio.generic.GenericTag;
import com.transsion.audiotagger.logging.Hex;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.TagField;
import com.transsion.audiotagger.tag.TagTextField;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;

public class WavInfoTag extends GenericTag {
    private List<TagTextField> unrecognisedFields = new ArrayList();
    private Long startLocationInFile = null;
    private Long endLocationInFile = null;

    static {
        GenericTag.supportedKeys = EnumSet.of(FieldKey.ALBUM, FieldKey.ARTIST, FieldKey.ALBUM_ARTIST, FieldKey.TITLE, FieldKey.TRACK, FieldKey.GENRE, FieldKey.COMMENT, FieldKey.YEAR, FieldKey.RECORD_LABEL, FieldKey.ISRC, FieldKey.COMPOSER, FieldKey.LYRICIST, FieldKey.ENCODER, FieldKey.CONDUCTOR, FieldKey.RATING);
    }

    public void addUnRecognizedField(String str, String str2) {
        this.unrecognisedFields.add(new GenericTag.GenericTagTextField(str, str2));
    }

    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    public Long getEndLocationInFile() {
        return this.endLocationInFile;
    }

    public long getSizeOfTag() {
        Long l = this.endLocationInFile;
        if (l == null || this.startLocationInFile == null) {
            return 0L;
        }
        return (l.longValue() - this.startLocationInFile.longValue()) - 8;
    }

    public Long getStartLocationInFile() {
        return this.startLocationInFile;
    }

    public List<TagTextField> getUnrecognisedFields() {
        return this.unrecognisedFields;
    }

    public void setEndLocationInFile(long j) {
        this.endLocationInFile = Long.valueOf(j);
    }

    public void setStartLocationInFile(long j) {
        this.startLocationInFile = Long.valueOf(j);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("Wav Info Tag:\n");
        if (getStartLocationInFile() != null) {
            sb.append("\tstartLocation:" + Hex.asDecAndHex(getStartLocationInFile().longValue()) + "\n");
        }
        if (getEndLocationInFile() != null) {
            sb.append("\tendLocation:" + Hex.asDecAndHex(getEndLocationInFile().longValue()) + "\n");
        }
        sb.append(super.toString());
        if (this.unrecognisedFields.size() > 0) {
            sb.append("\nUnrecognized Tags:\n");
            for (TagTextField tagTextField : this.unrecognisedFields) {
                sb.append("\t" + tagTextField.getId() + StringUtils.PROCESS_POSTFIX_DELIMITER + tagTextField.getContent() + "\n");
            }
        }
        return sb.toString();
    }
}
