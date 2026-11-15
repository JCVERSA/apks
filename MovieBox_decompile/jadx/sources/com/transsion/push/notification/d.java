package com.transsion.push.notification;

import com.transsion.push.bean.MsgType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final a f48812d = new a(null);

    private static Void f48813e;

    private static final Void f48814f = null;

    private static final d f48815g = new d((String) f48813e, -1, (String) f48814f);

    private static final d f48816h = new d("oneroom.group.tag.tpush", 1201, "oneroom.group.key.tpush");

    private static final d f48817i = new d("oneroom.group.tag.cms", 1202, "oneroom.group.key.cms");

    private static final d f48818j = new d("oneroom.group.tag.permanent", 1204, "oneroom.group.key.permanent");

    private String f48819a;

    private int f48820b;

    private String f48821c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            return d.f48817i;
        }

        public final d b() {
            return d.f48818j;
        }

        public final d c(String str) {
            return Intrinsics.c(str, MsgType.PERMANENT.getType()) ? b() : a();
        }

        private a() {
        }
    }

    public d(String str, int i10, String str2) {
        this.f48819a = str;
        this.f48820b = i10;
        this.f48821c = str2;
    }

    public final String c() {
        return this.f48821c;
    }

    public final String d() {
        return this.f48819a;
    }
}
