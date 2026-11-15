package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.transsion.push.PushConstants;
import java.util.Map;

public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new d();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;
    Bundle bundle;
    private Map<String, String> data;
    private b notification;

    public static class b {
        public final String a;
        public final String b;
        public final String[] c;
        public final String d;
        public final String e;
        public final String[] f;
        public final String g;
        public final String h;
        public final String i;
        public final String j;
        public final String k;
        public final String l;
        public final String m;
        public final Uri n;
        public final String o;
        public final Integer p;
        public final Integer q;
        public final Integer r;
        public final int[] s;
        public final Long t;
        public final boolean u;
        public final boolean v;
        public final boolean w;
        public final boolean x;
        public final boolean y;
        public final long[] z;

        public static String[] a(c cVar, String str) {
            Object[] objArrG = cVar.g(str);
            if (objArrG == null) {
                return null;
            }
            String[] strArr = new String[objArrG.length];
            for (int i = 0; i < objArrG.length; i++) {
                strArr[i] = String.valueOf(objArrG[i]);
            }
            return strArr;
        }

        public b(c cVar) {
            this.a = cVar.p("gcm.n.title");
            this.b = cVar.h("gcm.n.title");
            this.c = a(cVar, "gcm.n.title");
            this.d = cVar.p("gcm.n.body");
            this.e = cVar.h("gcm.n.body");
            this.f = a(cVar, "gcm.n.body");
            this.g = cVar.p("gcm.n.icon");
            this.i = cVar.o();
            this.j = cVar.p("gcm.n.tag");
            this.k = cVar.p("gcm.n.color");
            this.l = cVar.p("gcm.n.click_action");
            this.m = cVar.p("gcm.n.android_channel_id");
            this.n = cVar.f();
            this.h = cVar.p("gcm.n.image");
            this.o = cVar.p("gcm.n.ticker");
            this.p = cVar.b("gcm.n.notification_priority");
            this.q = cVar.b("gcm.n.visibility");
            this.r = cVar.b("gcm.n.notification_count");
            this.u = cVar.a("gcm.n.sticky");
            this.v = cVar.a("gcm.n.local_only");
            this.w = cVar.a("gcm.n.default_sound");
            this.x = cVar.a("gcm.n.default_vibrate_timings");
            this.y = cVar.a("gcm.n.default_light_settings");
            this.t = cVar.j("gcm.n.event_time");
            this.s = cVar.e();
            this.z = cVar.q();
        }
    }

    public RemoteMessage(Bundle bundle) {
        this.bundle = bundle;
    }

    private int getMessagePriority(String str) {
        if ("high".equals(str)) {
            return 1;
        }
        return "normal".equals(str) ? 2 : 0;
    }

    @Nullable
    public String getCollapseKey() {
        return this.bundle.getString("collapse_key");
    }

    @NonNull
    public Map<String, String> getData() {
        if (this.data == null) {
            this.data = com.google.firebase.messaging.a.C0116a.a(this.bundle);
        }
        return this.data;
    }

    @Nullable
    public String getFrom() {
        return this.bundle.getString("from");
    }

    @Nullable
    public String getMessageId() {
        String string = this.bundle.getString("google.message_id");
        return string == null ? this.bundle.getString(PushConstants.EXTRA_PUSH_MESSAGE_ID) : string;
    }

    @Nullable
    public String getMessageType() {
        return this.bundle.getString(PushConstants.EXTRA_PUSH_MESSAGE_TYPE);
    }

    @Nullable
    public b getNotification() {
        if (this.notification == null && c.t(this.bundle)) {
            this.notification = new b(new c(this.bundle));
        }
        return this.notification;
    }

    public int getOriginalPriority() {
        String string = this.bundle.getString("google.original_priority");
        if (string == null) {
            string = this.bundle.getString("google.priority");
        }
        return getMessagePriority(string);
    }

    public int getPriority() {
        String string = this.bundle.getString("google.delivered_priority");
        if (string == null) {
            if ("1".equals(this.bundle.getString("google.priority_reduced"))) {
                return 2;
            }
            string = this.bundle.getString("google.priority");
        }
        return getMessagePriority(string);
    }

    @Nullable
    public byte[] getRawData() {
        return this.bundle.getByteArray("rawData");
    }

    @Nullable
    public String getSenderId() {
        return this.bundle.getString("google.c.sender.id");
    }

    public long getSentTime() {
        Object obj = this.bundle.get("google.sent_time");
        if (obj instanceof Long) {
            return ((Long) obj).longValue();
        }
        if (!(obj instanceof String)) {
            return 0L;
        }
        try {
            return Long.parseLong((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid sent time: " + obj);
            return 0L;
        }
    }

    @Nullable
    @Deprecated
    public String getTo() {
        return this.bundle.getString("google.to");
    }

    public int getTtl() {
        Object obj = this.bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (!(obj instanceof String)) {
            return 0;
        }
        try {
            return Integer.parseInt((String) obj);
        } catch (NumberFormatException unused) {
            Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
            return 0;
        }
    }

    public void populateSendMessageIntent(Intent intent) {
        intent.putExtras(this.bundle);
    }

    public Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.bundle);
        return intent;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        d.c(this, parcel, i);
    }
}
