package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class C2733n7 implements Converter {
    public final C2658k7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public C2733n7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override
    public final ContentValues fromModel(C2708m7 c2708m7) {
        ContentValues contentValues = new ContentValues();
        Long l = c2708m7.a;
        if (l != null) {
            contentValues.put("session_id", Long.valueOf(l.longValue()));
        }
        EnumC3045zk enumC3045zk = c2708m7.b;
        if (enumC3045zk != null) {
            contentValues.put("session_type", Integer.valueOf(enumC3045zk.a));
        }
        Long l2 = c2708m7.c;
        if (l2 != null) {
            contentValues.put("number_in_session", Long.valueOf(l2.longValue()));
        }
        EnumC2588hb enumC2588hb = c2708m7.d;
        if (enumC2588hb != null) {
            contentValues.put("type", Integer.valueOf(enumC2588hb.a));
        }
        Long l3 = c2708m7.e;
        if (l3 != null) {
            contentValues.put("global_number", Long.valueOf(l3.longValue()));
        }
        Long l4 = c2708m7.f;
        if (l4 != null) {
            contentValues.put("time", Long.valueOf(l4.longValue()));
        }
        C2658k7 c2658k7 = this.a;
        contentValues.put("event_description", MessageNano.toByteArray(c2658k7.a.fromModel(c2708m7.g)));
        return contentValues;
    }

    public C2733n7(C2658k7 c2658k7) {
        this.a = c2658k7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C2733n7(C2658k7 c2658k7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new C2658k7(null, 1, 0 == true ? 1 : 0) : c2658k7);
    }

    @Override
    public final C2708m7 toModel(ContentValues contentValues) {
        EnumC3045zk enumC3045zk;
        Long asLong = contentValues.getAsLong("session_id");
        Integer asInteger = contentValues.getAsInteger("session_type");
        if (asInteger != null) {
            int iIntValue = asInteger.intValue();
            enumC3045zk = EnumC3045zk.FOREGROUND;
            if (iIntValue != 0 && iIntValue == 1) {
                enumC3045zk = EnumC3045zk.BACKGROUND;
            }
        } else {
            enumC3045zk = null;
        }
        Long asLong2 = contentValues.getAsLong("number_in_session");
        Integer asInteger2 = contentValues.getAsInteger("type");
        return new C2708m7(asLong, enumC3045zk, asLong2, asInteger2 != null ? EnumC2588hb.a(asInteger2.intValue()) : null, contentValues.getAsLong("global_number"), contentValues.getAsLong("time"), this.a.toModel(contentValues.getAsByteArray("event_description")));
    }
}
