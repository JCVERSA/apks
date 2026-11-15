package com.transsnet.downloader.manager;

import android.content.Context;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class p {

    public static final a f57282a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static g b(a aVar, Context context, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                context = null;
            }
            return aVar.a(context);
        }

        public final g a(Context context) {
            return DownloadManagerImpl.f57215y.a();
        }

        private a() {
        }
    }
}
