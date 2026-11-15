package defpackage;

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
import com.transsion.athena.config.data.model.ehanat;
import com.transsion.athena.data.AppIdData;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.data.aethna;
import com.transsion.athena.taaneh.a;
import com.transsion.athena.taaneh.athena;
import com.transsion.push.PushConstants;
import org.json.JSONException;
import org.json.JSONObject;

public class b4d extends j5d implements Handler.Callback {
    public static volatile b4d g;
    public int d;
    public int e;
    public long f;

    public b4d(Context context) {
        super(context);
        this.d = 0;
        this.f = 0L;
        HandlerThread handlerThread = new HandlerThread("Athena-LiteWorker", 10);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.c = handler;
        handler.sendEmptyMessage(303);
    }

    public static b4d h(Context context) {
        if (g == null) {
            synchronized (b4d.class) {
                try {
                    if (g == null) {
                        g = new b4d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    @Override
    public void b(Message message, long j) {
        Handler handler = this.c;
        if (handler != null) {
            handler.sendMessageDelayed(message, j);
        }
    }

    @Override
    public void c(Runnable runnable) {
        Handler handler = this.c;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override
    public void d(Runnable runnable, long j) {
        Handler handler = this.c;
        if (handler != null) {
            handler.postDelayed(runnable, j);
        }
    }

    @Override
    public void e(String str, TrackData trackData, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
            jSONObject.put("tid", j);
            jSONObject.put("type", trackData.d());
            JSONObject jSONObjectA = trackData.a();
            String str2 = ehanat.h;
            l(jSONObjectA, "_apkg", athena.x(this.b));
            l(jSONObjectA, "_avn", athena.z(this.b));
            l(jSONObjectA, "_avc", Integer.valueOf(athena.y(this.b)));
            l(jSONObjectA, "_atutp", Short.valueOf(ehanat.c()));
            String strB = ehanat.b();
            if (strB == null) {
                strB = "";
            }
            l(jSONObjectA, "_atuid", strB);
            l(jSONObjectA, "_achannel", ehanat.g());
            l(jSONObjectA, "_ainstallchnl", TextUtils.isEmpty(athena.u(this.b)) ? " " : athena.u(this.b));
            jSONObject.put("_eparam", jSONObjectA);
        } catch (JSONException e) {
            c4d.d(Log.getStackTraceString(e));
        }
        String string = jSONObject.toString();
        int i = this.e;
        if (i < 5000) {
            this.e = i + 1;
            Message messageObtainMessage = this.c.obtainMessage(302);
            messageObtainMessage.obj = string;
            this.c.sendMessage(messageObtainMessage);
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        try {
            int i = message.what;
            if (i == 302) {
                this.e--;
                k((String) message.obj);
                return false;
            }
            if (i != 303) {
                if (i == 400) {
                    i(message.arg1, (String) message.obj);
                    return false;
                }
                if (i != 405) {
                    return false;
                }
                j((aethna) message.obj);
                return false;
            }
            c4d.a.m().r(ehanat.q());
            c4d.f("Athena SDK Version is 3.1.1.2");
            c4d.f("Athena is in Lite mode");
            if (com.transsion.athena.data.athena.b() == 0) {
                a.e("HostAppId must be set up in LiteMode");
            }
            m();
            return false;
        } catch (Exception e) {
            c4d.d(Log.getStackTraceString(e));
            return false;
        }
    }

    public final void i(int i, String str) {
        if (this.d != 1) {
            c4d.b("Failed to connect to DCS service");
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(PushConstants.PROVIDER_FIELD_APP_ID, Integer.valueOf(i));
        if (TextUtils.isEmpty(str)) {
            contentValues.put("baseInfo", AppIdData.a(this.b, i).b);
        } else {
            contentValues.put("baseInfo", str);
        }
        this.b.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/bind"), contentValues);
    }

    public final void j(aethna aethnaVar) {
        if (this.d != 1) {
            c4d.b("Failed to connect to DCS service");
            return;
        }
        Cursor cursorQuery = this.b.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/property"), null, "prop_key = ?", new String[]{aethnaVar.a}, null);
        if (cursorQuery != null) {
            if (cursorQuery.moveToNext()) {
                cursorQuery.getString(0);
                ubc.a(aethnaVar.b.get());
            }
            cursorQuery.close();
        }
    }

    public final void k(String str) {
        if (this.d == 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("trackObject", str);
            this.b.getContentResolver().insert(Uri.parse("content://com.transsion.dataservice.provider/track"), contentValues);
            return;
        }
        c4d.b("Failed to connect to DCS service");
        long j = this.f + 1;
        this.f = j;
        long j2 = 20;
        if (j % j2 == 0 && j / j2 <= 5 && a.l(this.b)) {
            m();
        }
    }

    public final void l(JSONObject jSONObject, String str, Object obj) throws JSONException {
        try {
            jSONObject.getString(str);
        } catch (JSONException unused) {
            jSONObject.put(str, obj);
        }
    }

    public final void m() {
        Cursor cursorQuery = this.b.getContentResolver().query(Uri.parse("content://com.transsion.dataservice.provider/authorize"), null, "pkg = ?", new String[]{athena.x(this.b)}, null);
        if (cursorQuery != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("DCS authorize ");
            sb.append(cursorQuery.getCount() == 1 ? "enable" : "disable");
            c4d.b(sb.toString());
            if (cursorQuery.getCount() == 1) {
                this.d = 1;
            } else {
                this.d = 2;
            }
            cursorQuery.close();
        }
    }
}
