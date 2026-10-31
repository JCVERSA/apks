package com.snaptube.premium.whatsapp;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.phoenix.download.DownloadInfo;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.BaseSwipeBackActivity;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.dialog.coordinator.PopCoordinator;
import com.snaptube.premium.dialog.coordinator.element.CopyLinkPopElement;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import dagger.Lazy;
import java.util.ArrayList;
import javax.inject.Inject;
import o.ej3;
import o.h59;
import o.j59;
import o.je3;
import o.k59;
import o.l3;
import o.l59;
import o.m59;
import o.me7;
import o.pq5;
import o.r6;
import o.sq5;
import o.vq6;
import o.x59;

public class WhatsAppStatusActivity extends BaseSwipeBackActivity implements je3, com.snaptube.premium.batch_download.a.InterfaceC0414a {
    public static String k = "home_page_add_click";
    public static String l = "wa_guide_dialog";
    public static String m = "tool_center";
    public static String n = "setting";

    public static String f474o = "from";
    public WhatsAppStatusFragment h;
    public ArrayList i;

    @Inject
    Lazy<ej3> j;

    public class a implements l3 {
        public a() {
        }

        public void a(RxBus.d dVar) {
            WhatsAppStatusActivity.N0(WhatsAppStatusActivity.this, (ArrayList) dVar.d);
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            WhatsAppStatusActivity.this.finish();
        }
    }

    public class c extends me7 {
        public c() {
        }

        @Override
        public void d() {
            WhatsAppStatusActivity.P0(WhatsAppStatusActivity.this);
        }
    }

    public static void F0(WhatsAppStatusActivity whatsAppStatusActivity, DialogInterface dialogInterface, int i) {
        whatsAppStatusActivity.V0(dialogInterface, i);
    }

    public static void H0(Throwable th) {
        S0(th);
    }

    public static void I0(WhatsAppStatusActivity whatsAppStatusActivity, DialogInterface dialogInterface) {
        whatsAppStatusActivity.Z0(dialogInterface);
    }

    public static void J0(WhatsAppStatusActivity whatsAppStatusActivity, DialogInterface dialogInterface, int i) {
        whatsAppStatusActivity.Y0(dialogInterface, i);
    }

    public static void N0(WhatsAppStatusActivity whatsAppStatusActivity, ArrayList arrayList) {
        whatsAppStatusActivity.i = arrayList;
    }

    public static void P0(WhatsAppStatusActivity whatsAppStatusActivity) {
        whatsAppStatusActivity.b1();
    }

    public static void S0(Throwable th) {
        ProductionEnv.throwExceptForDebugging(th);
    }

    private void b1() {
        if (sq5.g()) {
            R0();
        } else {
            e1();
        }
    }

    public static void g1(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) WhatsAppStatusActivity.class);
        intent.putExtra(IntentUtil.POS, str);
        context.startActivity(intent);
    }

    public final void Q0() {
        PopCoordinator.i0(this).d().b(new CopyLinkPopElement(this, this.j)).complete();
    }

    public void R0() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentFindFragmentByTag = supportFragmentManager.findFragmentByTag(WhatsAppStatusFragment.class.getSimpleName());
        if (fragmentFindFragmentByTag instanceof WhatsAppStatusFragment) {
            this.h = (WhatsAppStatusFragment) fragmentFindFragmentByTag;
            return;
        }
        this.h = new WhatsAppStatusFragment();
        Bundle bundle = new Bundle();
        if (intent != null && intent.getExtras() != null) {
            bundle.putAll(intent.getExtras());
        }
        this.h.setArguments(bundle);
        this.h.g5(true);
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.container, this.h, WhatsAppStatusFragment.class.getSimpleName());
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    public final void V0(DialogInterface dialogInterface, int i) {
        h59.k();
        d1();
    }

    public final void Y0(DialogInterface dialogInterface, int i) {
        e1();
    }

    public final void Z0(DialogInterface dialogInterface) {
        e1();
    }

    public void c1() {
        if (sq5.g()) {
            R0();
            return;
        }
        if (!Config.P4()) {
            e1();
            return;
        }
        com.wandoujia.base.view.c.e eVar = new com.wandoujia.base.view.c.e(this);
        eVar.f(R.string.request_storage_permission_tips).c(true).l(getResources().getString(R.string.allow), new k59(this)).h(R.string.cancel, new l59(this));
        com.wandoujia.base.view.c cVarA = eVar.a();
        cVarA.setOnCancelListener(new m59(this));
        cVarA.setCanceledOnTouchOutside(false);
        cVarA.show();
        h59.l();
        Config.C6(false);
    }

    public final void d1() {
        pq5.a().e(this, new com.snaptube.permission.a.C0392a().h(sq5.e()).i(new c()).j("wa_status").e(1).c(true).f(R.string.allow_files_access_to_view_and_download_status).a());
    }

    public final void e1() {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.container, new WhatsAppNoPermissionFragment(), WhatsAppStatusFragment.class.getSimpleName());
        fragmentTransactionBeginTransaction.commitAllowingStateLoss();
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        String strName;
        if (intent != null) {
            if ("play".equals(intent.getAction())) {
                if (this.h == null || !Config.h2()) {
                    if (x59.k(card) == 2) {
                        strName = DownloadInfo.ContentType.VIDEO.name();
                    } else {
                        strName = x59.k(card) == 1 ? DownloadInfo.ContentType.IMAGE.name() : "";
                    }
                    if (!TextUtils.isEmpty(strName)) {
                        r6.m(x59.l(card), x59.j(card), strName);
                    }
                } else {
                    NavigationManager.Z(context, (ArrayList) this.h.o3().A(), "wa_settings", intent.getIntExtra("key_position", 0));
                }
                return true;
            }
            if (NativeAdPresenter.DOWNLOAD.equals(intent.getAction())) {
                x59.a(this, card, false, "wa_settings");
                new ReportPropertyBuilder().setEventName("Click").setAction("whatsapp_page").setProperty("extra_info", "download whatsapp media from list").setProperty("card_id", 3002).reportEvent();
                return true;
            }
        }
        return false;
    }

    @Override
    public void onBackPressed() {
        ArrayList arrayList = this.i;
        if (arrayList == null || arrayList.isEmpty()) {
            super.onBackPressed();
            return;
        }
        View decorView = getWindow().getDecorView();
        int iIntValue = ((Integer) this.i.get(0)).intValue();
        int iIntValue2 = ((Integer) this.i.get(1)).intValue();
        int iIntValue3 = ((Integer) this.i.get(2)).intValue();
        int iIntValue4 = ((Integer) this.i.get(3)).intValue();
        float measuredWidth = (iIntValue3 / decorView.getMeasuredWidth()) / 2.0f;
        float measuredHeight = (iIntValue4 / decorView.getMeasuredHeight()) / 2.0f;
        float measuredWidth2 = (iIntValue + (iIntValue3 / 2)) - (decorView.getMeasuredWidth() / 2);
        float measuredHeight2 = (iIntValue2 + (iIntValue4 / 2)) - (decorView.getMeasuredHeight() / 2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(decorView, "scaleY", 1.0f, measuredWidth);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(decorView, "scaleX", 1.0f, measuredHeight);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(decorView, "translationX", 0.0f, measuredWidth2);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(decorView, "translationY", 0.0f, measuredHeight2);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(decorView, "alpha", 1.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(300L);
        animatorSet.addListener(new b());
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, objectAnimatorOfFloat5);
        animatorSet.start();
        Config.E6(false);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_whatsapp_status);
        c1();
        Q0();
        h59.a(getIntent());
        B0(RxBus.d().c(1203).g(RxBus.f).u0(new a(), new j59()));
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onStart() {
        super.onStart();
        vq6.K().h("/whatsapp", new ReportPropertyBuilder().setProperty(f474o, h59.a));
    }

    @Override
    public FABBatchDownload getMDownloadView() {
        return (FABBatchDownload) findViewById(R.id.fab_batch_download);
    }
}
