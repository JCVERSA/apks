package com.transsion.audiotagger.logging;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.aistatistics.KeyConstant;
import com.transsion.retrofit.reponse.ResponseUtil;
import java.util.HashMap;

public abstract class AbstractTagDisplayFormatter {
    private static HashMap<String, String> hexBinaryMap;
    protected int level;

    static {
        HashMap<String, String> map = new HashMap<>();
        hexBinaryMap = map;
        map.put("0", "0000");
        hexBinaryMap.put("1", "0001");
        hexBinaryMap.put("2", "0010");
        hexBinaryMap.put("3", "0011");
        hexBinaryMap.put("4", "0100");
        hexBinaryMap.put("5", "0101");
        hexBinaryMap.put("6", "0110");
        hexBinaryMap.put("7", "0111");
        hexBinaryMap.put("8", "1000");
        hexBinaryMap.put("9", KeyConstant.APP_ID);
        hexBinaryMap.put(CmcdData.OBJECT_TYPE_AUDIO_ONLY, ResponseUtil.CODE_ERROR_DEFAULT);
        hexBinaryMap.put("b", "1011");
        hexBinaryMap.put("c", "1100");
        hexBinaryMap.put("d", "1101");
        hexBinaryMap.put("e", "1110");
        hexBinaryMap.put("f", "1111");
    }

    public static String displayAsBinary(byte b) {
        String str;
        String strSubstring;
        String strSubstring2;
        String hexString = Integer.toHexString(b);
        String str2 = "";
        try {
            if (hexString.length() == 8) {
                strSubstring = hexString.substring(6, 7);
                strSubstring2 = hexString.substring(7, 8);
            } else {
                if (hexString.length() != 2) {
                    if (hexString.length() == 1) {
                        strSubstring = "0";
                        strSubstring2 = hexString.substring(0, 1);
                    } else {
                        str = "";
                    }
                    return hexBinaryMap.get(str2) + hexBinaryMap.get(str);
                }
                strSubstring = hexString.substring(0, 1);
                strSubstring2 = hexString.substring(1, 2);
            }
            str = strSubstring2;
            str2 = strSubstring;
            return hexBinaryMap.get(str2) + hexBinaryMap.get(str);
        } catch (StringIndexOutOfBoundsException unused) {
            return "";
        }
    }

    public abstract void addElement(String str, int i);

    public abstract void addElement(String str, String str2);

    public abstract void addElement(String str, boolean z);

    public abstract void closeHeadingElement(String str);

    public abstract void openHeadingElement(String str, int i);

    public abstract void openHeadingElement(String str, String str2);

    public abstract void openHeadingElement(String str, boolean z);

    public abstract String toString();
}
