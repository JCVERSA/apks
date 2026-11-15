package com.transsion.audiotagger.tag.mp4.field;

import com.transsion.audiotagger.audio.mp4.atom.Mp4BoxHeader;
import com.transsion.audiotagger.logging.ErrorMessage;
import com.transsion.audiotagger.tag.mp4.Mp4FieldKey;
import com.transsion.audiotagger.tag.mp4.Mp4TagField;
import com.transsion.audiotagger.tag.mp4.atom.Mp4DataBox;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

public class Mp4GenreField extends Mp4TagTextNumberField {
    public Mp4GenreField(String str, ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        super(str, byteBuffer);
    }

    public static boolean isValidGenre(String str) {
        try {
            if (Short.parseShort(str) - 1 <= GenreTypes.getMaxStandardGenreId()) {
                return true;
            }
        } catch (NumberFormatException unused) {
        }
        Integer idForValue = GenreTypes.getInstanceOf().getIdForValue(str);
        return idForValue != null && idForValue.intValue() <= GenreTypes.getMaxStandardGenreId();
    }

    @Override
    public void build(ByteBuffer byteBuffer) throws UnsupportedEncodingException {
        Mp4BoxHeader mp4BoxHeader = new Mp4BoxHeader(byteBuffer);
        Mp4DataBox mp4DataBox = new Mp4DataBox(mp4BoxHeader, byteBuffer);
        this.dataSize = mp4BoxHeader.getDataLength();
        List<Short> numbers = mp4DataBox.getNumbers();
        this.numbers = numbers;
        if (numbers.size() <= 0) {
            Mp4TagField.logger.warning(ErrorMessage.MP4_NO_GENREID_FOR_GENRE.getMsg(Integer.valueOf(mp4BoxHeader.getDataLength())));
            return;
        }
        short sShortValue = this.numbers.get(0).shortValue();
        String valueForId = GenreTypes.getInstanceOf().getValueForId(sShortValue - 1);
        this.content = valueForId;
        if (valueForId == null) {
            Mp4TagField.logger.warning(ErrorMessage.MP4_GENRE_OUT_OF_RANGE.getMsg(Integer.valueOf(sShortValue)));
        }
    }

    public Mp4GenreField(String str) {
        super(Mp4FieldKey.GENRE.getFieldName(), str);
        try {
            short s = Short.parseShort(str);
            if (s <= GenreTypes.getMaxStandardGenreId()) {
                ArrayList arrayList = new ArrayList();
                this.numbers = arrayList;
                arrayList.add(Short.valueOf((short) (s + 1)));
            } else {
                ArrayList arrayList2 = new ArrayList();
                this.numbers = arrayList2;
                arrayList2.add((short) 1);
            }
        } catch (NumberFormatException unused) {
            Integer idForValue = GenreTypes.getInstanceOf().getIdForValue(str);
            if (idForValue == null || idForValue.intValue() > GenreTypes.getMaxStandardGenreId()) {
                ArrayList arrayList3 = new ArrayList();
                this.numbers = arrayList3;
                arrayList3.add((short) 1);
            } else {
                ArrayList arrayList4 = new ArrayList();
                this.numbers = arrayList4;
                arrayList4.add(Short.valueOf((short) (idForValue.intValue() + 1)));
            }
        }
    }
}
