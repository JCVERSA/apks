package jg;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import bf.f;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tencent.mmkv.MMKV;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import yg.l;

public final class b {

    public static final a f63119a = new a(0 == true ? 1 : 0);

    private static final String f63120b;

    private static final ConcurrentHashMap f63121c;

    private static String f63122d;

    private static volatile Boolean f63123e;

    private static String f63124f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String i(String str) {
            return StringsKt.n1(new Regex("[\\r\\n]").replace(new Regex("\\s+").replace(new Regex("[\\p{C}]").replace(str, ""), " "), "")).toString();
        }

        public final void a(Bundle bundle) {
            Intrinsics.h(bundle, "bundle");
            bundle.putString("session_id", h());
            bundle.putString("device_id", tg.b.f72740a.h());
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            bundle.putString("install_store", e(applicationA));
            mg.a.C0814a c0814a = mg.a.f66402a;
            String strA = c0814a.a();
            if (!TextUtils.isEmpty(strA)) {
                bundle.putString("install_ch", strA);
            }
            String strB = c0814a.b();
            if (!TextUtils.isEmpty(strB)) {
                bundle.putString("install_id", strB);
            }
            String strD = c0814a.d();
            if (!TextUtils.isEmpty(strD)) {
                bundle.putString("install_share_uid", strD);
            }
            bundle.putString("net_state", String.valueOf(l.f76264a.b()));
        }

        public final synchronized void b(String key, String value) {
            Intrinsics.h(key, "key");
            Intrinsics.h(value, "value");
            b.f63121c.put(key, value);
        }

        public final String c() {
            String strD;
            String string;
            ag.b bVarB = ag.a.f344a.b();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                linkedHashMap.put("package_name", com.blankj.utilcode.util.c.e());
                String strB = bVarB != null ? bVarB.b() : null;
                String strO = "";
                if (!TextUtils.isEmpty(strB)) {
                    if (strB == null) {
                        strB = "";
                    }
                    linkedHashMap.put("version_name", strB);
                }
                int iF = com.blankj.utilcode.util.c.f();
                if (iF > 0) {
                    linkedHashMap.put("version_code", Integer.valueOf(iF));
                }
                linkedHashMap.put("os", "android");
                tg.b bVar = tg.b.f72740a;
                linkedHashMap.put("os_version", bVar.n());
                mg.a.C0814a c0814a = mg.a.f66402a;
                if (!TextUtils.isEmpty(c0814a.a())) {
                    linkedHashMap.put("install_ch", c0814a.a());
                }
                linkedHashMap.put("device_id", bVar.h());
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                linkedHashMap.put("install_store", String.valueOf(e(applicationA)));
                String strI = bVar.i();
                if (!TextUtils.isEmpty(strI)) {
                    linkedHashMap.put(UrlKt.KEY_MINI_GAID, strI);
                }
                MMKV mmkvC = c0814a.c();
                if (mmkvC == null || (strD = mmkvC.getString("phone_brand", "")) == null) {
                    strD = "";
                }
                if (TextUtils.isEmpty(strD)) {
                    strD = bVar.d();
                }
                if (!TextUtils.isEmpty(strD)) {
                    linkedHashMap.put("brand", strD);
                }
                linkedHashMap.put("model", bVar.l());
                String strG = g();
                if (strG == null) {
                    strG = Locale.getDefault().getLanguage();
                }
                linkedHashMap.put("system_language", strG);
                linkedHashMap.put("net", l.f76264a.d());
                linkedHashMap.put(TtmlNode.TAG_REGION, Locale.getDefault().getCountry());
                linkedHashMap.put("timezone", TimeZone.getDefault().getID());
                MMKV mmkvC2 = c0814a.c();
                if (mmkvC2 != null && (string = mmkvC2.getString("sp_code", "")) != null) {
                    strO = string;
                }
                if (TextUtils.isEmpty(strO)) {
                    strO = bVar.o();
                }
                linkedHashMap.put("sp_code", strO);
                if (!b.f63121c.isEmpty()) {
                    linkedHashMap.putAll(b.f63121c);
                }
                String jSONString = com.alibaba.fastjson.a.toJSONString(linkedHashMap);
                Intrinsics.g(jSONString, "toJSONString(...)");
                return i(jSONString);
            } catch (Exception unused) {
                String jSONString2 = com.alibaba.fastjson.a.toJSONString(linkedHashMap, SerializerFeature.BrowserCompatible);
                Intrinsics.g(jSONString2, "toJSONString(...)");
                return jSONString2;
            }
        }

        public final Boolean d() {
            return b.f63123e;
        }

        public final String e(Context context) {
            Intrinsics.h(context, "context");
            MMKV mmkvC = mg.a.f66402a.c();
            String string = mmkvC != null ? mmkvC.getString("install_store", "") : null;
            if (TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(b.f63124f)) {
                    String strB = f.b(context);
                    if (TextUtils.isEmpty(strB)) {
                        strB = "gp";
                    }
                    b.f63124f = strB;
                }
                string = b.f63124f;
            }
            b.f63124f = string;
            return b.f63124f;
        }

        public final synchronized Map f() {
            return MapsKt.u(b.f63121c);
        }

        public final String g() {
            return b.f63122d;
        }

        public final String h() {
            return b.f63120b;
        }

        public final void j(Boolean bool) {
            b.f63123e = bool;
        }

        public final void k(String channel) {
            Intrinsics.h(channel, "channel");
            MMKV mmkvC = mg.a.f66402a.c();
            if (mmkvC != null) {
                mmkvC.putString("install_store", channel);
            }
        }

        public final void l(String str) {
            b.f63122d = str;
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        f63120b = string;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f63121c = concurrentHashMap;
        f63123e = Boolean.TRUE;
        MMKV mmkvC = mg.a.f66402a.c();
        String string2 = mmkvC != null ? mmkvC.getString("x-md-global-color", "") : null;
        if (TextUtils.isEmpty(string2)) {
            return;
        }
        concurrentHashMap.put("x-md-global-color", String.valueOf(string2));
    }
}
