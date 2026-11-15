package com.transsion.privateroom.privateroom;

import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.privateroom.api.beans.PrivateCodeVerifyInfoBean;
import com.transsion.privateroom.privateroom.beans.PrivateSecurityInfo;
import com.transsion.retrofit.callback.CallbackWithState;
import com.transsion.retrofit.reponse.ResponseUtil;
import defpackage.ae9;
import defpackage.de9;
import defpackage.ek4;
import defpackage.g;
import defpackage.gu8;
import defpackage.kq3;
import defpackage.r0a;
import defpackage.sv4;
import defpackage.zu3;

public class PrivateSecurityInfoProvider {
    public static final String e = "PrivateRoom_" + PrivateSecurityInfoProvider.class.getSimpleName();
    public PrivateSecurityInfo b;
    public final Object a = new Object();
    public boolean c = false;
    public boolean d = false;

    public class a extends CallbackWithState {
        public final sv4 b;

        public a(sv4 sv4Var) {
            this.b = sv4Var;
        }

        @Override
        public void onFailture(ResponseUtil.State state) {
            LogUtils.m(PrivateSecurityInfoProvider.e, "send private verify code failed,error code:" + state.code, "error msg:" + state.errMsg);
            PrivateSecurityInfoProvider.this.c = false;
            this.b.d();
        }

        @Override
        public void onSuccess(gu8 gu8Var) {
            LogUtils.j(PrivateSecurityInfoProvider.e, "send private verify code success");
            PrivateSecurityInfoProvider.this.c = false;
            this.b.b();
        }
    }

    public class b extends CallbackWithState {
        public final sv4 b;

        public b(sv4 sv4Var) {
            this.b = sv4Var;
        }

        @Override
        public void onFailture(ResponseUtil.State state) {
            LogUtils.m(PrivateSecurityInfoProvider.e, "private verify code failed,error code:" + state.code, "error msg:" + state.errMsg);
            PrivateSecurityInfoProvider.this.d = false;
            this.b.a(Integer.parseInt(state.code));
        }

        @Override
        public void onSuccess(gu8 gu8Var) {
            LogUtils.j(PrivateSecurityInfoProvider.e, "private verify code success");
            PrivateSecurityInfoProvider.this.d = false;
            this.b.c();
        }
    }

    public String g() {
        if (this.b == null) {
            i();
        }
        PrivateSecurityInfo privateSecurityInfo = this.b;
        if (privateSecurityInfo == null) {
            return "";
        }
        String strA = g.a(privateSecurityInfo.getEncryptedEmail());
        LogUtils.j(e, "Encrypted email: " + this.b.getEncryptedEmail(), "Decrypted email: " + strA);
        return strA;
    }

    public String h() {
        if (this.b == null) {
            i();
        }
        PrivateSecurityInfo privateSecurityInfo = this.b;
        if (privateSecurityInfo == null) {
            return "";
        }
        String strA = g.a(privateSecurityInfo.getEncryptedPassword());
        LogUtils.j(e, "Encrypted Password: " + this.b.getEncryptedPassword(), "Decrypted Password: " + strA);
        return strA;
    }

    public void i() {
        PrivateSecurityInfo privateSecurityInfo = this.b;
        if (privateSecurityInfo != null) {
            privateSecurityInfo.clear();
        }
        String strD = com.transsion.privateroom.privateroom.a.d();
        if (r0a.g(strD) || !zu3.f(strD)) {
            LogUtils.m(e, "create security file failed");
            return;
        }
        String strD2 = kq3.d(strD);
        if (r0a.g(strD2)) {
            return;
        }
        try {
            this.b = (PrivateSecurityInfo) ek4.e(strD2, new TypeToken<PrivateSecurityInfo>() {
            }.getType());
        } catch (Exception unused) {
            LogUtils.m(e, "parse security info failed");
        }
        if (this.b != null) {
            LogUtils.j(e, "security info is " + this.b);
        }
    }

    public void j(final String str) {
        ThreadUtils.i(new ThreadUtils.Task<Object>() {
            @Override
            public Object doInBackground() {
                synchronized (PrivateSecurityInfoProvider.this.a) {
                    try {
                        if (r0a.g(str)) {
                            LogUtils.m(PrivateSecurityInfoProvider.e, "email is empty");
                        } else {
                            String strB = g.b(str);
                            String strA = g.a(strB);
                            LogUtils.j(PrivateSecurityInfoProvider.e, "Encrypted email: " + strB, "Decrypted email: " + strA);
                            if (PrivateSecurityInfoProvider.this.b == null) {
                                PrivateSecurityInfoProvider.this.i();
                            }
                            if (PrivateSecurityInfoProvider.this.b == null) {
                                PrivateSecurityInfoProvider.this.b = new PrivateSecurityInfo();
                            }
                            PrivateSecurityInfoProvider.this.b.setEncryptedEmail(strB);
                            String strI = ek4.i(PrivateSecurityInfoProvider.this.b);
                            if (r0a.g(strI) || !kq3.h(com.transsion.privateroom.privateroom.a.d(), strI, false)) {
                                LogUtils.m(PrivateSecurityInfoProvider.e, "save email failed");
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return null;
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onFail(Throwable th) {
            }

            @Override
            public void onSuccess(Object obj) {
            }
        });
    }

    public void k(final String str) {
        ThreadUtils.i(new ThreadUtils.Task<Object>() {
            @Override
            public Object doInBackground() throws Throwable {
                synchronized (PrivateSecurityInfoProvider.this.a) {
                    try {
                        if (r0a.g(str)) {
                            LogUtils.m(PrivateSecurityInfoProvider.e, "Password is empty");
                        } else {
                            String strB = g.b(str);
                            String strA = g.a(strB);
                            LogUtils.j(PrivateSecurityInfoProvider.e, "Encrypted Password: " + strB, "Decrypted Password: " + strA);
                            if (PrivateSecurityInfoProvider.this.b == null) {
                                PrivateSecurityInfoProvider.this.i();
                            }
                            if (PrivateSecurityInfoProvider.this.b == null) {
                                PrivateSecurityInfoProvider.this.b = new PrivateSecurityInfo();
                            }
                            PrivateSecurityInfoProvider.this.b.setEncryptedPassword(strB);
                            String strI = ek4.i(PrivateSecurityInfoProvider.this.b);
                            if (r0a.g(strI) || !kq3.h(com.transsion.privateroom.privateroom.a.d(), strI, false)) {
                                LogUtils.m(PrivateSecurityInfoProvider.e, "save password failed");
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return null;
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onFail(Throwable th) {
            }

            @Override
            public void onSuccess(Object obj) {
            }
        });
    }

    public void l(PrivateCodeVerifyInfoBean privateCodeVerifyInfoBean, sv4 sv4Var) {
        if (this.c) {
            return;
        }
        if (sv4Var == null) {
            LogUtils.j(e, "Callback must set");
        } else {
            this.c = true;
            ((ae9) de9.a().getApi(ae9.class)).b(privateCodeVerifyInfoBean).enqueue(new a(sv4Var));
        }
    }

    public void m(PrivateCodeVerifyInfoBean privateCodeVerifyInfoBean, sv4 sv4Var) {
        if (this.d) {
            return;
        }
        if (sv4Var == null) {
            LogUtils.j(e, "Callback must set");
        } else {
            this.d = true;
            ((ae9) de9.a().getApi(ae9.class)).a(privateCodeVerifyInfoBean).enqueue(new b(sv4Var));
        }
    }
}
