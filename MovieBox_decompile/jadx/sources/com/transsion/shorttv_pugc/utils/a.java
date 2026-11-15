package com.transsion.shorttv_pugc.utils;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.shorttv_pugc.bean.ShortTvItemType;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final C0643a f52425e = new C0643a(null);

    private final String f52426a;

    private final HashSet f52427b;

    private final HashSet f52428c;

    private final HashSet f52429d;

    public static final class C0643a {
        public C0643a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0643a() {
        }
    }

    public a(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f52426a = pageName;
        this.f52427b = new HashSet();
        this.f52428c = new HashSet();
        this.f52429d = new HashSet();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0079  */
    public final void a(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, String str7, Integer num, String str8, long j10, Boolean bool2, String str9) {
        boolean zContains;
        String str10 = str4;
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", str2 == null ? "" : str2);
        linkedHashMap.put("opt_type", str3 == null ? "" : str3);
        if (Intrinsics.c(str3, ShortTvItemType.OP_SUBJECTS_MOVIE.getValue())) {
            if (str10 != null) {
                zContains = this.f52427b.contains(str4);
                this.f52427b.add(str4);
            } else {
                zContains = false;
            }
        } else if (Intrinsics.c(str3, ShortTvItemType.BANNER.getValue())) {
            if (num != null) {
                zContains = this.f52428c.contains(num);
                this.f52428c.add(num);
            } else {
                zContains = false;
            }
        } else if (!Intrinsics.c(str3, ShortTvItemType.OP_RANKING.getValue()) || str10 == null) {
            zContains = false;
        } else {
            zContains = this.f52429d.contains(str4);
            this.f52429d.add(str4);
        }
        if (zContains) {
            return;
        }
        if (str10 == null) {
            str10 = "";
        }
        linkedHashMap.put("subject_id", str10);
        linkedHashMap.put("group_id", str5 == null ? "" : str5);
        linkedHashMap.put("ops", str6 != null ? str6 : "");
        linkedHashMap.put("has_resource", String.valueOf(bool));
        linkedHashMap.put("deeplink", str7);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("cover", str8);
        linkedHashMap.put("browse_duration", String.valueOf(j10));
        linkedHashMap.put("builtin", Intrinsics.c(bool2, Boolean.TRUE) ? "1" : "0");
        linkedHashMap.put("tag", String.valueOf(str9));
        qi.h.f69682a.z(str, linkedHashMap);
    }

    public final void c(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, Boolean bool2, String str7, Integer num, String str8, Boolean bool3, String str9) {
        if (str == null || str.length() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("item_type", str2 == null ? "" : str2);
        linkedHashMap.put("opt_type", str3 == null ? "" : str3);
        linkedHashMap.put("subject_id", str4 == null ? "" : str4);
        linkedHashMap.put("group_id", str5 == null ? "" : str5);
        linkedHashMap.put("ops", str6 != null ? str6 : "");
        linkedHashMap.put("has_resource", String.valueOf(bool));
        linkedHashMap.put("check_in", String.valueOf(bool2));
        linkedHashMap.put("deeplink", str7);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        linkedHashMap.put(RequestParameters.POSITION, sb2.toString());
        linkedHashMap.put("cover", str8);
        linkedHashMap.put("builtin", Intrinsics.c(bool3, Boolean.TRUE) ? "1" : "0");
        linkedHashMap.put("tag", String.valueOf(str9));
        qi.h.f69682a.o(str, linkedHashMap);
    }
}
