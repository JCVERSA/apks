package com.transsion.audiotagger.audio.real;

import com.transsion.audiotagger.audio.generic.GenericTag;
import com.transsion.audiotagger.tag.FieldDataInvalidException;
import com.transsion.audiotagger.tag.FieldKey;
import com.transsion.audiotagger.tag.KeyNotFoundException;
import com.transsion.audiotagger.tag.TagField;

public class RealTag extends GenericTag {
    @Override
    public TagField createCompilationField(boolean z) throws FieldDataInvalidException, KeyNotFoundException {
        return createField(FieldKey.IS_COMPILATION, String.valueOf(z));
    }

    @Override
    public String toString() {
        return "REAL " + super.toString();
    }
}
