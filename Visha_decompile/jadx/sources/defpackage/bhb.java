package defpackage;

import android.content.Context;
import com.cloud.tupdate.bean.AppScoreContent;
import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.bean.UpdateEntity;
import java.util.Calendar;

public final class bhb implements yw4 {

    public static final class a implements wa2.b {
        public final UpdateEntity a;
        public final Context b;

        public a(UpdateEntity updateEntity, Context context) {
            this.a = updateEntity;
            this.b = context;
        }

        @Override
        public void a() {
            vk vkVar = vk.a;
            AppScoreContent appScoreContent = this.a.getAppScoreContent();
            vkVar.F("cancel", appScoreContent == null ? null : appScoreContent.getScoreDeeplink());
        }

        @Override
        public void b() {
            vk vkVar = vk.a;
            AppScoreContent appScoreContent = this.a.getAppScoreContent();
            vkVar.F("score", appScoreContent == null ? null : appScoreContent.getScoreDeeplink());
            dhb dhbVar = dhb.a;
            Context context = this.b;
            UpdateContent updateContent = this.a.getUpdateContent();
            dhbVar.r(context, updateContent == null ? null : updateContent.getUpdateVersion(), true);
            qa1 qa1Var = qa1.a;
            Context context2 = this.b;
            AppScoreContent appScoreContent2 = this.a.getAppScoreContent();
            qa1Var.l(context2, appScoreContent2 != null ? appScoreContent2.getScoreDeeplink() : null);
        }
    }

    public static final class b implements wa2.c {
        public final UpdateEntity a;

        public b(UpdateEntity updateEntity) {
            this.a = updateEntity;
        }

        @Override
        public void a() {
            vk vkVar = vk.a;
            UpdateContent updateContent = this.a.getUpdateContent();
            vkVar.L("cancel", updateContent == null ? null : updateContent.getUpdateUrl());
        }

        @Override
        public void b(boolean z) {
            if (z) {
                vk.a.r("upgrade", "upgrade_ignore_click", 1);
            } else {
                vk.a.r("upgrade", "upgrade_ignore_click", 0);
            }
            UpdateContent updateContent = this.a.getUpdateContent();
            if (updateContent != null ? y45.e(updateContent.getForce(), Boolean.FALSE) : false) {
                dhb dhbVar = dhb.a;
                UpdateContent updateContent2 = this.a.getUpdateContent();
                dhbVar.o(updateContent2 == null ? null : updateContent2.getUpdateVersion(), z);
            }
        }

        @Override
        public void c() {
            vk vkVar = vk.a;
            UpdateContent updateContent = this.a.getUpdateContent();
            vkVar.L("upgrade", updateContent == null ? null : updateContent.getUpdateUrl());
        }
    }

    @Override
    public void a(UpdateEntity updateEntity, ww4 ww4Var) {
        y45.j(updateEntity, "updateEntity");
        y45.j(ww4Var, "updateManager");
        Context context = ww4Var.getContext();
        if (context == null) {
            return;
        }
        vk.a.C("score", updateEntity);
        wa2.a.k(context, updateEntity.getAppScoreContent(), ww4Var, new a(updateEntity, context));
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    @Override
    public void b(UpdateEntity updateEntity, ww4 ww4Var, boolean z) {
        y45.j(updateEntity, "updateEntity");
        y45.j(ww4Var, "updateManager");
        Context context = ww4Var.getContext();
        if (context == null) {
            return;
        }
        UpdateContent updateContent = updateEntity.getUpdateContent();
        boolean z2 = false;
        if ((updateContent == null ? false : y45.e(updateContent.getForce(), Boolean.FALSE)) && !z) {
            if (ww4Var.f() == null) {
                dhb.a.t(context, "tupdate_update_day", Calendar.getInstance().get(5));
            } else {
                vw4 vw4VarF = ww4Var.f();
                if (vw4VarF != null && vw4VarF.b()) {
                    z2 = true;
                }
                if (z2) {
                    dhb.a.t(context, "tupdate_update_day", Calendar.getInstance().get(5));
                }
            }
        }
        wa2.a.p(context, updateEntity, ww4Var, new b(updateEntity), ww4Var.e());
    }
}
