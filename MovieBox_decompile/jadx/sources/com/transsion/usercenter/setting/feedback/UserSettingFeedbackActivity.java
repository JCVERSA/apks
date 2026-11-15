package com.transsion.usercenter.setting.feedback;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.bumptech.glide.Glide;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.ui.SelectImageActivity;
import com.transsion.usercenter.R$color;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.feedback.UserSettingFeedbackActivity;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.Country;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.Serializable;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import xu.x0;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u0006:"}, d2 = {"Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lxu/x0;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "isStatusDark", "()Z", "isTranslucent", "j0", "()Lxu/x0;", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "initView", "q0", "t0", "i0", "k0", "Ljo/b;", "operationMenu", "s0", "(Ljo/b;)V", "a", "Lxu/x0;", "mBinding", "Llv/c;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Llv/c;", "mUserFeedbackViewModel", "Lcom/transsion/publish/api/PhotoEntity;", "c", "Lcom/transsion/publish/api/PhotoEntity;", "photoEntity", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "feedbackFromPage", "e", "subjectId", "Lcom/transsnet/loginapi/bean/Country;", "f", "Lcom/transsnet/loginapi/bean/Country;", "mCountry", "Landroid/text/InputFilter$LengthFilter;", "g", "Landroid/text/InputFilter$LengthFilter;", "mLengthFilter", "h", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserSettingFeedbackActivity extends BaseActivity<x0> {

    private x0 mBinding;

    private lv.c mUserFeedbackViewModel;

    private PhotoEntity photoEntity;

    private String subjectId;

    private Country mCountry;

    private String feedbackFromPage = "SETTINGS";

    private final InputFilter.LengthFilter mLengthFilter = new c();

    public static final class b implements TextWatcher {
        public b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            AppCompatTextView appCompatTextView;
            AppCompatButton appCompatButton;
            AppCompatTextView appCompatTextView2;
            int length = editable != null ? editable.length() : 0;
            String string = UserSettingFeedbackActivity.this.getString(R$string.user_setting_feedback_max_len, Integer.valueOf(length));
            Intrinsics.g(string, "getString(...)");
            if (length < 500) {
                x0 x0Var = UserSettingFeedbackActivity.this.mBinding;
                if (x0Var != null && (appCompatTextView2 = x0Var.f75829i) != null) {
                    appCompatTextView2.setText(string);
                }
            } else {
                ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(androidx.core.content.b.getColor(UserSettingFeedbackActivity.this, R$color.base_color_FA5546));
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                spannableStringBuilder.setSpan(foregroundColorSpan, 0, 3, 33);
                x0 x0Var2 = UserSettingFeedbackActivity.this.mBinding;
                if (x0Var2 != null && (appCompatTextView = x0Var2.f75829i) != null) {
                    appCompatTextView.setText(spannableStringBuilder);
                }
            }
            x0 x0Var3 = UserSettingFeedbackActivity.this.mBinding;
            if (x0Var3 == null || (appCompatButton = x0Var3.f75822b) == null) {
                return;
            }
            appCompatButton.setEnabled(length >= 1);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class c extends InputFilter.LengthFilter {
        c() {
            super(500);
        }

        @Override
        public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
            int length;
            if (charSequence != null) {
                try {
                    length = charSequence.length();
                } catch (Exception unused) {
                }
            } else {
                length = 0;
            }
            if (length + (spanned != null ? spanned.length() : 0) > getMax()) {
                fh.b.f60176a.d(R$string.user_setting_feedback_max_len_tips);
            }
            return charSequence;
        }
    }

    static final class d implements c0, FunctionAdapter {

        private final Function1 f55267a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55267a = function;
        }

        @Override
        public final Function a() {
            return this.f55267a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f55267a.invoke(obj);
        }
    }

    private final void i0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        x0 x0Var = (x0) getMViewBinding();
        this.mBinding = x0Var;
        if (x0Var != null) {
            AppCompatEditText etDesc = x0Var.f75823c;
            Intrinsics.g(etDesc, "etDesc");
            etDesc.addTextChangedListener(new b());
            InputFilter[] filters = x0Var.f75823c.getFilters();
            Intrinsics.g(filters, "getFilters(...)");
            List listJ0 = ArraysKt.J0(filters);
            listJ0.add(0, this.mLengthFilter);
            x0Var.f75823c.setFilters((InputFilter[]) listJ0.toArray(new InputFilter[0]));
            TitleLayout titleLayout = x0Var.f75828h;
            String string = getString(R$string.user_setting_feedback);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
            x0Var.f75822b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.m0(this.f66157a, view);
                }
            });
            x0Var.getRoot().setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.n0(this.f66158a, view);
                }
            });
            x0Var.f75825e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.o0(this.f66159a, view);
                }
            });
            x0Var.f75830j.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserSettingFeedbackActivity.p0(this.f66160a, view);
                }
            });
        }
    }

    private final void k0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserSettingFeedbackActivity.l0(this.f66156a, (jo.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().r(), false, function1);
    }

    public static final Unit l0(UserSettingFeedbackActivity userSettingFeedbackActivity, jo.b it) {
        Intrinsics.h(it, "it");
        Integer numE = it.e();
        if (numE != null && numE.intValue() == 0) {
            userSettingFeedbackActivity.s0(it);
        }
        return Unit.f64096a;
    }

    public static final void m0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        Navigator.x(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SETTINGS").I("TV_DATA", new FbTvData("1", 1, 1)), userSettingFeedbackActivity, null, 2, null);
    }

    public static final void n0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        KeyboardUtils.d(userSettingFeedbackActivity);
    }

    public static final void o0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        SelectImageActivity.INSTANCE.a(userSettingFeedbackActivity, 0, 1, null);
    }

    public static final void p0(UserSettingFeedbackActivity userSettingFeedbackActivity, View view) {
        Navigator.w(TheRouter.c("/loginapi/select_country"), userSettingFeedbackActivity, 100, null, 4, null);
    }

    private final void q0() {
        lv.c cVar = (lv.c) new v0(this).a(lv.c.class);
        cVar.f().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserSettingFeedbackActivity.r0(this.f66155a, (String) obj);
            }
        }));
        this.mUserFeedbackViewModel = cVar;
    }

    public static final Unit r0(UserSettingFeedbackActivity userSettingFeedbackActivity, String str) {
        if (TextUtils.isEmpty(str)) {
            userSettingFeedbackActivity.t0();
            return Unit.f64096a;
        }
        userSettingFeedbackActivity.getClass();
        fh.b.f60176a.d(R$string.upload_success);
        userSettingFeedbackActivity.i0();
        userSettingFeedbackActivity.finish();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s0(jo.b operationMenu) {
        String localPath;
        List listH = operationMenu.h();
        if (listH == null || listH.isEmpty()) {
            return;
        }
        this.photoEntity = (PhotoEntity) listH.get(0);
        x0 x0Var = (x0) getMViewBinding();
        AppCompatImageView ivAddImage = x0Var.f75826f;
        Intrinsics.g(ivAddImage, "ivAddImage");
        uf.c.g(ivAddImage);
        PhotoEntity photoEntity = this.photoEntity;
        if (photoEntity == null || (localPath = photoEntity.getLocalPath()) == null) {
            return;
        }
        Glide.with((FragmentActivity) this).load2(new File(localPath)).into(x0Var.f75825e);
    }

    private final void t0() {
        i0();
        fh.b.f60176a.d(R$string.upload_failed);
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
    public x0 getViewBinding() {
        x0 x0VarC = x0.c(getLayoutInflater());
        Intrinsics.g(x0VarC, "inflate(...)");
        return x0VarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Serializable serializableExtra;
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 100 && resultCode == -1 && data != null && (serializableExtra = data.getSerializableExtra("countryCode")) != null && (serializableExtra instanceof Country)) {
            Country country = (Country) serializableExtra;
            this.mCountry = country;
            ((x0) getMViewBinding()).f75830j.setText(country.getCountry_s() + " + " + country.getCode());
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra("feedback_from_page");
        if (stringExtra == null) {
            stringExtra = "SETTINGS";
        }
        this.feedbackFromPage = stringExtra;
        this.subjectId = getIntent().getStringExtra("subject_id");
        initView();
        q0();
        k0();
    }
}
