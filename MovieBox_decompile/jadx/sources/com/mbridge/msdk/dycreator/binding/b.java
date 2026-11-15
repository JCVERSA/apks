package com.mbridge.msdk.dycreator.binding;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBApkInfoView;
import com.mbridge.msdk.dycreator.baseview.MBFeedBack;
import com.mbridge.msdk.dycreator.baseview.MBLogoTextView;
import com.mbridge.msdk.dycreator.baseview.MBSplashClickView;
import com.mbridge.msdk.dycreator.baseview.MBSplashImageBgView;
import com.mbridge.msdk.dycreator.baseview.MBSplashPortView;
import com.mbridge.msdk.dycreator.baseview.MBSplashShakeView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewmodel.BaseViewModel;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.viewobserver.i;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;

public final class b {

    private static volatile b f33900g;

    private com.mbridge.msdk.dycreator.viewobserver.d f33901a = (com.mbridge.msdk.dycreator.viewobserver.d) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.VIEW_OBSERVER);

    private com.mbridge.msdk.dycreator.viewobserver.c f33902b = (com.mbridge.msdk.dycreator.viewobserver.c) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.CLICK_OBSERVER);

    private com.mbridge.msdk.dycreator.viewobserver.f f33903c = (com.mbridge.msdk.dycreator.viewobserver.f) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.EFFECT_OBSERVER);

    private h f33904d = (h) com.mbridge.msdk.dycreator.subjectfactory.a.a().a(com.mbridge.msdk.dycreator.subjectfactory.a.b.REPORT_OBSERVER);

    private BaseViewModel f33905e;

    private com.mbridge.msdk.shake.b f33906f;

    class a implements com.mbridge.msdk.dycreator.viewobserver.g {

        final View f33907a;

        a(View view) {
            this.f33907a = view;
        }

        @Override
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f33907a;
                if (callback instanceof InterBase) {
                    b.this.b((InterBase) callback, obj);
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    class C0451b implements com.mbridge.msdk.dycreator.viewobserver.e {

        final View f33909a;

        C0451b(View view) {
            this.f33909a = view;
        }

        @Override
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f33909a;
                if (callback instanceof InterBase) {
                    b.this.a((InterBase) callback, obj);
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    class c implements i {

        final View f33911a;

        c(View view) {
            this.f33911a = view;
        }

        @Override
        public void a(Object obj) {
            try {
                KeyEvent.Callback callback = this.f33911a;
                if (callback instanceof InterBase) {
                    b.this.c((InterBase) callback, obj);
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    class d implements com.mbridge.msdk.dycreator.viewobserver.b {

        final View f33913a;

        d(View view) {
            this.f33913a = view;
        }

        @Override
        public void a(Object obj) {
            if (obj == null) {
                return;
            }
            try {
                if (com.mbridge.msdk.dycreator.utils.d.a(this.f33913a, (com.mbridge.msdk.dycreator.viewdata.base.a) obj)) {
                    b.this.a(this.f33913a, obj);
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    class e implements DyCountDownListenerWrapper {

        final boolean f33915a;

        final String f33916b;

        final String f33917c;

        final View f33918d;

        e(boolean z10, String str, String str2, View view) {
            this.f33915a = z10;
            this.f33916b = str;
            this.f33917c = str2;
            this.f33918d = view;
        }

        @Override
        public void getCountDownValue(int i10) {
            if (i10 != 0) {
                ((TextView) this.f33918d).setText(com.mbridge.msdk.dycreator.utils.d.a(this.f33915a, i10, this.f33916b, this.f33917c));
            } else {
                SplashResData splashResData = new SplashResData();
                splashResData.seteAction(EAction.CLOSE);
                EventBus.getDefault().post(splashResData);
            }
        }
    }

    class f implements com.mbridge.msdk.foundation.same.image.c {

        final com.mbridge.msdk.dycreator.viewdata.base.a f33920a;

        final View f33921b;

        f(com.mbridge.msdk.dycreator.viewdata.base.a aVar, View view) {
            this.f33920a = aVar;
            this.f33921b = view;
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            View view = this.f33921b;
            if (view != null) {
                ((ImageView) view).setBackgroundColor(-7829368);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        boolean z10 = bitmap.getWidth() > bitmap.getHeight();
                        if ((this.f33920a.getEffectData().getOrientation() == 1 ? this.f33921b.getResources().getConfiguration().orientation : this.f33920a.getEffectData().getOrientation()) == 1) {
                            if (z10) {
                                View view = this.f33921b;
                                if (view instanceof MBSplashPortView) {
                                    if (view.getParent() != null) {
                                        ((ViewGroup) this.f33921b.getParent()).setVisibility(8);
                                        return;
                                    }
                                    return;
                                } else if (view instanceof MBSplashImageBgView) {
                                    view.setVisibility(0);
                                    Bitmap bitmapA = n0.a(bitmap);
                                    ((MBSplashImageBgView) this.f33921b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ((MBSplashImageBgView) this.f33921b).setImageBitmap(bitmapA);
                                    return;
                                }
                            } else {
                                View view2 = this.f33921b;
                                if (view2 instanceof MBSplashPortView) {
                                    view2.setVisibility(0);
                                    ((MBSplashPortView) this.f33921b).setScaleType(ImageView.ScaleType.FIT_CENTER);
                                    ((MBSplashPortView) this.f33921b).setImageBitmap(bitmap);
                                    return;
                                } else if (view2 instanceof MBSplashImageBgView) {
                                    view2.setVisibility(8);
                                    return;
                                } else if (view2 instanceof InterBase) {
                                    String effectDes = ((InterBase) view2).getEffectDes();
                                    ViewGroup viewGroup = (ViewGroup) this.f33921b.getParent();
                                    if (viewGroup != null) {
                                        com.mbridge.msdk.dycreator.utils.d.a(effectDes, viewGroup, true);
                                    }
                                }
                            }
                        } else if (z10) {
                            View view3 = this.f33921b;
                            if (view3 instanceof MBSplashPortView) {
                                view3.setVisibility(0);
                                ((MBSplashPortView) this.f33921b).setScaleType(ImageView.ScaleType.FIT_XY);
                                ((ImageView) this.f33921b).setImageBitmap(bitmap);
                                return;
                            } else if (view3 instanceof MBSplashImageBgView) {
                                view3.setVisibility(8);
                                ((MBSplashImageBgView) this.f33921b).setImageBitmap(n0.a(bitmap));
                                return;
                            } else if (view3 instanceof InterBase) {
                                String effectDes2 = ((InterBase) view3).getEffectDes();
                                ViewGroup viewGroup2 = (ViewGroup) this.f33921b.getParent();
                                if (viewGroup2 != null) {
                                    com.mbridge.msdk.dycreator.utils.d.a(effectDes2, viewGroup2, true);
                                }
                            }
                        } else {
                            View view4 = this.f33921b;
                            if (view4 instanceof MBSplashPortView) {
                                view4.setVisibility(0);
                                ((MBSplashPortView) this.f33921b).setImageBitmap(bitmap);
                                return;
                            } else {
                                if (view4 instanceof MBSplashImageBgView) {
                                    view4.setVisibility(0);
                                    Bitmap bitmapA2 = n0.a(bitmap);
                                    ((MBSplashImageBgView) this.f33921b).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ((MBSplashImageBgView) this.f33921b).setImageBitmap(bitmapA2);
                                    return;
                                }
                                if (view4 instanceof InterBase) {
                                    String effectDes3 = ((InterBase) view4).getEffectDes();
                                    ViewGroup viewGroup3 = (ViewGroup) this.f33921b.getParent();
                                    if (viewGroup3 != null) {
                                        com.mbridge.msdk.dycreator.utils.d.a(effectDes3, viewGroup3, true);
                                    }
                                }
                            }
                        }
                        ((ImageView) this.f33921b).setImageBitmap(bitmap);
                        return;
                    }
                } catch (Exception e10) {
                    o0.b("MBDataBinding", e10.getMessage());
                    return;
                }
            }
            ((ImageView) this.f33921b).setBackgroundColor(-7829368);
        }
    }

    class g extends com.mbridge.msdk.shake.b {

        final View f33923g;

        final MBSplashData f33924h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i10, int i11, View view, MBSplashData mBSplashData) {
            super(i10, i11);
            this.f33923g = view;
            this.f33924h = mBSplashData;
        }

        @Override
        public void a() {
            View view = this.f33923g;
            if (view != null) {
                try {
                    if (view.getGlobalVisibleRect(new Rect())) {
                        SplashResData splashResData = new SplashResData();
                        this.f33924h.setClickType(4);
                        splashResData.setBaseViewData(this.f33924h);
                        splashResData.seteAction(EAction.DOWNLOAD);
                        EventBus.getDefault().post(splashResData);
                        com.mbridge.msdk.shake.a.a().b(b.this.f33906f);
                    }
                } catch (Exception e10) {
                    o0.b("MBDataBinding", e10.getMessage());
                }
            }
        }
    }

    private b() {
    }

    public void d(View view) {
        a(new a(view), view.getId());
    }

    public void b(View view) {
        a(new c(view), view.getId());
    }

    public void c(View view) {
        a(new C0451b(view), view.getId());
    }

    public static b a() {
        if (f33900g == null) {
            synchronized (b.class) {
                try {
                    if (f33900g == null) {
                        f33900g = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f33900g;
    }

    public void b(InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String reportDes = interBase.getReportDes();
        if (TextUtils.isEmpty(reportDes)) {
            return;
        }
        try {
            if (!(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a) || ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData() == null) {
                return;
            }
            interBase.setDynamicReport(reportDes, ((com.mbridge.msdk.dycreator.viewdata.base.a) obj).getBindData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(InterBase interBase, Object obj) {
        if (interBase == 0 || obj == null) {
            return;
        }
        String bindDataDes = interBase.getBindDataDes();
        if (TextUtils.isEmpty(bindDataDes)) {
            return;
        }
        try {
            Object objA = com.mbridge.msdk.dycreator.utils.d.a(obj, bindDataDes);
            if (objA == null) {
                return;
            }
            if (interBase instanceof ViewGroup) {
                b((ViewGroup) interBase, objA, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, objA, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(i iVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f33901a;
        if (dVar != null) {
            dVar.a(iVar, i10);
        }
    }

    private void b(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (viewGroup != null) {
            if (viewGroup instanceof MBSplashClickView) {
                if (aVar == null || aVar.getEffectData() == null || !aVar.getEffectData().isClickButtonVisible() || aVar.getEffectData().isShakeVisible()) {
                    viewGroup.setVisibility(8);
                } else if (obj != null && !TextUtils.isEmpty(obj.toString())) {
                    viewGroup.setVisibility(0);
                    ((MBSplashClickView) viewGroup).initView(obj.toString());
                }
            }
            if (viewGroup instanceof MBSplashShakeView) {
                if (aVar != null && aVar.getEffectData() != null && aVar.getEffectData().isShakeVisible()) {
                    if (obj == null || TextUtils.isEmpty(obj.toString())) {
                        return;
                    }
                    viewGroup.setVisibility(0);
                    ((MBSplashShakeView) viewGroup).initView(obj.toString());
                    return;
                }
                viewGroup.setVisibility(8);
            }
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.b bVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f33902b;
        if (cVar != null) {
            cVar.a(bVar, i10);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.e eVar, int i10) {
        com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f33903c;
        if (fVar != null) {
            fVar.a(eVar, i10);
        }
    }

    private void a(com.mbridge.msdk.dycreator.viewobserver.g gVar, int i10) {
        h hVar = this.f33904d;
        if (hVar != null) {
            hVar.a(gVar, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view) {
        if (view != 0) {
            try {
                if (view instanceof InterBase) {
                    String actionDes = ((InterBase) view).getActionDes();
                    if (!TextUtils.isEmpty(actionDes)) {
                        if (actionDes.startsWith("click")) {
                            a(new d(view), view.getId());
                        } else if (!actionDes.equals("move") && !actionDes.equals("long_click")) {
                            actionDes.equals("wobble");
                        }
                    }
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
    }

    public synchronized void b() {
        try {
            com.mbridge.msdk.dycreator.viewobserver.c cVar = this.f33902b;
            if (cVar != null) {
                cVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.d dVar = this.f33901a;
            if (dVar != null) {
                dVar.a();
            }
            com.mbridge.msdk.dycreator.viewobserver.f fVar = this.f33903c;
            if (fVar != null) {
                fVar.a();
            }
            if (this.f33905e != null) {
                this.f33905e = null;
            }
            if (this.f33906f != null) {
                this.f33906f = null;
            }
            if (f33900g != null) {
                f33900g = null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(InterBase interBase, Object obj) {
        if (interBase == 0 || obj == null) {
            return;
        }
        String effectDes = interBase.getEffectDes();
        if (TextUtils.isEmpty(effectDes)) {
            return;
        }
        try {
            if (interBase instanceof ViewGroup) {
                a((ViewGroup) interBase, (Object) effectDes, (com.mbridge.msdk.dycreator.viewdata.base.a) obj);
            } else if (interBase instanceof View) {
                a((View) interBase, effectDes, obj);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(ViewGroup viewGroup, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        if (obj.equals("wobble") && (viewGroup instanceof MBSplashShakeView)) {
            if (aVar.getEffectData().isShakeVisible()) {
                if (this.f33906f != null) {
                    com.mbridge.msdk.shake.a.a().b(this.f33906f);
                }
                com.mbridge.msdk.shake.a.a().a(a((View) viewGroup, (MBSplashData) aVar));
            } else if (this.f33906f != null) {
                com.mbridge.msdk.shake.a.a().b(this.f33906f);
            }
        }
        if (obj.equals("visible") && (viewGroup instanceof MBApkInfoView)) {
            if (aVar.getEffectData().isApkInfoVisible()) {
                if ((aVar instanceof MBSplashData) && !TextUtils.isEmpty(((MBSplashData) aVar).getAppInfo())) {
                    viewGroup.setVisibility(0);
                } else {
                    viewGroup.setVisibility(4);
                }
            } else {
                viewGroup.setVisibility(8);
            }
        }
        obj.equals("anim");
    }

    private void a(View view, Object obj, Object obj2) {
        int countDownTime;
        boolean z10;
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        com.mbridge.msdk.dycreator.viewdata.base.a aVar = (com.mbridge.msdk.dycreator.viewdata.base.a) obj2;
        if (obj.equals("countdown") && view != null && (view instanceof TextView) && aVar != null) {
            TextView textView = (TextView) view;
            String str = (String) textView.getText();
            String strP = k0.p(view.getContext());
            DyOption effectData = aVar.getEffectData();
            if (effectData != null) {
                boolean zIsCanSkip = effectData.isCanSkip();
                countDownTime = effectData.getCountDownTime();
                z10 = zIsCanSkip;
            } else {
                countDownTime = 5;
                z10 = false;
            }
            textView.setText(com.mbridge.msdk.dycreator.utils.d.a(z10, countDownTime, str, strP));
            aVar.getEffectData().setDyCountDownListenerWrapper(new e(z10, str, strP, view));
        }
        obj.equals("anim");
        if (obj.equals("visible")) {
            if (view instanceof MBFeedBack) {
                if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
                    view.setVisibility(0);
                } else {
                    view.setVisibility(8);
                }
            }
            if (!(view instanceof MBLogoTextView) || aVar == null || aVar.getEffectData() == null || aVar.getEffectData().isLogoVisible()) {
                return;
            }
            ((MBLogoTextView) view).setCompoundDrawables(null, null, null, null);
        }
    }

    private void a(View view, Object obj, com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        if (view == null || obj == null) {
            return;
        }
        try {
            if (view instanceof TextView) {
                try {
                    ((TextView) view).setText(String.valueOf(obj).replace("\\n", "\n"));
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            if (view instanceof ImageView) {
                if (obj instanceof Integer) {
                    ((ImageView) view).setImageResource(((Integer) obj).intValue());
                }
                if (obj instanceof String) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(obj.toString(), new f(aVar, view));
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(View view, Object obj) {
        if (view == null || obj == null || !(obj instanceof com.mbridge.msdk.dycreator.viewdata.base.a)) {
            return;
        }
        view.setOnClickListener(new com.mbridge.msdk.dycreator.binding.a((com.mbridge.msdk.dycreator.viewdata.base.a) obj));
    }

    public void a(BaseViewModel baseViewModel) {
        this.f33905e = baseViewModel;
        if (baseViewModel != null) {
            baseViewModel.setClickSubject(this.f33902b);
            this.f33905e.setConcreteSubject(this.f33901a);
            this.f33905e.setEffectSubject(this.f33903c);
            this.f33905e.setReportSubject(this.f33904d);
        }
    }

    private com.mbridge.msdk.shake.b a(View view, MBSplashData mBSplashData) {
        if (mBSplashData != null) {
            try {
                DyOption dyOption = mBSplashData.getDyOption();
                if (dyOption != null && dyOption.isShakeVisible() && this.f33906f == null) {
                    this.f33906f = new g(dyOption.getShakeStrenght(), dyOption.getShakeTime() * 1000, view, mBSplashData);
                }
            } catch (Exception e10) {
                o0.b("MBDataBinding", e10.getMessage());
            }
        }
        return this.f33906f;
    }
}
