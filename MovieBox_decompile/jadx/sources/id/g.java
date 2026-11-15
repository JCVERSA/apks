package id;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.zxing.DecodeHintType;
import java.util.EnumMap;
import java.util.Map;
import java.util.regex.Pattern;

public abstract class g {

    private static final String f62064a = "g";

    private static final Pattern f62065b = Pattern.compile(",");

    public static Map a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.isEmpty()) {
            return null;
        }
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        for (DecodeHintType decodeHintType : DecodeHintType.values()) {
            if (decodeHintType != DecodeHintType.CHARACTER_SET && decodeHintType != DecodeHintType.NEED_RESULT_POINT_CALLBACK && decodeHintType != DecodeHintType.POSSIBLE_FORMATS) {
                String strName = decodeHintType.name();
                if (extras.containsKey(strName)) {
                    if (decodeHintType.getValueType().equals(Void.class)) {
                        enumMap.put(decodeHintType, Boolean.TRUE);
                    } else {
                        Object obj = extras.get(strName);
                        if (decodeHintType.getValueType().isInstance(obj)) {
                            enumMap.put(decodeHintType, obj);
                        } else {
                            Log.w(f62064a, "Ignoring hint " + decodeHintType + " because it is not assignable from " + obj);
                        }
                    }
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Hints from the Intent: ");
        sb2.append(enumMap);
        return enumMap;
    }
}
