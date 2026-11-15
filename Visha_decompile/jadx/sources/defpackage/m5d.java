package defpackage;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mgadplus.mgutil.o;
import com.mgmi.R;
import com.mgmi.ads.api.e;
import com.mgmi.ads.api.j;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.e.a.d;
import com.mgmi.e.g;
import com.mgmi.model.Clicks;
import com.mgmi.model.VASTAd;
import com.mgmi.model.VASTStaticResource;
import java.lang.ref.WeakReference;

public class m5d {
    public String a;
    public VASTAd b;
    public WeakReference d;
    public String e = null;
    public String f = null;
    public d c = com.mgmi.net.b.a().b();

    public class a extends com.mgmi.ViewGroup.a.a.b {
        public final com.mgmi.ViewGroup.a.a f;
        public final e g;
        public final Context h;
        public final String i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.mgmi.ViewGroup.a.a aVar, com.mgmi.ViewGroup.a.a aVar2, e eVar, Context context, String str) {
            super(aVar);
            this.f = aVar2;
            this.g = eVar;
            this.h = context;
            this.i = str;
        }

        @Override
        public void a() {
            super.a();
            this.f.dismiss();
            e eVar = this.g;
            if (eVar != null) {
                eVar.b();
            }
            h2d.e(this.h, this.i);
        }

        @Override
        public void b() {
            super.b();
            this.f.dismiss();
            e eVar = this.g;
            if (eVar != null) {
                eVar.a();
            }
        }
    }

    public interface b {
        void a();

        void b();
    }

    public m5d(Context context, String str, VASTAd vASTAd) {
        this.d = new WeakReference(context);
        this.a = str;
        this.b = vASTAd;
    }

    public Context a() {
        WeakReference weakReference = this.d;
        if (weakReference != null) {
            return (Context) weakReference.get();
        }
        return null;
    }

    public final void b(Context context, String str, e eVar) {
        try {
            com.mgmi.ViewGroup.a.a aVar = new com.mgmi.ViewGroup.a.a(context);
            aVar.a(R.string.mgmi_confim_leave).b(R.string.mgmi_common_cancel).c(R.string.mgmi_common_confim).a(new a(aVar, aVar, eVar, context, str)).b();
        } catch (Exception unused) {
            h2d.e(context, str);
        }
    }

    public void c(View view, com.mgmi.ads.api.c.a aVar, dkd dkdVar, VASTStaticResource vASTStaticResource) {
        Clicks videoClick;
        String str;
        String str2;
        boolean z = dkdVar != null && dkdVar.f();
        if (vASTStaticResource != null && vASTStaticResource.getStaticResourceBinder() != null) {
            if (view != null) {
                vASTStaticResource.getStaticResourceBinder().a(view);
            }
            if (this.c != null) {
                g gVarF = new g().f("0");
                if (aVar != null) {
                    gVarF.a(aVar.b());
                }
                gVarF.a(dkdVar);
                gVarF.b("0");
                this.c.g(this.b, gVarF);
                return;
            }
            return;
        }
        j.a().a(this.b);
        if (vASTStaticResource == null || vASTStaticResource.getVideoClick() == null) {
            VASTAd vASTAd = this.b;
            if (vASTAd == null || vASTAd.getMediaFiles() == null || this.b.getMediaFiles().size() <= 0 || this.b.getMediaFiles().get(0) == null) {
                VASTAd vASTAd2 = this.b;
                videoClick = vASTAd2 != null ? vASTAd2.getVideoClick() : null;
            } else {
                videoClick = this.b.getMediaFiles().get(0).getVideoClick();
            }
        } else {
            videoClick = vASTStaticResource.getVideoClick();
        }
        if (videoClick == null || videoClick.getClickThrough() == null) {
            return;
        }
        videoClick.getDeepLink(a());
        String external = videoClick.getExternal();
        String clickUrl = videoClick.getClickUrl();
        VASTAd vASTAd3 = this.b;
        if (vASTAd3 != null && "1".equalsIgnoreCase(vASTAd3.getClk_macro())) {
            clickUrl = bld.a(dkdVar, clickUrl);
        }
        String strA = g4d.a();
        if (this.c != null) {
            g gVarF2 = new g().f("0");
            if (aVar != null) {
                gVarF2.a(aVar.b());
            }
            gVarF2.a(dkdVar);
            gVarF2.b(videoClick.getDeepLinkReport()).g(strA);
            if (vASTStaticResource == null || vASTStaticResource.getVideoClick() == null) {
                this.c.g(this.b, gVarF2);
            } else {
                this.c.b(this.b, gVarF2);
            }
        }
        if (TextUtils.isEmpty(clickUrl)) {
            return;
        }
        AdWidgetInfo uuid = new AdWidgetInfo("ADS_ONLINE_VIDEO").setClickUrl(clickUrl).setUuid(strA);
        VASTAd vASTAd4 = this.b;
        if (vASTAd4 != null) {
            com.mgmi.ads.api.g.a(uuid, vASTAd4.isShowLandAdLog(), this.b.getAdOrigin());
        }
        if (videoClick.getSchemeNoticeConfirm() == 1) {
            uuid.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_YES);
        } else {
            uuid.setAwayAppType(com.mgmi.ads.api.d.AWAY_APP_TYPE_NO);
        }
        if (e(clickUrl, videoClick.getSchemeNoticeConfirm() == 1, null)) {
            o.c(videoClick.getClickThrough(), this.b.getTraceCheck());
            return;
        }
        if ("1".equals(external) && !z) {
            h2d.h(a(), clickUrl);
        } else if (!"2".equals(external)) {
            VASTAd vASTAd5 = this.b;
            if (vASTAd5 != null && "8".equals(vASTAd5.getAction())) {
                String strD = g4d.d(clickUrl, "MiniProgram://", "?username");
                String[] strArrK = g4d.k(videoClick.getClickThrough());
                if (strArrK == null || strArrK.length <= 0) {
                    str = null;
                    str2 = null;
                } else {
                    str = null;
                    str2 = null;
                    for (String str3 : strArrK) {
                        if (g4d.n(str3)) {
                            str = str3;
                        } else {
                            str2 = str3;
                        }
                    }
                }
                if (!TextUtils.isEmpty(strD)) {
                    if (h2d.b(a(), strD + "://") != null) {
                        String strD2 = str.contains("path=") ? g4d.d(str, "username=", "&") : g4d.c(str, "username=");
                        String strC = str.contains("path=") ? g4d.c(str, "path=") : null;
                        if (strD2 != null && aVar.c() != null) {
                            com.mgmi.ads.api.d dVar = (videoClick.getSchemeNoticeConfirm() == 1 || !(this.b.getCurrentStaticResource() == null || this.b.getCurrentStaticResource().getVideoClick() == null || this.b.getCurrentStaticResource().getVideoClick().getSchemeNoticeConfirm() != 1)) ? com.mgmi.ads.api.d.AWAY_APP_TYPE_YES : com.mgmi.ads.api.d.AWAY_APP_TYPE_NO;
                            if (z) {
                                return;
                            }
                            aVar.c().gotoMiniProgram(com.mgmi.ads.api.a.b.TYPE_MINIPROGRAM, strD2, strC, dVar);
                            return;
                        }
                    } else if (aVar.c() != null) {
                        uuid.setClickUrl(str2).setUuid(strA);
                        com.mgmi.ads.api.a.EnumC0161a enumC0161a = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
                        if (z) {
                            return;
                        }
                        aVar.c().onAdListener(enumC0161a, uuid);
                        return;
                    }
                }
            }
            if (aVar.c() != null) {
                com.mgmi.ads.api.a.EnumC0161a enumC0161a2 = com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA;
                if (!z) {
                    aVar.c().onAdListener(enumC0161a2, uuid);
                }
            }
        } else if (aVar.c() != null) {
            if (aVar.c().isFullScreen()) {
                com.mgmi.ads.api.a.EnumC0161a enumC0161a3 = com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA;
                if (!z) {
                    aVar.c().onAdListener(enumC0161a3, uuid);
                }
            } else {
                VASTAd vASTAd6 = this.b;
                com.mgmi.ads.api.a.EnumC0161a enumC0161a4 = (vASTAd6 == null || vASTAd6.getAdStyle() != 5) ? com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA : com.mgmi.ads.api.a.EnumC0161a.JUMP_SHOWTIME_HARFSCREEN_SCHEMA;
                if (!z) {
                    aVar.c().onAdListener(enumC0161a4, uuid);
                }
            }
        }
        o.c(videoClick.getClickThrough(), this.b.getTraceCheck());
    }

    public boolean d(VASTAd vASTAd) {
        Clicks videoClick = null;
        if (vASTAd != null) {
            videoClick = vASTAd.getCurrentStaticResource() != null ? vASTAd.getCurrentStaticResource().getVideoClick() : null;
            if (videoClick == null && vASTAd.getCurrentMediaFile() != null) {
                videoClick = vASTAd.getCurrentMediaFile().getVideoClick();
            }
        }
        if (videoClick == null || videoClick.getClickThrough() == null) {
            return false;
        }
        videoClick.getDeepLink(a());
        if (g4d.r(videoClick.getClickUrl())) {
            return true;
        }
        return "1".equals(videoClick.getExternal());
    }

    public boolean e(String str, boolean z, e eVar) {
        if (g4d.u(str)) {
            Activity activityA = h2d.a(a());
            if (activityA == null) {
                Context contextA = a();
                if (contextA != null && h2d.b(contextA, str) != null) {
                    h2d.e(contextA, str);
                    return true;
                }
            } else if (h2d.b(activityA, str) != null) {
                if (!z || g4d.v(str)) {
                    h2d.e(activityA, str);
                    return true;
                }
                b(activityA, str, eVar);
                return true;
            }
        }
        return false;
    }
}
