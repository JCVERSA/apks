package com.mgtv.ssp.apkDownload;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.util.o;
import com.hunantv.imgo.util.r;
import com.hunantv.imgo.util.v;
import com.mgtv.ssp.R;
import java.lang.ref.WeakReference;
import java.util.Map;

public class d {
    private com.hunantv.imgo.b.b a;
    private Map<String, com.mgtv.ssp.apkDownload.b.a> b;
    private c c;
    private boolean d;
    private Context e;
    private boolean f;
    private WeakReference<b> g;
    private com.mgtv.ssp.download.d.b h;

    public static class a {
        static final d a = new d();
    }

    public interface b {
        void a();
    }

    private d() {
        this.h = new com.mgtv.ssp.download.d.b() {
            private int b = 0;

            @Override
            public void a(String str, com.mgtv.ssp.download.dao3.c cVar, int i) {
                if (!d.this.f && d.this.g != null) {
                    d.this.f = true;
                    try {
                        b bVar = (b) d.this.g.get();
                        if (bVar != null) {
                            bVar.a();
                        }
                    } catch (Throwable unused) {
                    }
                }
                com.mgtv.ssp.apkDownload.a.a aVar = new com.mgtv.ssp.apkDownload.a.a();
                aVar.a = cVar;
                aVar.c = i;
                if (this.b == i) {
                    return;
                }
                d.this.a(2, aVar);
                this.b = i;
            }

            @Override
            public void b(String str, com.mgtv.ssp.download.dao3.c cVar) {
                com.mgtv.ssp.apkDownload.a.a aVar = new com.mgtv.ssp.apkDownload.a.a();
                aVar.a = cVar;
                d.this.a(4, aVar);
            }

            @Override
            public void a(String str, com.mgtv.ssp.download.dao3.c cVar, String str2) {
                com.mgtv.ssp.apkDownload.a.a aVar = new com.mgtv.ssp.apkDownload.a.a();
                aVar.a = cVar;
                aVar.b = str2;
                d.this.a(3, aVar);
            }

            @Override
            public void a(String str, com.mgtv.ssp.download.dao3.c cVar) {
                com.mgtv.ssp.apkDownload.a.a aVar = new com.mgtv.ssp.apkDownload.a.a();
                aVar.a = cVar;
                d.this.a(1, aVar);
            }
        };
    }

    public void b() {
        this.e = BaseApplication.getContext();
        this.c = new c(this);
    }

    public boolean c() {
        return this.d;
    }

    public void c(String str) {
        com.mgtv.ssp.download.dao3.c cVarB = com.mgtv.ssp.download.d.a(BaseApplication.getContext()).b(str);
        if (cVarB != null) {
            String str2 = cVarB.d;
            if (!TextUtils.isEmpty(str2)) {
                com.mgtv.ssp.apkDownload.a.a(str2);
            } else {
                Toast.makeText(this.e, R.string.file_not_exists, 0).show();
            }
        }
    }

    public static d a() {
        return a.a;
    }

    public void b(String str) {
        com.mgtv.ssp.apkDownload.b.a aVar;
        if (o.a(this.b) || (aVar = this.b.get(str)) == null) {
            return;
        }
        aVar.a(str);
    }

    public void a(Context context, @Nullable String str, String str2, b bVar) {
        com.mgtv.ssp.download.dao3.c cVarB;
        if (TextUtils.isEmpty(str2) || BaseApplication.getContext() == null) {
            return;
        }
        this.g = new WeakReference<>(bVar);
        if (com.mgtv.ssp.apkDownload.b.a().c(str2) && (cVarB = com.mgtv.ssp.download.d.a(BaseApplication.getContext()).b(str2)) != null) {
            Integer num = cVarB.i;
            if (num != null && num.intValue() == 2) {
                if (TextUtils.isEmpty(cVarB.d)) {
                    return;
                }
                com.mgtv.ssp.apkDownload.a.a(cVarB.d);
                return;
            }
            v.b(R.string.start_download);
            return;
        }
        this.f = false;
        if (!r.a(context, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            a(context);
        } else {
            if (BaseApplication.getContext() == null) {
                return;
            }
            com.mgtv.ssp.download.d.a(BaseApplication.getContext()).a(str, str2, this.h);
        }
    }

    public void a(Context context, @Nullable String str, @NonNull String str2, int i) {
        com.mgtv.ssp.download.d dVarA = com.mgtv.ssp.download.d.a(BaseApplication.getContext());
        com.mgtv.ssp.download.dao3.c cVarC = dVarA.c(str);
        if (cVarC != null) {
            try {
                if (cVarC.g.longValue() <= cVarC.h.longValue()) {
                    if (cVarC.i.intValue() != 4 && cVarC.i.intValue() != 3) {
                        if (cVarC.i.intValue() == 1) {
                            dVarA.a(cVarC);
                            com.mgtv.ssp.apkDownload.a.a aVar = new com.mgtv.ssp.apkDownload.a.a();
                            if (i != -1) {
                                aVar.d = false;
                                aVar.e = i;
                            }
                            aVar.a = cVarC;
                            a(4, aVar);
                            return;
                        }
                        if (cVarC.i.intValue() == 0) {
                            if (!r.a(BaseApplication.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                                if (context instanceof Activity) {
                                    a(context);
                                    return;
                                } else {
                                    v.b(R.string.apk_download_no_permission_title);
                                    return;
                                }
                            }
                            dVarA.a(cVarC.b, cVarC.e, this.h);
                            return;
                        }
                        return;
                    }
                    if (!r.a(BaseApplication.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
                        if (context instanceof Activity) {
                            a(context);
                            return;
                        } else {
                            v.b(R.string.apk_download_no_permission_title);
                            return;
                        }
                    }
                    dVarA.a(cVarC, this.h);
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (!r.a(BaseApplication.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (context instanceof Activity) {
                a(context);
                return;
            } else {
                v.b(R.string.apk_download_no_permission_title);
                return;
            }
        }
        dVarA.a(str, str2, this.h);
    }

    private void a(Context context) {
        if (context == null) {
            return;
        }
        a(this.a);
        com.hunantv.imgo.b.b bVar = new com.hunantv.imgo.b.b(context);
        this.a = bVar;
        bVar.a(R.string.apk_download_no_permission_title).b(R.string.download_no_permission_cancel).c(R.string.download_no_permission_sure).b(true).a(true).a(new com.hunantv.imgo.b.b.C0127b(this.a) {
            @Override
            public void a() {
                super.a();
                d dVar = d.this;
                dVar.a(dVar.a);
            }

            @Override
            public void b() {
                super.b();
                d dVar = d.this;
                dVar.a(dVar.a);
                r.a(BaseApplication.getContext());
            }
        }).b();
    }

    public void a(int i, Object obj) {
        if (this.c == null) {
            return;
        }
        Message message = new Message();
        message.what = i;
        message.obj = obj;
        this.c.sendMessage(message);
    }

    public void a(boolean z) {
        this.d = z;
    }

    public void a(String str, int i) {
        com.mgtv.ssp.apkDownload.b.a aVar;
        if (o.a(this.b) || (aVar = this.b.get(str)) == null) {
            return;
        }
        aVar.a(str, i);
    }

    public void a(String str) {
        com.mgtv.ssp.apkDownload.b.a aVar;
        if (o.a(this.b) || (aVar = this.b.get(str)) == null) {
            return;
        }
        aVar.b(str);
    }

    public void a(Dialog dialog) {
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        dialog.dismiss();
    }
}
