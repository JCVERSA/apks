package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.datatype.NumberHashMap;
import com.transsion.audiotagger.tag.datatype.TCONString;
import com.transsion.audiotagger.tag.id3.valuepair.ID3V2ExtendedGenreTypes;
import com.transsion.audiotagger.tag.reference.GenreTypes;
import java.nio.ByteBuffer;

public class FrameBodyTCON extends AbstractFrameBodyTextInfo implements ID3v24FrameBody, ID3v23FrameBody {
    public FrameBodyTCON() {
    }

    private static String bracketWrap(Object obj) {
        return "(" + obj + ')';
    }

    private static String checkBracketed(String str) {
        String strReplace = str.replace("(", "").replace(")", "");
        try {
            int i = Integer.parseInt(strReplace);
            return i <= GenreTypes.getMaxGenreId() ? GenreTypes.getInstanceOf().getValueForId(i) : strReplace;
        } catch (NumberFormatException unused) {
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes = ID3V2ExtendedGenreTypes.RX;
            if (strReplace.equalsIgnoreCase(iD3V2ExtendedGenreTypes.name())) {
                return iD3V2ExtendedGenreTypes.getDescription();
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes2 = ID3V2ExtendedGenreTypes.CR;
            return strReplace.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.name()) ? iD3V2ExtendedGenreTypes2.getDescription() : strReplace;
        }
    }

    public static String convertGenericToID3v22Genre(String str) {
        return convertGenericToID3v23Genre(str);
    }

    public static String convertGenericToID3v23Genre(String str) {
        try {
            int i = Integer.parseInt(str);
            return i <= GenreTypes.getMaxGenreId() ? bracketWrap(String.valueOf(i)) : str;
        } catch (NumberFormatException unused) {
            Integer idForName = GenreTypes.getInstanceOf().getIdForName(str);
            if (idForName != null && idForName.intValue() <= GenreTypes.getMaxStandardGenreId()) {
                return bracketWrap(String.valueOf(idForName));
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes = ID3V2ExtendedGenreTypes.RX;
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes.getDescription())) {
                return bracketWrap(iD3V2ExtendedGenreTypes.name());
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes2 = ID3V2ExtendedGenreTypes.CR;
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.getDescription())) {
                return bracketWrap(iD3V2ExtendedGenreTypes2.name());
            }
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes.name())) {
                return bracketWrap(iD3V2ExtendedGenreTypes.name());
            }
            return str.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.name()) ? bracketWrap(iD3V2ExtendedGenreTypes2.name()) : str;
        }
    }

    public static String convertGenericToID3v24Genre(String str) {
        try {
            int i = Integer.parseInt(str);
            return i <= GenreTypes.getMaxGenreId() ? String.valueOf(i) : str;
        } catch (NumberFormatException unused) {
            Integer idForName = GenreTypes.getInstanceOf().getIdForName(str);
            if (idForName != null && idForName.intValue() <= GenreTypes.getMaxStandardGenreId()) {
                return String.valueOf(idForName);
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes = ID3V2ExtendedGenreTypes.RX;
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes.getDescription())) {
                return iD3V2ExtendedGenreTypes.name();
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes2 = ID3V2ExtendedGenreTypes.CR;
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.getDescription())) {
                return iD3V2ExtendedGenreTypes2.name();
            }
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes.name())) {
                return iD3V2ExtendedGenreTypes.name();
            }
            return str.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.name()) ? iD3V2ExtendedGenreTypes2.name() : str;
        }
    }

    public static String convertID3v22GenreToGeneric(String str) {
        return convertID3v23GenreToGeneric(str);
    }

    public static String convertID3v23GenreToGeneric(String str) {
        if (!str.contains(")") || str.lastIndexOf(41) >= str.length() - 1) {
            return checkBracketed(str);
        }
        return checkBracketed(str.substring(0, str.lastIndexOf(41))) + ' ' + str.substring(str.lastIndexOf(41) + 1);
    }

    public static String convertID3v24GenreToGeneric(String str) {
        try {
            int i = Integer.parseInt(str);
            return i <= GenreTypes.getMaxGenreId() ? GenreTypes.getInstanceOf().getValueForId(i) : str;
        } catch (NumberFormatException unused) {
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes = ID3V2ExtendedGenreTypes.RX;
            if (str.equalsIgnoreCase(iD3V2ExtendedGenreTypes.name())) {
                return iD3V2ExtendedGenreTypes.getDescription();
            }
            ID3V2ExtendedGenreTypes iD3V2ExtendedGenreTypes2 = ID3V2ExtendedGenreTypes.CR;
            return str.equalsIgnoreCase(iD3V2ExtendedGenreTypes2.name()) ? iD3V2ExtendedGenreTypes2.getDescription() : str;
        }
    }

    @Override
    public String getIdentifier() {
        return "TCON";
    }

    public void setV23Format() {
        ((TCONString) getObject(DataTypes.OBJ_TEXT)).setNullSeperateMultipleValues(false);
    }

    @Override
    public void setupObjectList() {
        this.objectList.add(new NumberHashMap(DataTypes.OBJ_TEXT_ENCODING, this, 1));
        this.objectList.add(new TCONString(DataTypes.OBJ_TEXT, this));
    }

    public FrameBodyTCON(FrameBodyTCON frameBodyTCON) {
        super(frameBodyTCON);
    }

    public FrameBodyTCON(byte b, String str) {
        super(b, str);
    }

    public FrameBodyTCON(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
    }
}
