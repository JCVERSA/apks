package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class h implements b, Handler.Callback {

    protected Pattern f35735a;

    protected String f35736b;

    protected Context f35738d;

    protected WindVaneWebView f35739e;

    protected final int f35737c = 1;

    protected Handler f35740f = new Handler(Looper.getMainLooper(), this);

    public h(Context context) {
        this.f35738d = context;
    }

    @Override
    public void a(WindVaneWebView windVaneWebView) {
        this.f35739e = windVaneWebView;
    }

    @Override
    public boolean b(String str) {
        if (!i.f(str)) {
            return false;
        }
        a(i.c(str));
        d(str);
        return true;
    }

    public a c(String str) {
        if (str == null) {
            return null;
        }
        a aVarA = com.mbridge.msdk.mbsignalcommon.mraid.c.a(this.f35739e, str);
        if (aVarA != null) {
            aVarA.f35709b = this.f35739e;
            return aVarA;
        }
        Matcher matcher = this.f35735a.matcher(str);
        if (matcher.matches()) {
            a aVar = new a();
            int iGroupCount = matcher.groupCount();
            if (iGroupCount >= 5) {
                aVar.f35713f = matcher.group(5);
            }
            if (iGroupCount >= 3) {
                aVar.f35711d = matcher.group(1);
                aVar.f35714g = matcher.group(2);
                String strGroup = matcher.group(3);
                aVar.f35712e = strGroup;
                HashMap<String, String> map = com.mbridge.msdk.mbsignalcommon.base.e.f35610k;
                if (map != null && map.containsKey(strGroup)) {
                    aVar.f35712e = com.mbridge.msdk.mbsignalcommon.base.e.f35610k.get(aVar.f35712e);
                }
                aVar.f35709b = this.f35739e;
                return aVar;
            }
        }
        return null;
    }

    public void d(String str) {
        this.f35736b = str;
    }

    @Override
    public boolean handleMessage(Message message) {
        a aVar = (a) message.obj;
        if (aVar == null) {
            return false;
        }
        try {
            if (message.what == 1) {
                Object obj = aVar.f35710c;
                com.mbridge.msdk.mbsignalcommon.mapping.b.C0489b c0489b = aVar.f35708a;
                if (c0489b != null && obj != null) {
                    c0489b.a(obj, aVar, TextUtils.isEmpty(aVar.f35713f) ? "{}" : aVar.f35713f);
                }
                return true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    @Override
    public void a(String str) {
        a aVarC;
        if (TextUtils.isEmpty(str) || (aVarC = c(str)) == null) {
            return;
        }
        a(aVarC);
    }

    protected void a(a aVar) {
        WindVaneWebView windVaneWebView = aVar.f35709b;
        Object jsObject = windVaneWebView == null ? null : windVaneWebView.getJsObject(aVar.f35711d);
        if (jsObject == null) {
            return;
        }
        try {
            com.mbridge.msdk.mbsignalcommon.mapping.b.C0489b c0489bA = com.mbridge.msdk.mbsignalcommon.mapping.b.a(this.f35738d.getClassLoader(), jsObject.getClass().getName()).a(aVar.f35712e, Object.class, String.class);
            c0489bA.a();
            if (jsObject instanceof g) {
                aVar.f35708a = c0489bA;
                aVar.f35710c = jsObject;
                a(1, aVar);
            }
        } catch (com.mbridge.msdk.mbsignalcommon.mapping.a e10) {
            e10.printStackTrace();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    protected void a(int i10, a aVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = aVar;
        this.f35740f.sendMessage(messageObtain);
    }

    public void a(Pattern pattern) {
        this.f35735a = pattern;
    }
}
