package com.transsion.push.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.transsion.lib.push.R$id;
import kotlin.jvm.internal.Intrinsics;

public final class i extends b {

    public static final class a extends com.transsion.push.notification.a {

        private Context f48827z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, int i10, int i11, int i12) {
            super(context, i10);
            Intrinsics.h(context, "context");
            this.f48827z = context;
            if (i11 > 0) {
                D(Q(i11));
            }
            if (i12 > 0) {
                C(Q(i12));
            }
        }

        private final RemoteViews Q(int i10) {
            return new RemoteViews(this.f48827z.getPackageName(), i10);
        }

        @Override
        public com.transsion.push.notification.a O(long j10) {
            long jCurrentTimeMillis = j10 <= 0 ? System.currentTimeMillis() : j10;
            super.O(j10);
            try {
                RemoteViews remoteViewsJ = j();
                if (remoteViewsJ != null) {
                    remoteViewsJ.setLong(R$id.time, "setTime", jCurrentTimeMillis);
                }
            } catch (Exception e10) {
                wf.a.C0922a.e(wf.a.f74274a, "CustomNotification", "setTime error:", e10, false, 8, null);
            }
            return this;
        }

        public final i P() {
            return new i(this);
        }

        public final com.transsion.push.notification.a R(long j10) {
            long jCurrentTimeMillis = j10 <= 0 ? System.currentTimeMillis() : j10;
            super.O(j10);
            try {
                RemoteViews remoteViewsI = i();
                if (remoteViewsI != null) {
                    remoteViewsI.setLong(R$id.time, "setTime", jCurrentTimeMillis);
                }
            } catch (Exception e10) {
                wf.a.C0922a.e(wf.a.f74274a, "CustomNotification", "setTime error:", e10, false, 8, null);
            }
            return this;
        }

        public final a S(int i10, Bitmap bitmap) {
            if (bitmap == null) {
                return this;
            }
            RemoteViews remoteViewsI = i();
            if (remoteViewsI != null) {
                remoteViewsI.setViewVisibility(i10, 0);
            }
            RemoteViews remoteViewsI2 = i();
            if (remoteViewsI2 != null) {
                remoteViewsI2.setImageViewBitmap(i10, bitmap);
            }
            return this;
        }

        public final a T(int i10, CharSequence charSequence) {
            RemoteViews remoteViewsI = i();
            if (remoteViewsI != null) {
                remoteViewsI.setTextViewText(i10, charSequence);
            }
            return this;
        }

        public final a U(int i10, PendingIntent pendingIntent) {
            RemoteViews remoteViewsI;
            if (pendingIntent != null && (remoteViewsI = i()) != null) {
                remoteViewsI.setOnClickPendingIntent(i10, pendingIntent);
            }
            return this;
        }

        public final a V(int i10, String str) {
            B(str);
            X(i10, str);
            return this;
        }

        public a W(int i10, Bitmap bitmap) {
            if (j() == null) {
                return this;
            }
            if (bitmap == null || bitmap.isRecycled()) {
                RemoteViews remoteViewsJ = j();
                if (remoteViewsJ != null) {
                    remoteViewsJ.setViewVisibility(i10, 8);
                }
                return this;
            }
            H(bitmap);
            RemoteViews remoteViewsJ2 = j();
            if (remoteViewsJ2 != null) {
                remoteViewsJ2.setImageViewBitmap(i10, bitmap);
            }
            RemoteViews remoteViewsJ3 = j();
            if (remoteViewsJ3 != null) {
                remoteViewsJ3.setViewVisibility(i10, 0);
            }
            return this;
        }

        public final a X(int i10, String str) {
            RemoteViews remoteViewsJ = j();
            if (remoteViewsJ != null) {
                remoteViewsJ.setTextViewText(i10, str);
            }
            return this;
        }

        public final a Y(int i10, PendingIntent pendingIntent) {
            RemoteViews remoteViewsJ;
            if (pendingIntent != null && (remoteViewsJ = j()) != null) {
                remoteViewsJ.setOnClickPendingIntent(i10, pendingIntent);
            }
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(a builder) {
        super(builder);
        Intrinsics.h(builder, "builder");
    }
}
