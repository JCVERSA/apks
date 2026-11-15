package defpackage;

import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.bean.UpdateEntity;
import com.cloud.tupdate.net.network.HttpRequestor;
import com.cloud.tupdate.net.utils.LogUtil;
import com.cloud.tupdate.net.utils.ThreadPoolUtil;
import com.cloud.tupdate.utils.ExecutorUtils;
import com.transsion.http.impl.StringCallback;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class ugb implements tw4 {

    public static final class a extends StringCallback {
        public final String f;
        public final ww4 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, ww4 ww4Var) {
            super(true);
            this.f = str;
            this.g = ww4Var;
        }

        @Override
        public void D(int i, String str, Throwable th) {
            vk.a.J(0, String.valueOf(i), str);
            ugb.this.k(this.f, this.g);
            LogUtil.a.d(th);
        }

        @Override
        public void E(int i, String str) {
            try {
                ugb.this.l(this.f, str, this.g);
            } catch (Exception e) {
                vk.a.J(0, "0", "");
                LogUtil.a.d(e);
            }
        }
    }

    public static final class b extends StringCallback {
        public final rv4 e;
        public final ww4 f;
        public final boolean g;
        public final ugb h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(rv4 rv4Var, ww4 ww4Var, boolean z, ugb ugbVar) {
            super(true);
            this.e = rv4Var;
            this.f = ww4Var;
            this.g = z;
            this.h = ugbVar;
        }

        public static final void G(String str, ww4 ww4Var, rv4 rv4Var, boolean z, ugb ugbVar) {
            UpdateContent updateContent;
            Boolean showDialog;
            UpdateContent updateContent2;
            String updateVersion;
            UpdateContent updateContent3;
            Boolean force;
            y45.j(ww4Var, "$updateManager");
            y45.j(ugbVar, "this$0");
            if (str != null && (!j1a.o0(str))) {
                UpdateEntity updateEntityA = ww4Var.a(str);
                if (rv4Var != null) {
                    boolean zBooleanValue = false;
                    boolean zBooleanValue2 = (updateEntityA == null || (updateContent = updateEntityA.getUpdateContent()) == null || (showDialog = updateContent.getShowDialog()) == null) ? false : showDialog.booleanValue();
                    if (updateEntityA != null && (updateContent3 = updateEntityA.getUpdateContent()) != null && (force = updateContent3.getForce()) != null) {
                        zBooleanValue = force.booleanValue();
                    }
                    String str2 = "";
                    if (updateEntityA != null && (updateContent2 = updateEntityA.getUpdateContent()) != null && (updateVersion = updateContent2.getUpdateVersion()) != null) {
                        str2 = updateVersion;
                    }
                    rv4Var.b(zBooleanValue2, zBooleanValue, str2);
                }
                if (z) {
                    ugbVar.q(updateEntityA, ww4Var, z);
                }
            }
        }

        @Override
        public void D(int i, String str, Throwable th) {
            vk.a.J(0, String.valueOf(i), str);
            rv4 rv4Var = this.e;
            if (rv4Var != null) {
                if (str == null) {
                    str = "check fail";
                }
                rv4Var.a(i, str);
            }
            LogUtil.a.d(th);
        }

        @Override
        public void E(int i, final String str) {
            try {
                ExecutorService executorServiceI = ExecutorUtils.i();
                final ww4 ww4Var = this.f;
                final rv4 rv4Var = this.e;
                final boolean z = this.g;
                final ugb ugbVar = this.h;
                executorServiceI.execute(new Runnable() {
                    @Override
                    public final void run() {
                        ugb.b.G(str, ww4Var, rv4Var, z, ugbVar);
                    }
                });
            } catch (Exception e) {
                vk.a.J(0, "0", "");
                rv4 rv4Var2 = this.e;
                if (rv4Var2 != null) {
                    rv4Var2.a(i, "parse fail");
                }
                LogUtil.a.d(e);
            }
        }
    }

    public static final void j(String str, Map map, Map map2, ugb ugbVar, ww4 ww4Var) {
        y45.j(str, "$url");
        y45.j(map, "$finalHeaders");
        y45.j(ugbVar, "this$0");
        y45.j(ww4Var, "$updateManager");
        try {
            o6.j().d("update", y45.s("update url -> ", str));
            HttpRequestor httpRequestorA = HttpRequestor.INSTANCE.a();
            if (httpRequestorA == null) {
                return;
            }
            httpRequestorA.a(str, map, map2, null, ugbVar.new a(str, ww4Var));
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }

    public static final void n(String str, Map map, Map map2, rv4 rv4Var, ww4 ww4Var, boolean z, ugb ugbVar) {
        y45.j(str, "$url");
        y45.j(map, "$finalHeaders");
        y45.j(ww4Var, "$updateManager");
        y45.j(ugbVar, "this$0");
        try {
            HttpRequestor httpRequestorA = HttpRequestor.INSTANCE.a();
            if (httpRequestorA == null) {
                return;
            }
            httpRequestorA.a(str, map, map2, null, new b(rv4Var, ww4Var, z, ugbVar));
        } catch (Exception e) {
            if (rv4Var != null) {
                rv4Var.a(-1, "Exception");
            }
            LogUtil.a.d(e);
        }
    }

    public static final void p(ww4 ww4Var, String str) {
        y45.j(ww4Var, "$updateManager");
        y45.j(str, "$result");
        dhb.m(dhb.a, ww4Var.a(str), ww4Var, false, 4, null);
    }

    public static final void r(UpdateEntity updateEntity, ww4 ww4Var, boolean z) {
        y45.j(ww4Var, "$updateManager");
        dhb.a.l(updateEntity, ww4Var, z);
    }

    @Override
    public void a(final String str, Map map, final Map map2, final ww4 ww4Var) {
        y45.j(str, "url");
        y45.j(ww4Var, "updateManager");
        try {
            final Map mapM = m(ww4Var, map);
            vk.a.H(mapM.toString(), String.valueOf(map2));
            ThreadPoolUtil threadPoolUtilA = ThreadPoolUtil.INSTANCE.a();
            if (threadPoolUtilA == null) {
                return;
            }
            threadPoolUtilA.a(new Runnable() {
                @Override
                public final void run() {
                    ugb.j(str, mapM, map2, this, ww4Var);
                }
            });
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
    }

    @Override
    public void b(final String str, Map map, final Map map2, final ww4 ww4Var, final rv4 rv4Var, final boolean z) {
        y45.j(str, "url");
        y45.j(ww4Var, "updateManager");
        try {
            final Map mapM = m(ww4Var, map);
            vk.a.H(mapM.toString(), String.valueOf(map2));
            ThreadPoolUtil threadPoolUtilA = ThreadPoolUtil.INSTANCE.a();
            if (threadPoolUtilA == null) {
                return;
            }
            threadPoolUtilA.a(new Runnable() {
                @Override
                public final void run() {
                    ugb.n(str, mapM, map2, rv4Var, ww4Var, z, this);
                }
            });
        } catch (Exception e) {
            if (rv4Var != null) {
                rv4Var.a(-1, "Exception");
            }
            LogUtil.a.d(e);
        }
    }

    public final void k(String str, ww4 ww4Var) {
    }

    public final void l(String str, String str2, ww4 ww4Var) {
        if (str2 != null && (!j1a.o0(str2))) {
            o(str2, ww4Var);
        }
    }

    public final Map m(ww4 ww4Var, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        qa1 qa1Var = qa1.a;
        linkedHashMap.put("country", qa1Var.d());
        linkedHashMap.put("mcc", qa1Var.f());
        linkedHashMap.put("brand", qa1Var.c());
        linkedHashMap.put("osVersion", qa1Var.q());
        linkedHashMap.put("whiteList", ww4Var.g());
        if (map != null && (!map.isEmpty())) {
            linkedHashMap.putAll(map);
        }
        return linkedHashMap;
    }

    public void o(final String str, final ww4 ww4Var) {
        y45.j(str, "result");
        y45.j(ww4Var, "updateManager");
        try {
            ExecutorUtils.i().execute(new Runnable() {
                @Override
                public final void run() {
                    ugb.p(ww4Var, str);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void q(final UpdateEntity updateEntity, final ww4 ww4Var, final boolean z) {
        try {
            ExecutorUtils.i().execute(new Runnable() {
                @Override
                public final void run() {
                    ugb.r(updateEntity, ww4Var, z);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
