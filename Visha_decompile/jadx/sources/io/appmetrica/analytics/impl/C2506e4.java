package io.appmetrica.analytics.impl;

import android.util.Base64;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashMap;
import java.util.Iterator;

public final class C2506e4 extends C2408a6 {
    public HashMap q;
    public C3022ym r;
    public C2972wm s;
    public C2972wm t;
    public C2878t3 u;
    public C3022ym v;

    @VisibleForTesting
    public C2506e4(@NonNull PublicLogger publicLogger) {
        this.q = new HashMap();
        a(publicLogger);
    }

    public static C2408a6 b(String str, String str2) {
        C2408a6 c2408a6 = new C2408a6("", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 5376;
        c2408a6.a(str, str2);
        return c2408a6;
    }

    public static C2408a6 n() {
        C2408a6 c2408a6 = new C2408a6("", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 5632;
        return c2408a6;
    }

    public static C2408a6 o() {
        C2408a6 c2408a6 = new C2408a6("", 0);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2408a6.d = 40961;
        return c2408a6;
    }

    public final void a(String str, String str2, EnumC2481d4 enumC2481d4) {
        if (StringUtils.equalsNullSafety(str, str2)) {
            this.q.remove(enumC2481d4);
        } else {
            this.q.put(enumC2481d4, Integer.valueOf(StringUtils.getUTF8Bytes(str).length - StringUtils.getUTF8Bytes(str2).length));
        }
        Iterator it = this.q.values().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += ((Integer) it.next()).intValue();
        }
        this.g = iIntValue;
    }

    @Override
    @NonNull
    public final void c(@Nullable String str) {
        C3022ym c3022ym = this.v;
        c3022ym.getClass();
        this.h = c3022ym.a(str);
    }

    public final String d(String str) {
        C3022ym c3022ym = this.r;
        c3022ym.getClass();
        String strA = c3022ym.a(str);
        a(str, strA, EnumC2481d4.NAME);
        return strA;
    }

    public final String e(String str) {
        C2972wm c2972wm = this.s;
        c2972wm.getClass();
        String strA = c2972wm.a(str);
        a(str, strA, EnumC2481d4.VALUE);
        return strA;
    }

    public final C2506e4 f(@NonNull String str) {
        C2972wm c2972wm = this.t;
        c2972wm.getClass();
        String strA = c2972wm.a(str);
        a(str, strA, EnumC2481d4.VALUE);
        this.b = strA;
        return this;
    }

    @NonNull
    public final HashMap<EnumC2481d4, Integer> p() {
        return this.q;
    }

    @Override
    public final void setName(@Nullable String str) {
        this.a = d(str);
    }

    @Override
    public final void setValue(@Nullable String str) {
        this.b = e(str);
    }

    @Override
    @Nullable
    public final void setValueBytes(@Nullable byte[] bArr) {
        a(bArr);
    }

    public C2506e4(String str, int i, @NonNull PublicLogger publicLogger) {
        this("", str, i, publicLogger);
    }

    public C2506e4(String str, String str2, int i, @NonNull PublicLogger publicLogger) {
        this(str, str2, i, 0, publicLogger);
    }

    public C2506e4(String str, String str2, int i, int i2, @NonNull PublicLogger publicLogger) {
        this.q = new HashMap();
        a(publicLogger);
        this.b = e(str);
        this.a = d(str2);
        setType(i);
        setCustomType(i2);
    }

    public final C2506e4 a(@NonNull HashMap<EnumC2481d4, Integer> map) {
        this.q = map;
        return this;
    }

    public final void a(PublicLogger publicLogger) {
        this.r = new C3022ym(1000, "event name", publicLogger);
        this.s = new C2972wm(245760, "event value", publicLogger);
        this.t = new C2972wm(1024000, "event extended value", publicLogger);
        this.u = new C2878t3(245760, "event value bytes", publicLogger);
        this.v = new C3022ym(200, "user profile id", publicLogger);
    }

    public C2506e4(byte[] bArr, @Nullable String str, int i, @NonNull PublicLogger publicLogger) {
        this.q = new HashMap();
        a(publicLogger);
        a(bArr);
        this.a = d(str);
        setType(i);
    }

    public final void a(byte[] bArr) {
        C2878t3 c2878t3 = this.u;
        c2878t3.getClass();
        byte[] bArrA = c2878t3.a(bArr);
        EnumC2481d4 enumC2481d4 = EnumC2481d4.VALUE;
        if (bArr.length != bArrA.length) {
            this.q.put(enumC2481d4, Integer.valueOf(bArr.length - bArrA.length));
        } else {
            this.q.remove(enumC2481d4);
        }
        Iterator it = this.q.values().iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += ((Integer) it.next()).intValue();
        }
        this.g = iIntValue;
        super.setValueBytes(bArrA);
    }

    public static C2408a6 a(@NonNull Fn fn) {
        C2408a6 c2408a6O = o();
        c2408a6O.setValue(new String(Base64.encode(MessageNano.toByteArray(fn), 0)));
        return c2408a6O;
    }

    public static C2506e4 a(PublicLogger publicLogger, Ei ei) {
        int length;
        C2506e4 c2506e4 = new C2506e4(publicLogger);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2506e4.d = 40976;
        Ci ci = new Ci();
        ci.b = ei.a.currency.getCurrencyCode().getBytes();
        ci.f = ei.a.priceMicros;
        ci.c = StringUtils.stringToBytesForProtobuf(new C3022ym(200, "revenue productID", ei.e).a(ei.a.productID));
        ci.a = ((Integer) WrapUtils.getOrDefault(ei.a.quantity, 1)).intValue();
        C2972wm c2972wm = ei.b;
        String str = ei.a.payload;
        c2972wm.getClass();
        ci.d = StringUtils.stringToBytesForProtobuf(c2972wm.a(str));
        if (In.a(ei.a.receipt)) {
            C2993xi c2993xi = new C2993xi();
            String str2 = (String) ei.c.a(ei.a.receipt.data);
            length = !StringUtils.equalsNullSafety(ei.a.receipt.data, str2) ? ei.a.receipt.data.length() : 0;
            String str3 = (String) ei.d.a(ei.a.receipt.signature);
            c2993xi.a = StringUtils.stringToBytesForProtobuf(str2);
            c2993xi.b = StringUtils.stringToBytesForProtobuf(str3);
            ci.e = c2993xi;
        } else {
            length = 0;
        }
        Pair pair = new Pair(MessageNano.toByteArray(ci), Integer.valueOf(length));
        c2506e4.b = c2506e4.e(new String(Base64.encode((byte[]) pair.first, 0)));
        c2506e4.g = ((Integer) pair.second).intValue();
        return c2506e4;
    }

    public static C2506e4 a(PublicLogger publicLogger, B b) {
        C2506e4 c2506e4 = new C2506e4(publicLogger);
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        c2506e4.d = 40977;
        kotlin.Pair pairA = b.a();
        c2506e4.b = c2506e4.e(new String(Base64.encode((byte[]) pairA.getFirst(), 0)));
        c2506e4.g = ((Integer) pairA.getSecond()).intValue();
        return c2506e4;
    }
}
