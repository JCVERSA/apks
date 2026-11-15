package com.google.firebase.messaging;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.transsion.push.PushConstants;
import java.util.Map;

@SafeParcelable.Class(creator = "RemoteMessageCreator")
@SafeParcelable.Reserved({1})
public final class RemoteMessage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RemoteMessage> CREATOR = new s0();
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_NORMAL = 2;
    public static final int PRIORITY_UNKNOWN = 0;

    @SafeParcelable.Field(id = 2)
    Bundle bundle;
    private Map<String, String> data;
    private b notification;

    public static class b {

        private final String f31161a;

        private final String f31162b;

        private final String[] f31163c;

        private final String f31164d;

        private final String f31165e;

        private final String[] f31166f;

        private final String f31167g;

        private final String f31168h;

        private final String f31169i;

        private final String f31170j;

        private final String f31171k;

        private final String f31172l;

        private final String f31173m;

        private final Uri f31174n;

        private final String f31175o;

        private final Integer f31176p;

        private final Integer f31177q;

        private final Integer f31178r;

        private final int[] f31179s;

        private final Long f31180t;

        private final boolean f31181u;

        private final boolean f31182v;

        private final boolean f31183w;

        private final boolean f31184x;

        private final boolean f31185y;

        private final long[] f31186z;

        private static String[] a(k0 k0Var, String str) {
            Object[] objArrG = k0Var.g(str);
            if (objArrG == null) {
                return null;
            }
            String[] strArr = new String[objArrG.length];
            for (int i10 = 0; i10 < objArrG.length; i10++) {
                strArr[i10] = String.valueOf(objArrG[i10]);
            }
            return strArr;
        }

        public String b() {
            return this.f31161a;
        }

        private b(k0 k0Var) {
            this.f31161a = k0Var.p("gcm.n.title");
            this.f31162b = k0Var.h("gcm.n.title");
            this.f31163c = a(k0Var, "gcm.n.title");
            this.f31164d = k0Var.p("gcm.n.body");
            this.f31165e = k0Var.h("gcm.n.body");
            this.f31166f = a(k0Var, "gcm.n.body");
            this.f31167g = k0Var.p("gcm.n.icon");
            this.f31169i = k0Var.o();
            this.f31170j = k0Var.p("gcm.n.tag");
            this.f31171k = k0Var.p("gcm.n.color");
            this.f31172l = k0Var.p("gcm.n.click_action");
            this.f31173m = k0Var.p("gcm.n.android_channel_id");
            this.f31174n = k0Var.f();
            this.f31168h = k0Var.p("gcm.n.image");
            this.f31175o = k0Var.p("gcm.n.ticker");
            this.f31176p = k0Var.b("gcm.n.notification_priority");
            this.f31177q = k0Var.b("gcm.n.visibility");
            this.f31178r = k0Var.b("gcm.n.notification_count");
            this.f31181u = k0Var.a("gcm.n.sticky");
            this.f31182v = k0Var.a("gcm.n.local_only");
            this.f31183w = k0Var.a("gcm.n.default_sound");
            this.f31184x = k0Var.a("gcm.n.default_vibrate_timings");
            this.f31185y = k0Var.a("gcm.n.default_light_settings");
            this.f31180t = k0Var.j("gcm.n.event_time");
            this.f31179s = k0Var.e();
            this.f31186z = k0Var.q();
        }
    }

    @SafeParcelable.Constructor
    public RemoteMessage(@SafeParcelable.Param(id = 2) Bundle bundle) {
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
            this.data = e.a.a(this.bundle);
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
        if (this.notification == null && k0.t(this.bundle)) {
            this.notification = new b(new k0(this.bundle));
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
    @ShowFirstParty
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

    void populateSendMessageIntent(Intent intent) {
        intent.putExtras(this.bundle);
    }

    @KeepForSdk
    public Intent toIntent() {
        Intent intent = new Intent();
        intent.putExtras(this.bundle);
        return intent;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        s0.c(this, parcel, i10);
    }
}
