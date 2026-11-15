package com.transsion.lib_web.zip.db;

import androidx.room.RoomDatabase;
import androidx.room.e;
import androidx.room.g;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements zl.a {

    public static final d f44828e = new d(null);

    private final RoomDatabase f44829a;

    private final g f44830b;

    private final e f44831c;

    private final e f44832d;

    public static final class C0605a extends g {
        C0605a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `mb_web_res_db` (`scene`,`htmlUrl`,`zipUrl`,`zipMd5`,`sourceType`,`updateTime`) VALUES (?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.i(1, entity.getScene());
            statement.i(2, entity.getHtmlUrl());
            statement.i(3, entity.getZipUrl());
            statement.i(4, entity.getZipMd5());
            statement.c(5, entity.getSourceType());
            String updateTime = entity.getUpdateTime();
            if (updateTime == null) {
                statement.g(6);
            } else {
                statement.i(6, updateTime);
            }
        }
    }

    public static final class b extends e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `mb_web_res_db` WHERE `scene` = ?";
        }

        @Override
        public void a(y3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.i(1, entity.getScene());
        }
    }

    public static final class c extends e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `mb_web_res_db` SET `scene` = ?,`htmlUrl` = ?,`zipUrl` = ?,`zipMd5` = ?,`sourceType` = ?,`updateTime` = ? WHERE `scene` = ?";
        }

        @Override
        public void a(y3.e statement, WebViewCacheConfigData entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.i(1, entity.getScene());
            statement.i(2, entity.getHtmlUrl());
            statement.i(3, entity.getZipUrl());
            statement.i(4, entity.getZipMd5());
            statement.c(5, entity.getSourceType());
            String updateTime = entity.getUpdateTime();
            if (updateTime == null) {
                statement.g(6);
            } else {
                statement.i(6, updateTime);
            }
            statement.i(7, entity.getScene());
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return CollectionsKt.l();
        }

        private d() {
        }
    }

    public a(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f44829a = __db;
        this.f44830b = new C0605a();
        this.f44831c = new b();
        this.f44832d = new c();
    }
}
