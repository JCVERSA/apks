package com.transsion.usercenter.setting.labelsfeedback;

import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.KeyboardUtils;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.usercenter.R$color;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FBContact;
import com.transsion.usercenter.setting.labelsfeedback.model.FbDataModel;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOption;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOptionList;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.usercenter.setting.labelsfeedback.sender.FBSender;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 (2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001*B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0007J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0011J\u000f\u0010\u0018\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001b\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\r2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0015¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020\bH\u0014¢\u0006\u0004\b\"\u0010 J\u0017\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b*\u0010)J\u0017\u0010+\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b+\u0010)J\u0017\u0010,\u001a\u00020\r2\u0006\u0010$\u001a\u00020'H\u0016¢\u0006\u0004\b,\u0010)J\u001f\u0010/\u001a\u00020\r2\u0006\u0010$\u001a\u00020'2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J)\u00105\u001a\u00020\r2\u0006\u00101\u001a\u00020\u001c2\u0006\u00102\u001a\u00020\u001c2\b\u00104\u001a\u0004\u0018\u000103H\u0014¢\u0006\u0004\b5\u00106R\u001b\u00109\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u00107\u001a\u0004\b8\u0010\u001aR\u0016\u0010;\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010:R\u001b\u0010>\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00107\u001a\u0004\b<\u0010=R\u001b\u0010A\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u00107\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/LabelsFeedbackActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/d;", "Lcom/transsion/usercenter/setting/labelsfeedback/d;", "Lcom/transsion/usercenter/setting/labelsfeedback/i;", "Lnv/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "k0", "(Landroid/os/Bundle;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "", "r0", "", "x0", "()Z", "Ljo/b;", "operationMenu", "j0", "(Ljo/b;)V", "w0", "isStatusDark", "isTranslucent", "q0", "()Lxu/d;", "isChangeStatusBar", "", "statusColor", "()I", "onCreate", "(Landroid/os/Bundle;)V", "outState", "onSaveInstanceState", "Lcom/transsion/usercenter/setting/labelsfeedback/c;", "adaptor", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/usercenter/setting/labelsfeedback/c;)V", "Lcom/transsion/usercenter/setting/labelsfeedback/h;", "e", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "i", "Landroidx/appcompat/widget/AppCompatImageView;", "imageVIew", "c", "(Lcom/transsion/usercenter/setting/labelsfeedback/h;Landroidx/appcompat/widget/AppCompatImageView;)V", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Lkotlin/Lazy;", "n0", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;", "model", "o0", "()Lcom/transsion/usercenter/setting/labelsfeedback/h;", "footerAdaptor", "p0", "()Lcom/transsion/usercenter/setting/labelsfeedback/c;", "listAdaptor", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LabelsFeedbackActivity extends BaseActivity<xu.d> implements d, i, nv.a {

    private FbDataModel model;

    private final Lazy d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LabelsFeedbackActivity.l0(this.f55316a);
        }
    });

    private final Lazy footerAdaptor = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LabelsFeedbackActivity.m0(this.f55317a);
        }
    });

    private final Lazy listAdaptor = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LabelsFeedbackActivity.s0(this.f55318a);
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.usercenter.setting.labelsfeedback.LabelsFeedbackActivity$onCreate$5", f = "LabelsFeedbackActivity.kt", l = {111}, m = "invokeSuspend")
    static final class AnonymousClass5 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LabelsFeedbackActivity.this.new AnonymousClass5(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            try {
                if (i10 == 0) {
                    ResultKt.b(obj);
                    mv.a aVar = (mv.a) kg.c.f63982e.a().h(mv.a.class);
                    String strA = gg.a.f61067a.a();
                    this.label = 1;
                    obj = aVar.b(strA, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                FbOptionList fbOptionList = (FbOptionList) ((BaseDto) obj).getData();
                if (fbOptionList != null) {
                    LabelsFeedbackActivity labelsFeedbackActivity = LabelsFeedbackActivity.this;
                    FbDataModel fbDataModel = labelsFeedbackActivity.model;
                    if (fbDataModel == null) {
                        Intrinsics.y("model");
                        fbDataModel = null;
                    }
                    fbDataModel.setOptions(fbOptionList.getLabelList());
                    labelsFeedbackActivity.p0().notifyDataSetChanged();
                    FbOption.INSTANCE.d(fbOptionList);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    private final void j0(jo.b operationMenu) {
        List listH = operationMenu.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        o0().k(((PhotoEntity) listH.get(0)).getLocalPath());
    }

    private final FbDataModel k0(Bundle savedInstanceState) {
        FbDataModel fbDataModel;
        if (savedInstanceState != null && (fbDataModel = (FbDataModel) savedInstanceState.getParcelable("feedback_save_model")) != null) {
            fbDataModel.fillOption(FbOption.INSTANCE.a(this));
            return fbDataModel;
        }
        FbDataModel fbDataModelE = FBSender.f55319a.e();
        if (fbDataModelE != null) {
            fbDataModelE.fillOption(FbOption.INSTANCE.a(this));
            return fbDataModelE;
        }
        String stringExtra = getIntent().getStringExtra("feedback_from_page");
        if (stringExtra == null) {
            stringExtra = "SETTINGS";
        }
        String str = stringExtra;
        String stringExtra2 = getIntent().getStringExtra("subject_id");
        String stringExtra3 = getIntent().getStringExtra("ugc_video_id");
        Parcelable parcelableExtra = getIntent().getParcelableExtra("TV_DATA");
        FbDataModel fbDataModel2 = new FbDataModel(parcelableExtra instanceof FbTvData ? (FbTvData) parcelableExtra : null, str, stringExtra2, new FBContact(null, null, 2, null), null, null, null, null, null, stringExtra3, null, 1520, null);
        fbDataModel2.fillOption(FbOption.INSTANCE.a(this));
        return fbDataModel2;
    }

    public static final xu.d l0(LabelsFeedbackActivity labelsFeedbackActivity) {
        return xu.d.c(labelsFeedbackActivity.getLayoutInflater());
    }

    public static final h m0(LabelsFeedbackActivity labelsFeedbackActivity) {
        FbDataModel fbDataModel = labelsFeedbackActivity.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        return new h(fbDataModel, labelsFeedbackActivity);
    }

    private final xu.d n0() {
        return (xu.d) this.d.getValue();
    }

    private final h o0() {
        return (h) this.footerAdaptor.getValue();
    }

    public final c p0() {
        return (c) this.listAdaptor.getValue();
    }

    private final void r0() {
        KeyboardUtils.d(this);
    }

    public static final c s0(LabelsFeedbackActivity labelsFeedbackActivity) {
        FbDataModel fbDataModel = labelsFeedbackActivity.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        c cVar = new c(fbDataModel);
        cVar.l(labelsFeedbackActivity);
        cVar.k(labelsFeedbackActivity);
        return cVar;
    }

    public static final boolean t0(LabelsFeedbackActivity labelsFeedbackActivity, View view, MotionEvent motionEvent) {
        labelsFeedbackActivity.r0();
        return false;
    }

    public static final Unit u0(LabelsFeedbackActivity labelsFeedbackActivity, jo.b it) {
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0) {
            labelsFeedbackActivity.j0(it);
        }
        return Unit.f64096a;
    }

    public static final void v0(LabelsFeedbackActivity labelsFeedbackActivity, View view) {
        labelsFeedbackActivity.r0();
        labelsFeedbackActivity.w0();
    }

    private final void w0() {
        if (x0() || com.transsion.baseui.util.c.f42332a.a(n0().f75528c.getId(), 1000L)) {
            return;
        }
        FbDataModel fbDataModel = this.model;
        FbDataModel fbDataModel2 = null;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        Integer tips = fbDataModel.getTips();
        if (tips != null) {
            fh.b.f60176a.d(tips.intValue());
            return;
        }
        fh.b.f60176a.d(R$string.feedback_tips_send);
        FBSender fBSender = FBSender.f55319a;
        FbDataModel fbDataModel3 = this.model;
        if (fbDataModel3 == null) {
            Intrinsics.y("model");
        } else {
            fbDataModel2 = fbDataModel3;
        }
        Application application = getApplication();
        Intrinsics.g(application, "getApplication(...)");
        fBSender.i(fbDataModel2, application);
        finish();
    }

    private final boolean x0() {
        return false;
    }

    @Override
    public void a(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        if (x0()) {
            return;
        }
        SelectImageActivity.INSTANCE.a(this, 0, 1, null);
    }

    @Override
    public void b(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        AppCompatButton appCompatButton = n0().f75528c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
    }

    @Override
    public void c(h adaptor, AppCompatImageView imageVIew) {
        Intrinsics.h(adaptor, "adaptor");
        Intrinsics.h(imageVIew, "imageVIew");
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        String imagePath = fbDataModel.getImagePath();
        if (imagePath != null) {
            Glide.with((FragmentActivity) this).load2(new File(imagePath)).into(imageVIew);
        }
    }

    @Override
    public void e(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        r0();
    }

    @Override
    public void i(h adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        Navigator.w(TheRouter.c("/loginapi/select_country"), this, 100, null, 4, null);
    }

    @Override
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public void k(c adaptor) {
        Intrinsics.h(adaptor, "adaptor");
        r0();
        AppCompatButton appCompatButton = n0().f75528c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Serializable serializableExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1 && requestCode == 100 && data != null && (serializableExtra = data.getSerializableExtra("countryCode")) != null && (serializableExtra instanceof Country)) {
            o0().j((Country) serializableExtra);
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.model = k0(savedInstanceState);
        n0().f75529d.setTitleText(R$string.user_setting_feedback);
        RecyclerView recyclerView = n0().f75527b;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new ConcatAdapter(new j(), p0(), o0()));
        n0().f75527b.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return LabelsFeedbackActivity.t0(this.f55310a, view, motionEvent);
            }
        });
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LabelsFeedbackActivity.u0(this.f55311a, (jo.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
        AppCompatButton appCompatButton = n0().f75528c;
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        appCompatButton.setEnabled(fbDataModel.getCanSubmit());
        n0().f75528c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LabelsFeedbackActivity.v0(this.f55312a, view);
            }
        });
        kotlinx.coroutines.k.d(v.a(this), y0.c(), null, new AnonymousClass5(null), 2, null);
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        FbDataModel fbDataModel = this.model;
        if (fbDataModel == null) {
            Intrinsics.y("model");
            fbDataModel = null;
        }
        outState.putParcelable("feedback_save_model", fbDataModel);
        super.onSaveInstanceState(outState);
    }

    @Override
    public xu.d getViewBinding() {
        return n0();
    }

    @Override
    public int statusColor() {
        return R$color.pair_FFFFFF2;
    }
}
