package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class B7 implements Converter {
    public final C3007y7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public B7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public final ContentValues fromModel(A7 a7) {
        ContentValues contentValues = new ContentValues();
        Long l = a7.a;
        if (l != null) {
            contentValues.put(TtmlNode.ATTR_ID, Long.valueOf(l.longValue()));
        }
        EnumC3045zk enumC3045zk = a7.b;
        if (enumC3045zk != null) {
            contentValues.put("type", Integer.valueOf(enumC3045zk.a));
        }
        String str = a7.c;
        if (str != null) {
            contentValues.put("report_request_parameters", str);
        }
        C3007y7 c3007y7 = this.a;
        contentValues.put("session_description", MessageNano.toByteArray(c3007y7.a.fromModel(a7.d)));
        return contentValues;
    }

    public B7(C3007y7 c3007y7) {
        this.a = c3007y7;
    }

    public B7(C3007y7 c3007y7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C3007y7(null, 1, null) : c3007y7);
    }

    @Override
    public final A7 toModel(ContentValues contentValues) {
        EnumC3045zk enumC3045zk;
        Long asLong = contentValues.getAsLong(TtmlNode.ATTR_ID);
        Integer asInteger = contentValues.getAsInteger("type");
        if (asInteger != null) {
            int iIntValue = asInteger.intValue();
            enumC3045zk = EnumC3045zk.FOREGROUND;
            if (iIntValue != 0 && iIntValue == 1) {
                enumC3045zk = EnumC3045zk.BACKGROUND;
            }
        } else {
            enumC3045zk = null;
        }
        return new A7(asLong, enumC3045zk, contentValues.getAsString("report_request_parameters"), this.a.toModel(contentValues.getAsByteArray("session_description")));
    }
}
