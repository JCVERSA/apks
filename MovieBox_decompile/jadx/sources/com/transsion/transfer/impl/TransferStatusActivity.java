package com.transsion.transfer.impl;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.v0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.view.GradientLinePagerIndicator;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.transfer.R$id;
import com.transsion.transfer.R$mipmap;
import com.transsion.transfer.R$string;
import com.transsion.transfer.impl.client.TransferClient;
import com.transsion.transfer.impl.view.TabTitleView;
import com.transsion.transfer.wifi.connect.WifiConnectionManager;
import com.transsion.transfer.wifi.create.WifiCreateManager;
import com.transsion.transfer.wifi.ui.TransferDisconnectTipsDialog;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005*\u00014\u0018\u0000 K2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u001f\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0019\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0006\u0010\u0018R\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010.\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010+R\u001d\u00103\u001a\u0004\u0018\u00010&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b6\u00107R\u001b\u0010=\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u00100\u001a\u0004\b;\u0010<R\u001b\u0010B\u001a\u00020>8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00100\u001a\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020C0G8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bH\u0010I¨\u0006L"}, d2 = {"Lcom/transsion/transfer/impl/TransferStatusActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxt/b;", "<init>", "()V", "", "initView", "n1", "j1", "K0", "initData", "X0", "T0", "", "connected", "", "deviceName", "M0", "(ZLjava/lang/String;)V", "p1", "S0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "isTranslucent", "()Z", "isStatusDark", "R0", "()Lxt/b;", "Lcom/transsion/transfer/impl/TransferReceivedFragment;", "a", "Lcom/transsion/transfer/impl/TransferReceivedFragment;", "receivedFragment", "Lcom/transsion/transfer/impl/TransferSentFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/transfer/impl/TransferSentFragment;", "sentFragment", "Lyt/a;", "c", "Lyt/a;", "selectFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isSelectFragmentShown", "e", "needServerAsClientFetchList", "f", "Lkotlin/Lazy;", "Q0", "()Lyt/a;", "transferSelectFragment", "com/transsion/transfer/impl/TransferStatusActivity$g", "g", "O0", "()Lcom/transsion/transfer/impl/TransferStatusActivity$g;", "serverFileHandler", "Lcom/transsion/transfer/impl/k;", "h", "P0", "()Lcom/transsion/transfer/impl/k;", "serverViewModel", "Lcom/transsion/transfer/impl/ClientViewModel;", "i", "N0", "()Lcom/transsion/transfer/impl/ClientViewModel;", "clientViewModel", "", "j", "I", "selectTabIndex", "", CampaignEx.JSON_KEY_AD_K, "[Ljava/lang/Integer;", "tabs", "l", "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferStatusActivity extends BaseActivity<xt.b> {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f53563m;

    private static boolean f53564n;

    private TransferReceivedFragment receivedFragment;

    private TransferSentFragment sentFragment;

    private yt.a selectFragment;

    private boolean isSelectFragmentShown;

    private boolean needServerAsClientFetchList;

    private int selectTabIndex;

    private final Lazy transferSelectFragment = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TransferStatusActivity.q1();
        }
    });

    private final Lazy serverFileHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TransferStatusActivity.l1(this.f53700a);
        }
    });

    private final Lazy serverViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TransferStatusActivity.m1(this.f53702a);
        }
    });

    private final Lazy clientViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TransferStatusActivity.L0(this.f53704a);
        }
    });

    private final Integer[] tabs = {Integer.valueOf(R$string.transfer_tab_received), Integer.valueOf(R$string.transfer_tab_sent)};

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return TransferStatusActivity.f53563m;
        }

        public final void b(Context context) {
            Intrinsics.h(context, "context");
            TransferStatusActivity.f53564n = false;
            context.startActivity(new Intent(context, (Class<?>) TransferStatusActivity.class));
        }

        public final void c(Context context) {
            Intrinsics.h(context, "context");
            Intent intent = new Intent(context, (Class<?>) TransferStatusActivity.class);
            TransferStatusActivity.f53564n = true;
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
            ((xt.b) TransferStatusActivity.this.getMViewBinding()).f75432f.onPageScrollStateChanged(i10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            ((xt.b) TransferStatusActivity.this.getMViewBinding()).f75432f.onPageScrolled(i10, f10, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            ((xt.b) TransferStatusActivity.this.getMViewBinding()).f75432f.onPageSelected(i10);
            TransferStatusActivity.this.selectTabIndex = i10;
            if (i10 == 0) {
                TransferReceivedFragment transferReceivedFragment = TransferStatusActivity.this.receivedFragment;
                if (transferReceivedFragment != null) {
                    transferReceivedFragment.u0();
                    return;
                }
                return;
            }
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }
    }

    public static final class c extends xy.a {

        public static final class a extends com.transsion.baseui.util.f {

            final TransferStatusActivity f53578e;

            final int f53579f;

            a(TransferStatusActivity transferStatusActivity, int i10) {
                this.f53578e = transferStatusActivity;
                this.f53579f = i10;
            }

            @Override
            public void c(View view) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void d(View view) {
                ((xt.b) this.f53578e.getMViewBinding()).f75439m.setCurrentItem(this.f53579f, true);
            }
        }

        c() {
        }

        @Override
        public int a() {
            return TransferStatusActivity.this.tabs.length;
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            GradientLinePagerIndicator gradientLinePagerIndicator = new GradientLinePagerIndicator(context);
            gradientLinePagerIndicator.setMode(2);
            gradientLinePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            gradientLinePagerIndicator.setLineWidth(com.blankj.utilcode.util.i.e(24.0f));
            gradientLinePagerIndicator.setRoundRadius(com.blankj.utilcode.util.i.e(2.0f));
            gradientLinePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            gradientLinePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            gradientLinePagerIndicator.setColors(androidx.core.content.b.getColor(context, R$color.main_gradient_start), androidx.core.content.b.getColor(context, R$color.main_gradient_center), androidx.core.content.b.getColor(context, R$color.main_gradient_end));
            return gradientLinePagerIndicator;
        }

        @Override
        public xy.d c(Context context, int i10) {
            Intrinsics.h(context, "context");
            TabTitleView tabTitleView = new TabTitleView(context);
            TransferStatusActivity transferStatusActivity = TransferStatusActivity.this;
            tabTitleView.setTextById(transferStatusActivity.tabs[i10].intValue());
            tabTitleView.setOnClickListener(new a(transferStatusActivity, i10));
            return tabTitleView;
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(TransferStatusActivity.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            if (i10 == 0) {
                TransferReceivedFragment transferReceivedFragmentA = TransferReceivedFragment.INSTANCE.a();
                TransferStatusActivity.this.receivedFragment = transferReceivedFragmentA;
                return transferReceivedFragmentA;
            }
            if (i10 != 1) {
                TransferSentFragment transferSentFragmentA = TransferSentFragment.INSTANCE.a();
                TransferStatusActivity.this.sentFragment = transferSentFragmentA;
                return transferSentFragmentA;
            }
            TransferSentFragment transferSentFragmentA2 = TransferSentFragment.INSTANCE.a();
            TransferStatusActivity.this.sentFragment = transferSentFragmentA2;
            return transferSentFragmentA2;
        }

        @Override
        public int getItemCount() {
            return TransferStatusActivity.this.tabs.length;
        }
    }

    public static final class e extends androidx.activity.u {
        e() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            if (TransferStatusActivity.this.isSelectFragmentShown) {
                TransferStatusActivity.this.S0();
            } else if (TransferStatusActivity.this.P0().j() || TransferStatusActivity.this.N0().x()) {
                TransferStatusActivity.this.n1();
            } else {
                TransferStatusActivity.this.j1();
                TransferStatusActivity.this.finish();
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f53582a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f53582a = function;
        }

        @Override
        public final Function a() {
            return this.f53582a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f53582a.invoke(obj);
        }
    }

    public static final class g implements com.transsion.transfer.impl.g {
        g() {
        }

        public static final void d(TransferStatusActivity transferStatusActivity, String str) {
            TransferStatusActivity.INSTANCE.a();
            transferStatusActivity.M0(true, str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(String clientIp, final String clientDeviceName) {
            Intrinsics.h(clientIp, "clientIp");
            Intrinsics.h(clientDeviceName, "clientDeviceName");
            ConstraintLayout root = ((xt.b) TransferStatusActivity.this.getMViewBinding()).getRoot();
            final TransferStatusActivity transferStatusActivity = TransferStatusActivity.this;
            root.post(new Runnable() {
                @Override
                public final void run() {
                    TransferStatusActivity.g.d(transferStatusActivity, clientDeviceName);
                }
            });
        }

        @Override
        public String b() {
            String MODEL = Build.MODEL;
            Intrinsics.g(MODEL, "MODEL");
            return MODEL;
        }
    }

    public static final class h implements yt.b {
        h() {
        }

        @Override
        public void a() {
            TransferStatusActivity.this.S0();
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void b() {
            TransferStatusActivity.this.S0();
            TransferStatusActivity.this.P0().z(1);
            ((xt.b) TransferStatusActivity.this.getMViewBinding()).f75439m.setCurrentItem(1, true);
            TransferSentFragment transferSentFragment = TransferStatusActivity.this.sentFragment;
            if (transferSentFragment != null) {
                transferSentFragment.p0();
            }
        }

        @Override
        public void c() {
            TransferStatusActivity.this.n1();
        }
    }

    static {
        String name = TransferStatusActivity.class.getName();
        Intrinsics.g(name, "getName(...)");
        f53563m = name;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void K0() {
        CommonNavigator commonNavigator = new CommonNavigator(this);
        commonNavigator.setFollowTouch(true);
        commonNavigator.setAdapter(new c());
        ((xt.b) getMViewBinding()).f75432f.setNavigator(commonNavigator);
        ((xt.b) getMViewBinding()).f75439m.registerOnPageChangeCallback(new b());
        ((xt.b) getMViewBinding()).f75439m.setCurrentItem(this.selectTabIndex, false);
    }

    public static final ClientViewModel L0(TransferStatusActivity transferStatusActivity) {
        return (ClientViewModel) new v0(transferStatusActivity).a(ClientViewModel.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void M0(boolean connected, String deviceName) {
        if (connected) {
            yt.a aVar = this.selectFragment;
            if (aVar != null) {
                aVar.M();
            }
            ((xt.b) getMViewBinding()).f75437k.setImageResource(R$mipmap.transfer_ic_link);
            ((xt.b) getMViewBinding()).f75435i.setText(getString(R$string.transfer_disconnect));
            ((xt.b) getMViewBinding()).f75436j.setText(getString(R$string.transfer_state_connect_tips, ((xt.b) getMViewBinding()).f75436j.getTag() == null ? deviceName : ((xt.b) getMViewBinding()).f75436j.getTag().toString()));
            if (deviceName.length() > 0) {
                ((xt.b) getMViewBinding()).f75436j.setTag(deviceName);
                return;
            }
            return;
        }
        yt.a aVar2 = this.selectFragment;
        if (aVar2 != null) {
            aVar2.c();
        }
        ((xt.b) getMViewBinding()).f75437k.setImageResource(R$mipmap.transfer_ic_unlink);
        ((xt.b) getMViewBinding()).f75435i.setText("");
        ((xt.b) getMViewBinding()).f75436j.setText(getString(R$string.transfer_state_disconnect_tips, ((xt.b) getMViewBinding()).f75436j.getTag() == null ? deviceName : ((xt.b) getMViewBinding()).f75436j.getTag().toString()));
        if (deviceName.length() > 0) {
            ((xt.b) getMViewBinding()).f75436j.setTag(deviceName);
        }
    }

    public final ClientViewModel N0() {
        return (ClientViewModel) this.clientViewModel.getValue();
    }

    private final g O0() {
        return (g) this.serverFileHandler.getValue();
    }

    public final k P0() {
        return (k) this.serverViewModel.getValue();
    }

    public final void S0() {
        Object obj = this.selectFragment;
        if (obj != null) {
            this.isSelectFragmentShown = false;
            getSupportFragmentManager().p().p((Fragment) obj).l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T0() {
        if (!N0().x() || N0().p() == null) {
            if (!f53564n) {
                String strP = N0().p();
                M0(false, strP != null ? strP : "");
            }
            N0().q().j(this, new f(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TransferStatusActivity.U0(this.f53708a, (String) obj);
                }
            }));
        } else {
            ((xt.b) getMViewBinding()).f75436j.setText(N0().p());
            yt.a aVar = this.selectFragment;
            if (aVar != null) {
                String strP2 = N0().p();
                if (strP2 == null) {
                    strP2 = "";
                }
                aVar.D(strP2);
            }
            String strP3 = N0().p();
            M0(true, strP3 != null ? strP3 : "");
        }
        N0().o().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.V0(this.f53710a, (Boolean) obj);
            }
        }));
        N0().n().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.W0(this.f53585a, (Integer) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit U0(TransferStatusActivity transferStatusActivity, String str) {
        if (str == null) {
            return Unit.f64096a;
        }
        ((xt.b) transferStatusActivity.getMViewBinding()).f75436j.setText(str);
        yt.a aVar = transferStatusActivity.selectFragment;
        if (aVar != null) {
            String strP = transferStatusActivity.N0().p();
            if (strP == null) {
                strP = "";
            }
            aVar.D(strP);
        }
        String strP2 = transferStatusActivity.N0().p();
        transferStatusActivity.M0(true, strP2 != null ? strP2 : "");
        return Unit.f64096a;
    }

    public static final Unit V0(TransferStatusActivity transferStatusActivity, Boolean bool) {
        boolean z10 = bool.booleanValue() || transferStatusActivity.P0().j();
        String strP = transferStatusActivity.N0().p();
        if (strP == null) {
            strP = "";
        }
        transferStatusActivity.M0(z10, strP);
        if (bool.booleanValue()) {
            transferStatusActivity.N0().s(true);
        } else {
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.t0();
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit W0(TransferStatusActivity transferStatusActivity, Integer num) {
        if (num != null && num.intValue() == 1) {
            ((xt.b) transferStatusActivity.getMViewBinding()).f75439m.setCurrentItem(0, true);
            cu.b.f58655a.k(TransferClient.f53593t.k());
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.m0();
            }
        }
        return Unit.f64096a;
    }

    private final void X0() {
        if (f53564n) {
            String strP = P0().p();
            boolean z10 = !(strP == null || strP.length() == 0);
            yt.a aVar = this.selectFragment;
            if (aVar != null) {
                String strP2 = P0().p();
                if (strP2 == null) {
                    strP2 = "";
                }
                aVar.D(strP2);
            }
            String strP3 = P0().p();
            M0(z10, strP3 != null ? strP3 : "");
        }
        P0().k().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.Y0(this.f53589a, (String) obj);
            }
        }));
        P0().o().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.Z0(this.f53592a, (Pair) obj);
            }
        }));
        P0().n().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.a1(this.f53676a, (String) obj);
            }
        }));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Y0(TransferStatusActivity transferStatusActivity, String str) {
        ((xt.b) transferStatusActivity.getMViewBinding()).f75436j.setText(str);
        yt.a aVar = transferStatusActivity.selectFragment;
        if (aVar != null) {
            aVar.D(str == null ? "" : str);
        }
        Intrinsics.e(str);
        transferStatusActivity.M0(true, str);
        return Unit.f64096a;
    }

    public static final Unit Z0(TransferStatusActivity transferStatusActivity, Pair pair) {
        boolean zBooleanValue = ((Boolean) pair.getSecond()).booleanValue();
        String strP = transferStatusActivity.P0().p();
        if (strP == null) {
            strP = "";
        }
        transferStatusActivity.M0(zBooleanValue, strP);
        if (transferStatusActivity.needServerAsClientFetchList) {
            transferStatusActivity.needServerAsClientFetchList = false;
            if (((Boolean) pair.getSecond()).booleanValue()) {
                transferStatusActivity.p1();
            } else {
                transferStatusActivity.j1();
                transferStatusActivity.finish();
            }
        } else if (!((Boolean) pair.getSecond()).booleanValue()) {
            TransferReceivedFragment transferReceivedFragment = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment != null) {
                transferReceivedFragment.t0();
            }
            TransferReceivedFragment transferReceivedFragment2 = transferStatusActivity.receivedFragment;
            if (transferReceivedFragment2 != null) {
                transferReceivedFragment2.t0();
            }
        }
        return Unit.f64096a;
    }

    public static final Unit a1(final TransferStatusActivity transferStatusActivity, String str) {
        TransferClient.a aVar = TransferClient.f53593t;
        Intrinsics.e(str);
        TransferClient.a.m(aVar, str, WifiUtils.f53888a.l(), null, new Function0() {
            @Override
            public final Object invoke() {
                return TransferStatusActivity.b1(this.f53679a);
            }
        }, 4, null);
        cu.b.f58655a.t(aVar.k());
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit b1(final TransferStatusActivity transferStatusActivity) {
        ((xt.b) transferStatusActivity.getMViewBinding()).getRoot().post(new Runnable() {
            @Override
            public final void run() {
                TransferStatusActivity.c1(this.f53681a);
            }
        });
        return Unit.f64096a;
    }

    public static final void c1(final TransferStatusActivity transferStatusActivity) {
        transferStatusActivity.T0();
        transferStatusActivity.N0().k(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return TransferStatusActivity.d1(this.f53682a, ((Boolean) obj).booleanValue(), (String) obj2);
            }
        });
        transferStatusActivity.N0().s(true);
    }

    public static final Unit d1(TransferStatusActivity transferStatusActivity, boolean z10, String error) {
        Intrinsics.h(error, "error");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initServerVM: getClientOpenServerEventSource connect res:");
        sb2.append(z10);
        if (!z10) {
            transferStatusActivity.N0().k(new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return TransferStatusActivity.e1(((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final Unit e1(boolean z10, String autoError) {
        Intrinsics.h(autoError, "autoError");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initServerVM: getClientOpenServerEventSource auto retry connect res:");
        sb2.append(z10);
        sb2.append(", autoError:");
        sb2.append(autoError);
        return Unit.f64096a;
    }

    public static final void f1(final TransferStatusActivity transferStatusActivity, View view) {
        if (f53564n) {
            if (transferStatusActivity.P0().j()) {
                cu.b.f58655a.u(transferStatusActivity.P0().t());
                transferStatusActivity.p1();
                return;
            } else {
                transferStatusActivity.j1();
                transferStatusActivity.finish();
                return;
            }
        }
        if (!transferStatusActivity.N0().x()) {
            transferStatusActivity.j1();
            transferStatusActivity.finish();
            return;
        }
        if (!transferStatusActivity.P0().y()) {
            transferStatusActivity.P0().A();
        }
        if (transferStatusActivity.P0().m().isEmpty()) {
            transferStatusActivity.N0().z(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return TransferStatusActivity.g1(this.f53706a, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            transferStatusActivity.p1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit g1(final TransferStatusActivity transferStatusActivity, boolean z10) {
        cu.b.f58655a.l(TransferClient.f53593t.k());
        if (transferStatusActivity.P0().m().isEmpty()) {
            transferStatusActivity.needServerAsClientFetchList = true;
        } else {
            ((xt.b) transferStatusActivity.getMViewBinding()).getRoot().post(new Runnable() {
                @Override
                public final void run() {
                    TransferStatusActivity.h1(this.f53680a);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final void h1(TransferStatusActivity transferStatusActivity) {
        transferStatusActivity.p1();
    }

    public static final void i1(TransferStatusActivity transferStatusActivity, View view) {
        transferStatusActivity.n1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void initData() {
        X0();
        T0();
        ((xt.b) getMViewBinding()).f75439m.setCurrentItem(f53564n ? 1 : 0);
        if (f53564n) {
            List listL = P0().l();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initData: clientIps:");
            sb2.append(listL);
            List listM = P0().m();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("initData: clientNames:");
            sb3.append(listM);
        }
    }

    public final void j1() {
        eu.b.f59817a.b();
        eu.a.f59815a.b();
        P0().C();
        zt.h.f76907s.a();
        rt.c cVar = rt.c.f71341a;
        cVar.j();
        cVar.i();
        N0().B(new Function0() {
            @Override
            public final Object invoke() {
                return TransferStatusActivity.k1();
            }
        });
    }

    public static final Unit k1() {
        WifiCreateManager.f53810a.j();
        rt.c cVar = rt.c.f71341a;
        cVar.f();
        WifiConnectionManager.f53760a.s();
        cVar.e();
        return Unit.f64096a;
    }

    public static final g l1(TransferStatusActivity transferStatusActivity) {
        return transferStatusActivity.new g();
    }

    public static final k m1(TransferStatusActivity transferStatusActivity) {
        k kVar = (k) new v0(transferStatusActivity).a(k.class);
        kVar.B(transferStatusActivity.O0());
        kVar.z(1);
        return kVar;
    }

    public final void n1() {
        TransferDisconnectTipsDialog transferDisconnectTipsDialog = new TransferDisconnectTipsDialog();
        transferDisconnectTipsDialog.r0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TransferStatusActivity.o1(this.f53677a, ((Boolean) obj).booleanValue());
            }
        });
        transferDisconnectTipsDialog.k0(this, "transfer_disconnect_tips_dialog");
    }

    public static final Unit o1(TransferStatusActivity transferStatusActivity, boolean z10) {
        if (z10) {
            if (f53564n) {
                cu.b.f58655a.p(transferStatusActivity.P0().t());
            } else {
                cu.b.f58655a.f(TransferClient.f53593t.k());
            }
            transferStatusActivity.j1();
            transferStatusActivity.finish();
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1() {
        Fragment fragmentK0 = getSupportFragmentManager().k0("TransferSelectFragment");
        if (fragmentK0 == null) {
            yt.a aVarQ0 = Q0();
            if (aVarQ0 != 0) {
                aVarQ0.h(new h());
            }
            Intrinsics.f(aVarQ0, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
            fragmentK0 = (Fragment) aVarQ0;
        }
        yt.a aVar = (yt.a) fragmentK0;
        this.selectFragment = aVar;
        if (aVar != null) {
            aVar.O(N0().w() + P0().w(), N0().r() + P0().s());
        }
        this.isSelectFragmentShown = true;
        if (fragmentK0.isAdded()) {
            getSupportFragmentManager().p().y(fragmentK0).l();
        } else {
            getSupportFragmentManager().p().c(R$id.fl_select_page_container, fragmentK0, "TransferSelectFragment").l();
        }
    }

    public static final yt.a q1() {
        ck.a aVar = (ck.a) TheRouter.d(ck.a.class, new Object[0]);
        Object objA = aVar != null ? aVar.a() : null;
        Intrinsics.f(objA, "null cannot be cast to non-null type com.transsion.transfer.impl.listener.ITransferSelectView");
        return (yt.a) objA;
    }

    public final yt.a Q0() {
        return (yt.a) this.transferSelectFragment.getValue();
    }

    @Override
    public xt.b getViewBinding() {
        xt.b bVarC = xt.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void initView(Bundle savedInstanceState) {
        super.initView(savedInstanceState);
        initView();
        initData();
    }

    @Override
    public boolean isStatusDark() {
        return !ij.y.f62128a.a();
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String strL = WifiUtils.f53888a.l();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCreate: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        sb2.append(strL);
        ImageView vTopBg = ((xt.b) getMViewBinding()).f75438l;
        Intrinsics.g(vTopBg, "vTopBg");
        uf.c.e(vTopBg);
        getWindow().addFlags(128);
        getOnBackPressedDispatcher().i(this, new e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((xt.b) getMViewBinding()).f75439m.setAdapter(new d());
        K0();
        ((xt.b) getMViewBinding()).f75433g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TransferStatusActivity.f1(this.f53755a, view);
            }
        });
        ((xt.b) getMViewBinding()).f75435i.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TransferStatusActivity.i1(this.f53696a, view);
            }
        });
    }
}
