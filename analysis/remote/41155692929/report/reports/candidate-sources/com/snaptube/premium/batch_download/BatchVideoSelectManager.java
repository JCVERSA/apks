package com.snaptube.premium.batch_download;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.TranslateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.view.Lifecycle;
import androidx.view.OnLifecycleEvent;
import com.snaptube.extractor.pluginlib.models.Format;
import com.snaptube.extractor.pluginlib.youtube.YoutubeCodec;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.mixed_list.imageload.ImageLoaderWrapper;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.plugin.extension.nonlifecycle.ad.ChooseFormatAdRewardViewModel;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.whatsapp.WhatsAppStatusActivity;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import o.a20;
import o.a58;
import o.az7;
import o.b6;
import o.e90;
import o.f90;
import o.g90;
import o.h90;
import o.ha0;
import o.i90;
import o.if9;
import o.pn0;
import o.ri0;
import o.ru8;
import o.rw4;
import o.sh;
import o.ta3;
import o.va3;
import o.w24;
import o.wu7;
import o.x24;
import o.x59;
import o.zl1;

public class BatchVideoSelectManager implements w24 {
    public Dialog c;
    public ta3 d;
    public FABBatchDownload e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public String k;
    public String l;
    public String m;
    public String n;

    public String f413o;
    public wu7 r;
    public final List a = new ArrayList();
    public boolean j = false;
    public boolean p = false;
    public final View.OnClickListener q = new a();
    public Format b = new Format.Builder(YoutubeCodec.MP4_1080P).a();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.iv_batch_download_close) {
                BatchVideoSelectManager.this.T(null, null);
            } else {
                if (id != R.id.ll_batch_download) {
                    return;
                }
                BatchVideoSelectManager.n(BatchVideoSelectManager.this);
                BatchVideoSelectManager.r(BatchVideoSelectManager.this);
            }
        }
    }

    public class b implements DialogInterface.OnClickListener {
        public final DialogInterface.OnClickListener a;

        public b(DialogInterface.OnClickListener onClickListener) {
            this.a = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            DialogInterface.OnClickListener onClickListener = this.a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    public class c implements DialogInterface.OnClickListener {
        public final DialogInterface.OnClickListener a;

        public c(DialogInterface.OnClickListener onClickListener) {
            this.a = onClickListener;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            BatchVideoSelectManager.this.R();
            DialogInterface.OnClickListener onClickListener = this.a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    public class d implements DialogInterface.OnDismissListener {
        public d() {
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            BatchVideoSelectManager.h(BatchVideoSelectManager.this, null);
        }
    }

    public class e implements ViewTreeObserver.OnPreDrawListener {
        public final ru8 a;

        public e(ru8 ru8Var) {
            this.a = ru8Var;
        }

        @Override
        public boolean onPreDraw() {
            BatchVideoSelectManager.g(BatchVideoSelectManager.this).getViewTreeObserver().removeOnPreDrawListener(this);
            BatchVideoSelectManager.i(BatchVideoSelectManager.this, this.a);
            return true;
        }
    }

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public final ImageView a;

        public f(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Point point = (Point) valueAnimator.getAnimatedValue();
            this.a.setX(point.x);
            this.a.setY(point.y);
        }
    }

    public class g implements ValueAnimator.AnimatorUpdateListener {
        public final ImageView a;

        public g(ImageView imageView) {
            this.a = imageView;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            float f = 1.0f - animatedFraction;
            this.a.setScaleX(f);
            this.a.setScaleY(f);
            if (animatedFraction >= 0.9d) {
                BatchVideoSelectManager batchVideoSelectManager = BatchVideoSelectManager.this;
                BatchVideoSelectManager.o(batchVideoSelectManager, BatchVideoSelectManager.g(batchVideoSelectManager));
            }
        }
    }

    public class h extends AnimatorListenerAdapter {
        public final ImageView a;
        public final FrameLayout b;

        public h(ImageView imageView, FrameLayout frameLayout) {
            this.a = imageView;
            this.b = frameLayout;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.b.removeView(this.a);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.a.setPivotX(0.5f);
            this.a.setPivotY(0.5f);
        }
    }

    private void W() {
        Activity activityI = az7.i(this.e.getContext());
        if (activityI instanceof WhatsAppStatusActivity) {
            Y();
            return;
        }
        ArrayList arrayList = new ArrayList(this.a.size());
        Iterator it2 = this.a.iterator();
        while (it2.hasNext()) {
            arrayList.add(((com.snaptube.premium.batch_download.b) it2.next()).i());
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList2.add(ri0.G((Card) it3.next()));
        }
        new pn0.a().b(new pn0.b().b(arrayList, arrayList2.size()).e(d0()).a()).c(new pn0.c().m(this.k).h(true).o(this.f413o)).f(arrayList2, true, activityI);
    }

    public static int a(com.snaptube.premium.batch_download.b bVar, com.snaptube.premium.batch_download.b bVar2) {
        return m0(bVar, bVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FABBatchDownload a0(Activity activity) {
        FABBatchDownload fABBatchDownloadY1 = null;
        if (!az7.U(activity)) {
            return null;
        }
        for (Fragment fragment : ((FragmentActivity) activity).getSupportFragmentManager().getFragments()) {
            if (FragmentKt.d(fragment)) {
                if (fragment instanceof com.snaptube.premium.batch_download.a.InterfaceC0414a) {
                    fABBatchDownloadY1 = ((com.snaptube.premium.batch_download.a.InterfaceC0414a) fragment).getMDownloadView();
                }
                if (fABBatchDownloadY1 == null) {
                    for (b6 b6Var : fragment.getChildFragmentManager().getFragments()) {
                        if (b6Var instanceof com.snaptube.premium.batch_download.a.InterfaceC0414a) {
                            fABBatchDownloadY1 = ((com.snaptube.premium.batch_download.a.InterfaceC0414a) b6Var).getMDownloadView();
                            break;
                        }
                    }
                }
                if (fABBatchDownloadY1 != null) {
                    break;
                }
            }
        }
        return (fABBatchDownloadY1 == null && (activity instanceof com.snaptube.premium.batch_download.a.InterfaceC0414a)) ? ((com.snaptube.premium.batch_download.a.InterfaceC0414a) activity).getMDownloadView() : fABBatchDownloadY1;
    }

    public static Boolean c(BatchVideoSelectManager batchVideoSelectManager, RxBus.d dVar) {
        return batchVideoSelectManager.n0(dVar);
    }

    public static FABBatchDownload c0(Activity activity, com.snaptube.premium.batch_download.a aVar) {
        if (az7.U(activity)) {
            return aVar instanceof com.snaptube.premium.batch_download.a.InterfaceC0414a ? ((com.snaptube.premium.batch_download.a.InterfaceC0414a) aVar).getMDownloadView() : a0(activity);
        }
        return null;
    }

    public static void d(BatchVideoSelectManager batchVideoSelectManager, FABBatchDownload fABBatchDownload, boolean z) {
        batchVideoSelectManager.q0(fABBatchDownload, z);
    }

    public static void e(BatchVideoSelectManager batchVideoSelectManager, RxBus.d dVar) {
        batchVideoSelectManager.o0(dVar);
    }

    public static void f(BatchVideoSelectManager batchVideoSelectManager, FABBatchDownload fABBatchDownload, boolean z) {
        batchVideoSelectManager.p0(fABBatchDownload, z);
    }

    public static FABBatchDownload g(BatchVideoSelectManager batchVideoSelectManager) {
        return batchVideoSelectManager.e;
    }

    public static void h(BatchVideoSelectManager batchVideoSelectManager, Dialog dialog) {
        batchVideoSelectManager.c = dialog;
    }

    public static void i(BatchVideoSelectManager batchVideoSelectManager, ru8 ru8Var) {
        batchVideoSelectManager.V(ru8Var);
    }

    public static int m0(com.snaptube.premium.batch_download.b bVar, com.snaptube.premium.batch_download.b bVar2) {
        return bVar.l() - bVar2.l();
    }

    public static void n(BatchVideoSelectManager batchVideoSelectManager) {
        batchVideoSelectManager.W();
    }

    public static void o(BatchVideoSelectManager batchVideoSelectManager, View view) {
        batchVideoSelectManager.D0(view);
    }

    public static void r(BatchVideoSelectManager batchVideoSelectManager) {
        batchVideoSelectManager.E0();
    }

    public void A0(String str, String str2) {
        this.m = str;
        this.l = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void B(Activity activity, com.snaptube.premium.batch_download.a aVar) {
        if (!az7.U(activity)) {
            this.p = false;
            return;
        }
        this.p = true;
        if (activity instanceof x24) {
            ((x24) activity).getLifecycle().a(this);
        }
        k0(activity, aVar);
        if (aVar != null) {
            F0(activity, aVar);
            return;
        }
        if (activity instanceof va3) {
            ((va3) activity).h(null);
        }
        x0(this.e, false);
    }

    public void B0(String str) {
        this.k = str;
    }

    public void C0(String str, String str2) {
        this.n = str;
        this.f413o = str2;
    }

    public final void D0(View view) {
        if (view.getAnimation() != null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, zl1.b(view.getContext(), 10));
        translateAnimation.setDuration(100L);
        translateAnimation.setRepeatCount(1);
        translateAnimation.setRepeatMode(2);
        translateAnimation.setFillAfter(false);
        view.startAnimation(translateAnimation);
    }

    public final void E0() {
        new ReportPropertyBuilder().setEventName("Click").setAction("fab_batch_download_btn").setProperty("batch_download_count", Integer.valueOf(f0())).setProperty("position_source", e0()).reportEvent();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void F0(Activity activity, com.snaptube.premium.batch_download.a aVar) {
        if (activity == 0) {
            return;
        }
        k0(activity, aVar);
        if (this.e == null) {
            return;
        }
        if (this.d == null) {
            this.d = new a20(activity, this);
        }
        if (activity instanceof va3) {
            ((va3) activity).h(this.d);
        }
        G0(f0());
    }

    public final void G0(int i) {
        if (this.e == null) {
            return;
        }
        if (i > 0) {
            v0();
            x0(this.e, true);
            if (!this.j) {
                this.j = true;
                ChooseFormatAdRewardViewModel.INSTANCE.d();
            }
            this.e.h(String.format(this.e.getResources().getString(R.string.batch_download_count), Integer.valueOf(i)));
        } else {
            w0();
        }
        this.e.g(i);
    }

    public void M() {
        R();
    }

    public void R() {
        this.a.clear();
        r0();
    }

    public void T(DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        Dialog dialog = this.c;
        if (dialog == null || !dialog.isShowing()) {
            com.wandoujia.base.view.c cVarA = new com.wandoujia.base.view.c.e(this.e.getContext()).m(R.string.close_batch_download_title).f(R.string.close_batch_download).k(R.string.quit_setting, new c(onClickListener)).h(R.string.stay, new b(onClickListener2)).a();
            this.c = cVarA;
            cVarA.setOnDismissListener(new d());
            this.c.show();
        }
    }

    public boolean U(Card card) {
        return h0(card) != null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00c8  */
    public final void V(ru8 ru8Var) {
        FrameLayout frameLayout;
        ActionBar supportActionBar;
        int height;
        int iG;
        int i;
        Activity activityJ = az7.j(this.e);
        if (activityJ == null || activityJ.isFinishing()) {
            return;
        }
        try {
            if (activityJ instanceof ExploreActivity) {
                frameLayout = (FrameLayout) activityJ.findViewById(R.id.fl_container);
                frameLayout.setVisibility(0);
            } else {
                frameLayout = (FrameLayout) activityJ.findViewById(android.R.id.content);
            }
            if (frameLayout == null) {
                return;
            }
            int[] iArr = new int[2];
            this.e.getLocationOnScreen(iArr);
            ImageView imageView = new ImageView(activityJ);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.width = ru8Var.e();
            layoutParams.height = ru8Var.c();
            layoutParams.gravity = 3;
            imageView.setLayoutParams(layoutParams);
            frameLayout.addView(imageView);
            if (ru8Var.d() != 0) {
                if (ru8Var.d() == 1) {
                    imageView.setImageBitmap(ru8Var.a());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    if ((activityJ instanceof WhatsAppStatusActivity) && (supportActionBar = ((WhatsAppStatusActivity) activityJ).getSupportActionBar()) != null) {
                        height = supportActionBar.getHeight();
                    }
                }
                int[] iArr2 = new int[2];
                frameLayout.getLocationOnScreen(iArr2);
                int i2 = iArr2[1];
                int iF = ru8Var.f();
                iG = (ru8Var.g() - i2) - height;
                int width = iArr[0] + (this.e.getWidth() / 2);
                i = (iArr[1] - i2) - height;
                Point point = new Point(iF, iG);
                Point point2 = new Point(width, i);
                if (iG > i) {
                    iG = i - zl1.b(activityJ, 100);
                }
                ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new ha0(new Point(width, iG)), point, point2);
                valueAnimatorOfObject.addUpdateListener(new f(imageView));
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.1f);
                valueAnimatorOfFloat.addUpdateListener(new g(imageView));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(valueAnimatorOfObject, valueAnimatorOfFloat);
                animatorSet.addListener(new h(imageView, frameLayout));
                animatorSet.setDuration(300L);
                animatorSet.start();
            }
            ImageLoaderWrapper.c().b(activityJ).o(ru8Var.b()).a(true).g(imageView);
            height = 0;
            int[] iArr3 = new int[2];
            frameLayout.getLocationOnScreen(iArr3);
            int i3 = iArr3[1];
            int iF2 = ru8Var.f();
            iG = (ru8Var.g() - i3) - height;
            int width2 = iArr[0] + (this.e.getWidth() / 2);
            i = (iArr[1] - i3) - height;
            Point point3 = new Point(iF2, iG);
            Point point4 = new Point(width2, i);
            if (iG > i) {
                iG = i - zl1.b(activityJ, 100);
            }
            ValueAnimator valueAnimatorOfObject2 = ValueAnimator.ofObject(new ha0(new Point(width2, iG)), point3, point4);
            valueAnimatorOfObject2.addUpdateListener(new f(imageView));
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 0.1f);
            valueAnimatorOfFloat2.addUpdateListener(new g(imageView));
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(valueAnimatorOfObject2, valueAnimatorOfFloat2);
            animatorSet2.addListener(new h(imageView, frameLayout));
            animatorSet2.setDuration(300L);
            animatorSet2.start();
        } catch (Exception e2) {
            ProductionEnv.throwExceptForDebugging(e2);
        }
    }

    public void Y() {
        Iterator it2 = this.a.iterator();
        while (it2.hasNext()) {
            x59.a(PhoenixApplication.z(), ((com.snaptube.premium.batch_download.b) it2.next()).i(), false, "wa_settings");
        }
        M();
        new ReportPropertyBuilder().setEventName("Click").setAction("whatsapp_page").setProperty("extra_info", "download whatsapp media from batch").setProperty("card_id", 3002).reportEvent();
    }

    public final String d0() {
        ArrayList arrayList = new ArrayList(this.a);
        Collections.sort(arrayList, new i90());
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((com.snaptube.premium.batch_download.b) arrayList.get(arrayList.size() - 1)).p();
    }

    public String e0() {
        return this.k;
    }

    public int f0() {
        return this.a.size();
    }

    public final String g0(String str) {
        return if9.D(str) ? if9.m(str) : str;
    }

    public final com.snaptube.premium.batch_download.b h0(Card card) {
        if (this.a.isEmpty()) {
            return null;
        }
        String strG = ri0.G(card);
        String strG0 = g0(strG);
        if (TextUtils.isEmpty(strG0)) {
            strG0 = g0(strG);
        }
        if (TextUtils.isEmpty(strG0)) {
            return null;
        }
        for (com.snaptube.premium.batch_download.b bVar : this.a) {
            if (TextUtils.equals(strG0, g0(ri0.G(bVar.i())))) {
                return bVar;
            }
        }
        return null;
    }

    public List i0() {
        return this.a;
    }

    public final com.snaptube.premium.batch_download.b j0(List list, Card card) {
        String strL = x59.l(card);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            com.snaptube.premium.batch_download.b bVar = (com.snaptube.premium.batch_download.b) it2.next();
            if (TextUtils.equals(strL, x59.l(bVar.i()))) {
                return bVar;
            }
        }
        return null;
    }

    public final void k0(Activity activity, com.snaptube.premium.batch_download.a aVar) {
        if (this.e != null || activity == null) {
            return;
        }
        this.e = c0(activity, aVar);
    }

    public boolean l0(Card card) {
        return j0(this.a, card) != null;
    }

    public final Boolean n0(RxBus.d dVar) {
        return Boolean.valueOf(this.p);
    }

    public final void o0(RxBus.d dVar) {
        R();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_CREATE)
    public void onCreate() {
        this.r = RxBus.d().c(1114).E(new g90(this)).Y(sh.c()).t0(new h90(this));
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        wu7 wu7Var = this.r;
        if (wu7Var == null || wu7Var.isUnsubscribed()) {
            return;
        }
        this.r.unsubscribe();
    }

    public final void p0(FABBatchDownload fABBatchDownload, boolean z) {
        y0(fABBatchDownload, z);
    }

    public final void q0(FABBatchDownload fABBatchDownload, boolean z) {
        y0(fABBatchDownload, z);
    }

    public final void r0() {
        s0(null);
    }

    public boolean s(Card card, ru8 ru8Var, rw4 rw4Var) {
        String strG = ri0.G(card);
        String strD = ri0.D(card);
        if (TextUtils.isEmpty(strG) || TextUtils.isEmpty(strD) || h0(card) != null) {
            return false;
        }
        com.snaptube.premium.batch_download.b.a aVarG = com.snaptube.premium.batch_download.b.q().f(card).g(this.b);
        if (rw4Var != null) {
            aVarG.h(rw4Var.getLayoutPosition());
            aVarG.i(rw4Var.Y());
        }
        this.a.add(aVarG.e());
        if (ru8Var == null) {
            return true;
        }
        s0(ru8Var);
        return true;
    }

    public final void s0(ru8 ru8Var) {
        RxBus.d().g(1058, ru8Var);
        G0(f0());
        if (ru8Var != null) {
            t(ru8Var);
        }
    }

    public final void t(ru8 ru8Var) {
        FABBatchDownload fABBatchDownload = this.e;
        if (fABBatchDownload == null) {
            return;
        }
        if (fABBatchDownload.getWidth() != 0) {
            V(ru8Var);
        } else {
            this.e.getViewTreeObserver().addOnPreDrawListener(new e(ru8Var));
            this.e.setVisibility(0);
        }
    }

    public void t0(Card card) {
        u0(card, true);
    }

    public void u0(Card card, boolean z) {
        if (card == null) {
            return;
        }
        String strG0 = g0(ri0.G(card));
        if (TextUtils.isEmpty(strG0)) {
            return;
        }
        Iterator it2 = this.a.iterator();
        while (it2.hasNext()) {
            if (TextUtils.equals(strG0, g0(ri0.G(((com.snaptube.premium.batch_download.b) it2.next()).i())))) {
                it2.remove();
                if (z) {
                    r0();
                    return;
                }
                return;
            }
        }
    }

    public void v0() {
        if (f0() <= 0) {
            return;
        }
        if (this.f && !this.h) {
            ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
            reportPropertyBuilder.setEventName("Click").setProperty("action", "click_add_to_download_list").setProperty("position_source", this.k);
            reportPropertyBuilder.reportEvent();
            this.h = true;
        }
        if (!this.g || this.i) {
            return;
        }
        ReportPropertyBuilder reportPropertyBuilder2 = new ReportPropertyBuilder();
        reportPropertyBuilder2.setEventName("Click").setProperty("action", "press_add_to_download_list").setProperty("position_source", this.k);
        reportPropertyBuilder2.reportEvent();
        this.i = true;
    }

    public final void w0() {
        this.f = false;
        this.h = false;
        this.g = false;
        this.i = false;
        this.j = false;
    }

    public final void x0(FABBatchDownload fABBatchDownload, boolean z) {
        if (fABBatchDownload == null) {
            return;
        }
        if (fABBatchDownload.getVisibility() == 0 && !z) {
            a58.c(new e90(this, fABBatchDownload, z));
        } else {
            if (fABBatchDownload.getVisibility() == 0 || !z) {
                return;
            }
            a58.c(new f90(this, fABBatchDownload, z));
        }
    }

    public final void y0(FABBatchDownload fABBatchDownload, boolean z) {
        fABBatchDownload.setVisibility(z ? 0 : 8);
        fABBatchDownload.clearAnimation();
    }

    public void z0(FABBatchDownload fABBatchDownload) {
        this.e = fABBatchDownload;
    }
}
