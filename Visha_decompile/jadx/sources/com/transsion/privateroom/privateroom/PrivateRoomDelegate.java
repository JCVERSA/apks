package com.transsion.privateroom.privateroom;

import android.os.Build;
import android.os.Environment;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.privateroom.api.beans.PrivateCodeVerifyInfoBean;
import com.transsion.privateroom.api.beans.PrivateFile;
import defpackage.mg8;
import defpackage.r0a;
import defpackage.sv4;
import defpackage.tv4;
import defpackage.uv4;
import defpackage.zu3;
import java.util.ArrayList;
import java.util.List;

public class PrivateRoomDelegate {
    public final mg8 a = new mg8();
    public final PrivateFileDataProvider b = new PrivateFileDataProvider();
    public final PrivateSecurityInfoProvider c = new PrivateSecurityInfoProvider();
    public long d = 0;

    class AnonymousClass1 extends ThreadUtils.Task<Boolean> {
        final uv4 val$callback;

        public AnonymousClass1(uv4 uv4Var) {
            this.val$callback = uv4Var;
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onFail(Throwable th) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Boolean doInBackground() throws Throwable {
            boolean zA = PrivateRoomDelegate.this.a.a();
            if (zA) {
                PrivateRoomDelegate.this.b.e();
                PrivateRoomDelegate.this.c.i();
            }
            return Boolean.valueOf(zA);
        }

        @Override
        public void onSuccess(Boolean bool) {
            if (this.val$callback != null) {
                if (bool.booleanValue()) {
                    LogUtils.j("PrivateRoom_PrivateRoomDelegate", "private room init onSuccess");
                    this.val$callback.onInitSuccess();
                } else {
                    LogUtils.j("PrivateRoom_PrivateRoomDelegate", "private room init failed");
                    this.val$callback.b();
                }
            }
        }
    }

    public class AnonymousClass2 extends ThreadUtils.Task<PrivateFile> {
        final tv4 val$callback;
        final List val$files;

        public class a implements com.transsion.privateroom.privateroom.a.InterfaceC0249a {
            public final PrivateFile a;
            public final long b;

            public a(PrivateFile privateFile, long j) {
                this.a = privateFile;
                this.b = j;
            }
        }

        public AnonymousClass2(List list, tv4 tv4Var) {
            this.val$files = list;
            this.val$callback = tv4Var;
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onFail(Throwable th) {
        }

        @Override
        public void onSuccess(PrivateFile privateFile) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PrivateFile doInBackground() throws Throwable {
            long jD = PrivateRoomDelegate.this.b.d(this.val$files);
            ArrayList arrayList = new ArrayList();
            String strC = com.transsion.privateroom.privateroom.a.c();
            for (final PrivateFile privateFile : this.val$files) {
                if (zu3.y(privateFile.getOriginalPath())) {
                    if (r0a.g(privateFile.getOriginalFilename())) {
                        privateFile.setHideFileName(zu3.t(privateFile.getOriginalPath()) + ".visha");
                    } else {
                        privateFile.setHideFileName(privateFile.getOriginalFilename() + ".visha");
                    }
                    privateFile.setHidePath(strC + "/" + privateFile.getHideFileName());
                    if (com.transsion.privateroom.privateroom.a.e(zu3.m(privateFile.getOriginalPath()), zu3.m(privateFile.getHidePath()), new a(privateFile, jD))) {
                        LogUtils.j("PrivateRoom_PrivateRoomDelegate", "hide file success:" + privateFile);
                        arrayList.add(privateFile);
                        ThreadUtils.s(new Runnable() {
                            @Override
                            public void run() {
                                tv4 tv4Var = AnonymousClass2.this.val$callback;
                                if (tv4Var != null) {
                                    tv4Var.f(privateFile);
                                }
                            }
                        });
                    } else {
                        LogUtils.m("PrivateRoom_PrivateRoomDelegate", "move file failed: " + privateFile.getOriginalPath());
                        ThreadUtils.s(new Runnable() {
                            @Override
                            public void run() {
                                tv4 tv4Var = AnonymousClass2.this.val$callback;
                                if (tv4Var != null) {
                                    tv4Var.i(privateFile);
                                }
                            }
                        });
                    }
                } else {
                    LogUtils.P("PrivateRoom_PrivateRoomDelegate", "file does not exist:" + privateFile.getOriginalPath());
                }
            }
            if (arrayList.size() > 0) {
                PrivateRoomDelegate.this.b.i(arrayList);
            }
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    tv4 tv4Var = AnonymousClass2.this.val$callback;
                    if (tv4Var != null) {
                        tv4Var.a(100.0d);
                        AnonymousClass2.this.val$callback.j();
                    }
                }
            });
            return null;
        }
    }

    public class AnonymousClass3 extends ThreadUtils.Task<PrivateFile> {
        final tv4 val$callback;
        final List val$files;

        public class a implements com.transsion.privateroom.privateroom.a.InterfaceC0249a {
            public final PrivateFile a;
            public final long b;

            public a(PrivateFile privateFile, long j) {
                this.a = privateFile;
                this.b = j;
            }
        }

        public AnonymousClass3(List list, tv4 tv4Var) {
            this.val$files = list;
            this.val$callback = tv4Var;
        }

        @Override
        public void onCancel() {
        }

        @Override
        public void onFail(Throwable th) {
        }

        @Override
        public void onSuccess(PrivateFile privateFile) {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public PrivateFile doInBackground() throws Throwable {
            long jD = PrivateRoomDelegate.this.b.d(this.val$files);
            ArrayList arrayList = new ArrayList();
            for (final PrivateFile privateFile : this.val$files) {
                if (!privateFile.canRestore()) {
                    LogUtils.P("PrivateRoom_PrivateRoomDelegate", "file does not restore,restore path wrong:" + privateFile);
                } else if (com.transsion.privateroom.privateroom.a.e(zu3.m(privateFile.getHidePath()), zu3.m(privateFile.getOriginalPath()), new a(privateFile, jD))) {
                    LogUtils.j("PrivateRoom_PrivateRoomDelegate", "restore file success:" + privateFile);
                    PrivateRoomDelegate.this.b.h(privateFile);
                    arrayList.add(privateFile);
                    ThreadUtils.s(new Runnable() {
                        @Override
                        public void run() {
                            tv4 tv4Var = AnonymousClass3.this.val$callback;
                            if (tv4Var != null) {
                                tv4Var.d(privateFile);
                            }
                        }
                    });
                } else {
                    LogUtils.m("PrivateRoom_PrivateRoomDelegate", "move file failed: " + privateFile);
                    ThreadUtils.s(new Runnable() {
                        @Override
                        public void run() {
                            tv4 tv4Var = AnonymousClass3.this.val$callback;
                            if (tv4Var != null) {
                                tv4Var.b(privateFile);
                            }
                        }
                    });
                }
            }
            if (arrayList.size() > 0) {
                PrivateRoomDelegate.this.b.b();
            }
            ThreadUtils.s(new Runnable() {
                @Override
                public void run() {
                    tv4 tv4Var = AnonymousClass3.this.val$callback;
                    if (tv4Var != null) {
                        tv4Var.c();
                    }
                }
            });
            return null;
        }
    }

    public void e(final List list, final tv4 tv4Var) {
        if (list != null && list.size() != 0) {
            ThreadUtils.i(new ThreadUtils.Task<PrivateFile>() {
                @Override
                public void onCancel() {
                }

                @Override
                public void onFail(Throwable th) {
                }

                @Override
                public void onSuccess(PrivateFile privateFile) {
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public PrivateFile doInBackground() throws Throwable {
                    ArrayList arrayList = new ArrayList();
                    for (final PrivateFile privateFile : list) {
                        if (!privateFile.canDelete()) {
                            LogUtils.P("PrivateRoom_PrivateRoomDelegate", "file does not delete " + privateFile);
                        } else if (zu3.h(privateFile.getHidePath())) {
                            LogUtils.j("PrivateRoom_PrivateRoomDelegate", "delete file succeeded: " + privateFile);
                            PrivateRoomDelegate.this.b.h(privateFile);
                            arrayList.add(privateFile);
                            ThreadUtils.s(new Runnable() {
                                @Override
                                public void run() {
                                    tv4 tv4Var2 = tv4Var;
                                    if (tv4Var2 != null) {
                                        tv4Var2.g(privateFile);
                                    }
                                }
                            });
                        } else {
                            LogUtils.m("PrivateRoom_PrivateRoomDelegate", "delete file failed: " + privateFile);
                            ThreadUtils.s(new Runnable() {
                                @Override
                                public void run() {
                                    tv4 tv4Var2 = tv4Var;
                                    if (tv4Var2 != null) {
                                        tv4Var2.e(privateFile);
                                    }
                                }
                            });
                        }
                    }
                    if (arrayList.size() > 0) {
                        PrivateRoomDelegate.this.b.b();
                    }
                    ThreadUtils.s(new Runnable() {
                        @Override
                        public void run() {
                            tv4 tv4Var2 = tv4Var;
                            if (tv4Var2 != null) {
                                tv4Var2.h();
                            }
                        }
                    });
                    return null;
                }
            });
            return;
        }
        LogUtils.m("PrivateRoom_PrivateRoomDelegate", "delete files failed");
        if (tv4Var != null) {
            tv4Var.h();
        }
    }

    public List f() {
        return this.b.c();
    }

    public String g() {
        return this.c.g();
    }

    public String h() {
        return this.c.h();
    }

    public boolean i(uv4 uv4Var) {
        if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
            LogUtils.m("PrivateRoom_PrivateRoomDelegate", "Visha no MANAGE_EXTERNAL_STORAGE permission,should first request");
            if (uv4Var != null) {
                uv4Var.a();
            }
            return false;
        }
        if (a.a(Utils.a(), 0)) {
            return true;
        }
        if (uv4Var != null) {
            LogUtils.m("PrivateRoom_PrivateRoomDelegate", "Visha no file permission,should first request");
            uv4Var.a();
        }
        return false;
    }

    public void j(List list, tv4 tv4Var) {
        if (list != null && list.size() != 0) {
            this.d = 0L;
            ThreadUtils.i(new AnonymousClass2(list, tv4Var));
        } else {
            LogUtils.m("PrivateRoom_PrivateRoomDelegate", "hide files failed");
            if (tv4Var != null) {
                tv4Var.j();
            }
        }
    }

    public void k(uv4 uv4Var) {
        boolean zA = this.a.a();
        if (zA) {
            this.b.e();
            this.c.i();
        }
        if (zA) {
            LogUtils.j("PrivateRoom_PrivateRoomDelegate", "private room init onSuccess");
            if (uv4Var != null) {
                uv4Var.onInitSuccess();
                return;
            }
            return;
        }
        LogUtils.j("PrivateRoom_PrivateRoomDelegate", "private room init failed");
        if (uv4Var != null) {
            uv4Var.b();
        }
    }

    public final void l(PrivateFile privateFile, double d, long j, long j2, tv4 tv4Var, boolean z) {
        if (tv4Var != null) {
            if (!z) {
                if (d < 0.0d || d > 100.0d) {
                    tv4Var.a(0.0d);
                    return;
                } else {
                    tv4Var.a(d * 100.0d);
                    return;
                }
            }
            if (privateFile.getSize() <= 0 || j <= 0) {
                return;
            }
            long j3 = this.d + j2;
            this.d = j3;
            tv4Var.a((j3 / j) * 100.0d);
        }
    }

    public void m(List list, tv4 tv4Var) {
        if (list != null && list.size() != 0) {
            this.d = 0L;
            ThreadUtils.i(new AnonymousClass3(list, tv4Var));
        } else {
            LogUtils.m("PrivateRoom_PrivateRoomDelegate", "restore files failed");
            if (tv4Var != null) {
                tv4Var.c();
            }
        }
    }

    public void n(String str) {
        this.c.j(str);
    }

    public void o(String str) {
        this.c.k(str);
    }

    public void p(String str, sv4 sv4Var) {
        this.c.l(new PrivateCodeVerifyInfoBean(str, ""), sv4Var);
    }

    public void q(String str, String str2, sv4 sv4Var) {
        this.c.m(new PrivateCodeVerifyInfoBean(str, str2), sv4Var);
    }
}
