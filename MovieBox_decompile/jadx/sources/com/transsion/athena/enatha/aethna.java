package com.transsion.athena.enatha;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.TrackData;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import org.json.JSONException;
import org.json.JSONObject;

public class aethna extends athena implements Handler.Callback {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile aethna f41591c;

    private int f41592d;

    private int f41593e;

    private long f41594f;

    private aethna(Context context) {
        super(context);
        this.f41592d = 0;
        this.f41594f = 0L;
        HandlerThread handlerThread = new HandlerThread("Athena-LiteWorker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.f41597b = handler;
        handler.sendEmptyMessage(303);
    }

    public static aethna a(Context context) {
        if (f41591c == null) {
            synchronized (aethna.class) {
                try {
                    if (f41591c == null) {
                        f41591c = new aethna(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41591c;
    }

    private void f() {
        Cursor cursorQuery = this.f41596a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{com.transsion.athena.taaneh.athena.h(this.f41596a)}, null);
        if (cursorQuery != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("DCS authorize ");
            sb2.append(cursorQuery.getCount() == 1 ? OfflineConstantsKt.OFFLINE_CONFIG_ENABLE : "disable");
            com.transsion.athena.taaneh.aethna.a(sb2.toString());
            if (cursorQuery.getCount() == 1) {
                this.f41592d = 1;
            } else {
                this.f41592d = 2;
            }
            cursorQuery.close();
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        try {
            int i10 = message.what;
            if (i10 == 302) {
                this.f41593e--;
                a((String) message.obj);
                return false;
            }
            if (i10 != 303) {
                if (i10 == 400) {
                    a(message.arg1, (String) message.obj);
                    return false;
                }
                if (i10 != 405) {
                    return false;
                }
                a((com.transsion.athena.data.aethna) message.obj);
                return false;
            }
            com.transsion.athena.taaneh.aethna.f41673a.m().r(ehanat.q());
            com.transsion.athena.taaneh.aethna.c("Athena SDK Version is 3.1.1.4");
            com.transsion.athena.taaneh.aethna.c("Athena is in Lite mode");
            if (com.transsion.athena.data.athena.b() == 0) {
                com.transsion.athena.taaneh.anehat.a("HostAppId must be set up in LiteMode");
            }
            f();
            return false;
        } catch (Exception e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
            return false;
        }
    }

    private void a(String str) {
        if (this.f41592d == 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", str);
            this.f41596a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            return;
        }
        com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
        long j10 = this.f41594f + 1;
        this.f41594f = j10;
        long j11 = 20;
        if (j10 % j11 == 0 && j10 / j11 <= 5 && com.transsion.athena.taaneh.anehat.c(this.f41596a)) {
            f();
        }
    }

    private void a(int i10, String str) {
        if (this.f41592d == 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("appId", Integer.valueOf(i10));
            if (!TextUtils.isEmpty(str)) {
                contentValues.put("baseInfo", str);
            } else {
                contentValues.put("baseInfo", AppIdData.a(this.f41596a, i10).f41518b);
            }
            this.f41596a.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/bind"), contentValues);
            return;
        }
        com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
    }

    private void a(com.transsion.athena.data.aethna aethnaVar) {
        if (this.f41592d == 1) {
            Cursor cursorQuery = this.f41596a.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, "prop_key = ?", new String[]{aethnaVar.f41538a}, null);
            if (cursorQuery != null) {
                if (cursorQuery.moveToNext()) {
                    cursorQuery.getString(0);
                    android.support.v4.media.session.c.a(aethnaVar.f41539b.get());
                }
                cursorQuery.close();
                return;
            }
            return;
        }
        com.transsion.athena.taaneh.aethna.a("Failed to connect to DCS service");
    }

    @Override
    public void a(String str, TrackData trackData, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("tid", j10);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, trackData.d());
            JSONObject jSONObjectA = trackData.a();
            String str2 = ehanat.f41482h;
            a(jSONObjectA, "_apkg", com.transsion.athena.taaneh.athena.h(this.f41596a));
            a(jSONObjectA, "_avn", com.transsion.athena.taaneh.athena.j(this.f41596a));
            a(jSONObjectA, "_avc", Integer.valueOf(com.transsion.athena.taaneh.athena.i(this.f41596a)));
            a(jSONObjectA, "_atutp", Short.valueOf(ehanat.c()));
            String strB = ehanat.b();
            if (strB == null) {
                strB = "";
            }
            a(jSONObjectA, "_atuid", strB);
            a(jSONObjectA, "_achannel", ehanat.g());
            a(jSONObjectA, "_ainstallchnl", TextUtils.isEmpty(com.transsion.athena.taaneh.athena.e(this.f41596a)) ? " " : com.transsion.athena.taaneh.athena.e(this.f41596a));
            jSONObject.put("_eparam", jSONObjectA);
        } catch (JSONException e10) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e10));
        }
        String string = jSONObject.toString();
        int i10 = this.f41593e;
        if (i10 < 5000) {
            this.f41593e = i10 + 1;
            Message messageObtainMessage = this.f41597b.obtainMessage(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE);
            messageObtainMessage.obj = string;
            this.f41597b.sendMessage(messageObtainMessage);
        }
    }

    @Override
    public void a(Runnable runnable) {
        Handler handler = this.f41597b;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override
    public void a(Runnable runnable, long j10) {
        Handler handler = this.f41597b;
        if (handler != null) {
            handler.postDelayed(runnable, j10);
        }
    }

    @Override
    public void a(Message message, long j10) {
        Handler handler = this.f41597b;
        if (handler != null) {
            handler.sendMessageDelayed(message, j10);
        }
    }

    private void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }
}
