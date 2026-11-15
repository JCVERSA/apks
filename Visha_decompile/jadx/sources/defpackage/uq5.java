package defpackage;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import okhttp3.internal.Util;
import org.apache.commons.text.StringSubstitutor;

public final class uq5 {
    public final String a(Object obj) {
        if (obj instanceof boolean[]) {
            String string = Arrays.toString((boolean[]) obj);
            y45.i(string, "toString(...)");
            return string;
        }
        if (obj instanceof byte[]) {
            String string2 = Arrays.toString((byte[]) obj);
            y45.i(string2, "toString(...)");
            return string2;
        }
        if (obj instanceof char[]) {
            String string3 = Arrays.toString((char[]) obj);
            y45.i(string3, "toString(...)");
            return string3;
        }
        if (obj instanceof double[]) {
            String string4 = Arrays.toString((double[]) obj);
            y45.i(string4, "toString(...)");
            return string4;
        }
        if (obj instanceof float[]) {
            String string5 = Arrays.toString((float[]) obj);
            y45.i(string5, "toString(...)");
            return string5;
        }
        if (obj instanceof int[]) {
            String string6 = Arrays.toString((int[]) obj);
            y45.i(string6, "toString(...)");
            return string6;
        }
        if (obj instanceof long[]) {
            String string7 = Arrays.toString((long[]) obj);
            y45.i(string7, "toString(...)");
            return string7;
        }
        if (obj instanceof short[]) {
            String string8 = Arrays.toString((short[]) obj);
            y45.i(string8, "toString(...)");
            return string8;
        }
        if (obj instanceof Object[]) {
            return ei.c((Object[]) obj);
        }
        throw new IllegalArgumentException("Array has incompatible type: " + obj.getClass());
    }

    public final String b(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        if (!it.hasNext()) {
            return "Bundle {}";
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("Bundle { ");
        while (true) {
            String next = it.next();
            Object obj = bundle.get(next);
            sb.append(next);
            sb.append('=');
            if (obj instanceof Bundle) {
                sb.append(obj == bundle ? "(this Bundle)" : b((Bundle) obj));
            } else {
                sb.append(e(obj));
            }
            if (!it.hasNext()) {
                sb.append(" }");
                String string = sb.toString();
                y45.i(string, "toString(...)");
                return string;
            }
            sb.append(',');
            sb.append(' ');
        }
    }

    public final void c(ClipData clipData, StringBuilder sb) {
        ClipData.Item itemAt = clipData.getItemAt(0);
        if (itemAt == null) {
            sb.append("ClipData.Item {}");
            return;
        }
        sb.append("ClipData.Item { ");
        String htmlText = itemAt.getHtmlText();
        if (htmlText != null) {
            sb.append("Html:");
            sb.append(htmlText);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        CharSequence text = itemAt.getText();
        if (text != null) {
            sb.append("Text:");
            sb.append(text);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        Uri uri = itemAt.getUri();
        if (uri != null) {
            sb.append("Uri:");
            sb.append(uri);
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
            return;
        }
        Intent intent = itemAt.getIntent();
        if (intent == null) {
            sb.append("NULL");
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
        } else {
            sb.append("Intent:");
            sb.append(d(intent));
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
        }
    }

    public final String d(Intent intent) {
        boolean z;
        StringBuilder sb = new StringBuilder(128);
        sb.append("Intent { ");
        String action = intent.getAction();
        boolean z2 = false;
        if (action != null) {
            sb.append("action=");
            sb.append(action);
            z = false;
        } else {
            z = true;
        }
        Set<String> categories = intent.getCategories();
        if (intent.getCategories() != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("category=[");
            y45.g(categories);
            sb.append(i81.y0(categories, StringUtils.COMMA, null, null, 0, null, null, 62, null));
            sb.append("]");
            z = false;
        }
        Uri data = intent.getData();
        if (data != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("dat=");
            sb.append(data);
            z = false;
        }
        String type = intent.getType();
        if (type != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("type=");
            sb.append(type);
            z = false;
        }
        if (intent.getFlags() != 0) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("flags=0x");
            sb.append(Util.toHexString(intent.getFlags()));
            z = false;
        }
        String str = intent.getPackage();
        if (str != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("package=");
            sb.append(str);
            z = false;
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("component=");
            sb.append(component.flattenToShortString());
            z = false;
        }
        Rect sourceBounds = intent.getSourceBounds();
        if (sourceBounds != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("bounds=");
            sb.append(sourceBounds.toShortString());
            z = false;
        }
        ClipData clipData = intent.getClipData();
        if (clipData != null) {
            if (!z) {
                sb.append(' ');
            }
            c(clipData, sb);
            z = false;
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            if (!z) {
                sb.append(' ');
            }
            sb.append("extras={");
            sb.append(b(extras));
            sb.append('}');
        } else {
            z2 = z;
        }
        Intent selector = intent.getSelector();
        if (selector != null) {
            if (!z2) {
                sb.append(' ');
            }
            sb.append("selector={");
            sb.append(selector == intent ? "(this Intent)" : d(selector));
            sb.append(StringSubstitutor.DEFAULT_VAR_END);
        }
        sb.append(" }");
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final String e(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj.getClass().isArray()) {
            return a(obj);
        }
        if (obj instanceof Throwable) {
            return ria.a.a((Throwable) obj);
        }
        if (obj instanceof Bundle) {
            return b((Bundle) obj);
        }
        return obj instanceof Intent ? d((Intent) obj) : obj.toString();
    }
}
