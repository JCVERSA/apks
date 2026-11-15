package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.liveData.WebViewLiveData;
import com.transsion.sniffer_load.webview.SniffWebViewContainer;
import com.transsion.utils.ToastUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class nic {
    public static int g = -1;
    public static int h = -1;
    public static volatile nic i;
    public volatile List a;
    public volatile int b;
    public jic c;
    public Bitmap d;
    public MutableLiveData e = new MutableLiveData();
    public WebViewLiveData f = new WebViewLiveData();

    public static void F(int i2) {
        h = i2;
    }

    public static nic q(Context context) {
        if (i == null) {
            synchronized (nic.class) {
                try {
                    if (i == null) {
                        i = new nic();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (i.c == null) {
            i.r(context);
        }
        return i;
    }

    public static void s(jic jicVar, long j) {
        if (jicVar != null) {
            jicVar.deleteItem(j);
        }
    }

    public static void t(jic jicVar, long j) {
        if (jicVar != null) {
            jicVar.deleteItem(j);
        }
    }

    public void A(int i2, int i3) {
        WebPreviewRecord webPreviewRecord;
        if (this.a == null || this.a.isEmpty()) {
            return;
        }
        int i4 = -1;
        if (i3 > 1) {
            if (i2 > 0) {
                i4 = i2 - 1;
            } else if (this.a.size() > 1) {
                i4 = i2 + 1;
            }
        }
        for (int i5 = 0; i5 < this.a.size(); i5++) {
            if (i5 != i2 && i5 != i4 && (webPreviewRecord = (WebPreviewRecord) this.a.get(i5)) != null && webPreviewRecord.getWebview() != null) {
                try {
                    webPreviewRecord.getWebview().y();
                } catch (RuntimeException e) {
                    Log.e("Sniff", "releaseInactiveWebViews", e);
                }
                webPreviewRecord.setWebview(null);
            }
        }
    }

    public boolean B(int i2) {
        if (i2 < this.a.size() && i2 >= 0) {
            WebPreviewRecord webPreviewRecord = (WebPreviewRecord) this.a.remove(i2);
            this.c.deleteItem(webPreviewRecord.id);
            if (i2 == this.b) {
                this.b--;
                if (this.b < 0) {
                    this.b = 0;
                }
                SniffWebViewContainer webview = webPreviewRecord.getWebview();
                if (webview != null) {
                    webview.y();
                }
                if (this.a.size() == 0) {
                    WebPreviewRecord webPreviewRecord2 = new WebPreviewRecord();
                    webPreviewRecord2.setWebUrl("https://www.google.com");
                    webPreviewRecord2.setTitle("https://www.google.com");
                    webPreviewRecord2.setWebview(null);
                    this.a.add(webPreviewRecord2);
                }
                y();
                return true;
            }
            SniffWebViewContainer webview2 = webPreviewRecord.getWebview();
            if (webview2 != null) {
                webview2.y();
            }
            this.b = this.b > i2 ? this.b - 1 : this.b;
            y();
        }
        return false;
    }

    public void C(SniffWebViewContainer sniffWebViewContainer, String str, boolean z) {
        try {
            if (this.a.size() != 0 && !z) {
                WebPreviewRecord webPreviewRecordN = n(this.b);
                if (webPreviewRecordN.getWebview() != null) {
                    webPreviewRecordN.getWebview().y();
                    webPreviewRecordN.setWebview(null);
                }
                webPreviewRecordN.setWebview(sniffWebViewContainer);
                this.f.postValue(webPreviewRecordN);
                z(this.b);
                return;
            }
            e(str, sniffWebViewContainer);
            this.f.postValue(k());
        } catch (Exception e) {
            Log.e("Sniff", "setCurrentWebview: ", e);
        }
    }

    public void D(int i2) {
        this.b = i2;
        y();
        z(i2);
    }

    public void E(int i2) {
        g = i2;
    }

    public void G() {
        jic jicVar = this.c;
        if (jicVar != null) {
            jicVar.update(this.a);
        }
    }

    public void c(String str, String str2, SniffWebViewContainer sniffWebViewContainer) {
        if (this.c == null || this.a == null) {
            return;
        }
        if (this.a.size() >= 9) {
            ToastUtils.s(R.string.window_up_to_limit);
            return;
        }
        WebPreviewRecord webPreviewRecord = new WebPreviewRecord();
        webPreviewRecord.setWebUrl(str);
        webPreviewRecord.setTitle(str2);
        webPreviewRecord.setWebview(sniffWebViewContainer);
        this.a.add(0, webPreviewRecord);
        this.c.addWebPreviewRecord(webPreviewRecord);
        int i2 = this.b + 1;
        this.b = i2;
        this.b = i2;
        w();
        z(this.b);
    }

    public void d(String str, String str2, SniffWebViewContainer sniffWebViewContainer) {
        if (this.c == null || this.a == null) {
            return;
        }
        if (this.a.size() >= 9) {
            ToastUtils.s(R.string.window_up_to_limit);
            return;
        }
        WebPreviewRecord webPreviewRecord = new WebPreviewRecord();
        webPreviewRecord.setWebUrl(str);
        webPreviewRecord.setTitle(str2);
        webPreviewRecord.setWebview(sniffWebViewContainer);
        this.a.add(this.a.size(), webPreviewRecord);
        this.c.addWebPreviewRecord(webPreviewRecord);
        this.b = this.a.size() - 1;
        v();
        w();
        z(this.b);
    }

    public void e(String str, SniffWebViewContainer sniffWebViewContainer) {
        WebPreviewRecord webPreviewRecord;
        if (this.c == null) {
            return;
        }
        WebPreviewRecord webPreviewRecord2 = new WebPreviewRecord();
        webPreviewRecord2.setWebUrl(str);
        webPreviewRecord2.setTitle(str);
        webPreviewRecord2.setWebview(sniffWebViewContainer);
        this.b = 0;
        if (this.a.size() >= 9 && (webPreviewRecord = (WebPreviewRecord) this.a.remove(0)) != null) {
            if (webPreviewRecord.getWebview() != null) {
                webPreviewRecord.getWebview().y();
                webPreviewRecord.setWebview(null);
            }
            final long j = webPreviewRecord.id;
            final jic jicVar = this.c;
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() {
                    nic.s(jicVar, j);
                }
            });
        }
        this.a.add(this.b, webPreviewRecord2);
        webPreviewRecord2.id = this.c.addWebPreviewRecord(webPreviewRecord2);
        y();
        z(this.b);
    }

    public void f() {
        for (WebPreviewRecord webPreviewRecord : this.a) {
            if (webPreviewRecord.getWebview() != null) {
                webPreviewRecord.getWebview().y();
            }
        }
        this.a.clear();
        this.c.deleteAll();
    }

    public void g(Bitmap bitmap) {
        WebPreviewRecord webPreviewRecordN;
        if (bitmap == null || (webPreviewRecordN = n(this.b)) == null) {
            return;
        }
        Bitmap bitmapU = u();
        vk1.e(bitmap, bitmapU, (g * 1.0f) / h);
        webPreviewRecordN.previewBitmap = jf0.fromBitmap(bitmapU);
        this.c.update(webPreviewRecordN);
    }

    public void h(Bitmap bitmap) {
        WebPreviewRecord webPreviewRecordN;
        if (this.b < this.a.size() && (webPreviewRecordN = n(this.b)) != null) {
            webPreviewRecordN.setIcon(jf0.fromBitmap(bitmap));
        }
    }

    public void i(String str) {
        WebPreviewRecord webPreviewRecordN;
        if (this.b < this.a.size() && (webPreviewRecordN = n(this.b)) != null) {
            webPreviewRecordN.setTitle(str);
        }
    }

    public void j(String str) {
        WebPreviewRecord webPreviewRecordN;
        if (this.a == null || this.a.isEmpty() || (webPreviewRecordN = n(this.b)) == null) {
            return;
        }
        webPreviewRecordN.setWebUrl(str);
    }

    public WebPreviewRecord k() {
        return n(this.b);
    }

    public WebViewLiveData l() {
        return this.f;
    }

    public int m() {
        return this.b;
    }

    public synchronized WebPreviewRecord n(int i2) {
        if (i2 >= 0) {
            if (i2 < this.a.size()) {
                return (WebPreviewRecord) this.a.get(i2);
            }
        }
        Log.e("WebPreviewViewModel", "getWebPreviewByIndex NULL");
        return null;
    }

    public List o() {
        return this.a;
    }

    public int p() {
        return this.a.size();
    }

    public final void r(Context context) {
        jic jicVarE = BookmarkDatabase.c(context).e();
        this.c = jicVarE;
        this.a = jicVarE.getAllByDESC();
        if (this.a == null) {
            this.a = new ArrayList(9);
        }
        Collections.synchronizedList(this.a);
        while (this.a.size() > 9) {
            WebPreviewRecord webPreviewRecord = (WebPreviewRecord) this.a.remove(0);
            if (webPreviewRecord != null) {
                final jic jicVar = this.c;
                final long j = webPreviewRecord.id;
                TaskExecutor.c(new Runnable() {
                    @Override
                    public final void run() {
                        nic.t(jicVar, j);
                    }
                });
            }
        }
        this.b = w6c.d(context, "multi_web_selected", 0);
    }

    public Bitmap u() {
        Bitmap bitmap = this.d;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.d.eraseColor(-1);
            return this.d;
        }
        int i2 = g;
        if (i2 <= 0) {
            i2 = 300;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        this.d = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    public void v() {
        this.f.postValue(k());
    }

    public void w() {
        this.e.postValue(Integer.valueOf(this.a.size()));
    }

    public void x(LifecycleOwner lifecycleOwner) {
        this.e.removeObservers(lifecycleOwner);
        this.f.removeObservers(lifecycleOwner);
        for (WebPreviewRecord webPreviewRecord : this.a) {
            if (webPreviewRecord.getWebview() != null) {
                webPreviewRecord.getWebview().y();
                webPreviewRecord.setWebview(null);
            }
        }
        Bitmap bitmap = this.d;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.d.recycle();
        }
        this.d = null;
        this.c = null;
        this.a.clear();
        i = null;
    }

    public void y() {
        w6c.t(Utils.a(), "multi_web_selected", this.b);
    }

    public void z(int i2) {
        A(i2, 2);
    }
}
