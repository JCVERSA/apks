package com.transsnet.downloader.ugc.adapter;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class c {

    public static final class a extends c {

        private final DownloadBean f57394a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f57394a = bean;
        }

        public final DownloadBean a() {
            return this.f57394a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f57394a, ((a) obj).f57394a);
        }

        public int hashCode() {
            return this.f57394a.hashCode();
        }

        public String toString() {
            return "AllEpBtnItem(bean=" + this.f57394a + ")";
        }
    }

    public static final class b extends c {

        private final DownloadBean f57395a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f57395a = bean;
        }

        public final b a(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            return new b(bean);
        }

        public final DownloadBean b() {
            return this.f57395a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f57395a, ((b) obj).f57395a);
        }

        public int hashCode() {
            return this.f57395a.hashCode();
        }

        public String toString() {
            return "DownloadedItem(bean=" + this.f57395a + ")";
        }
    }

    public static final class C0667c extends c {

        private final DownloadBean f57396a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0667c(DownloadBean bean) {
            super(null);
            Intrinsics.h(bean, "bean");
            this.f57396a = bean;
        }

        public final C0667c a(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            return new C0667c(bean);
        }

        public final DownloadBean b() {
            return this.f57396a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0667c) && Intrinsics.c(this.f57396a, ((C0667c) obj).f57396a);
        }

        public int hashCode() {
            return this.f57396a.hashCode();
        }

        public String toString() {
            return "DownloadingItem(bean=" + this.f57396a + ")";
        }
    }

    public static final class d extends c {

        public static final d f57397a = new d();

        private d() {
            super(null);
        }
    }

    public static final class e extends c {

        private final UGCVideo f57398a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(UGCVideo video) {
            super(null);
            Intrinsics.h(video, "video");
            this.f57398a = video;
        }

        public final UGCVideo a() {
            return this.f57398a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof e) && Intrinsics.c(this.f57398a, ((e) obj).f57398a);
        }

        public int hashCode() {
            return this.f57398a.hashCode();
        }

        public String toString() {
            return "ForYouItem(video=" + this.f57398a + ")";
        }
    }

    public static final class f extends c {

        public static final f f57399a = new f();

        private f() {
            super(null);
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
