package com.transsion.usercenter.laboratory;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.mcc.LocalMcc;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J)\u0010\u0010\u001a\u00020\u00042\u0010\u0010\r\u001a\f\u0012\u0002\b\u0003\u0012\u0002\b\u0003\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0019\u0010\u001c\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/transsion/usercenter/laboratory/MccActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "initView", "X", "", "iso", "c0", "(Ljava/lang/String;)V", "b0", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "", RequestParameters.POSITION, "d0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V", "Lcom/transsion/usercenter/laboratory/g1;", "newEntity", "e0", "(Lcom/transsion/usercenter/laboratory/g1;)V", "Lcom/transsion/ad/db/mcc/LocalMcc;", "localMcc", "f0", "(Lcom/transsion/ad/db/mcc/LocalMcc;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/usercenter/laboratory/f1;", "a", "Lcom/transsion/usercenter/laboratory/f1;", "nationalInformationAdapter", "Lxu/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lxu/g;", "binding", "c", "I", "checkedPosition", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MccActivity extends AppCompatActivity {

    private f1 nationalInformationAdapter;

    private xu.g binding;

    private int checkedPosition = -1;

    public static final class a extends RecyclerView.l {
        a() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() != null && childAdapterPosition == 0) {
                outRect.top = com.blankj.utilcode.util.a0.a(8.0f);
            }
            outRect.bottom = com.blankj.utilcode.util.a0.a(16.0f);
        }
    }

    private final void X() {
        AppCompatEditText appCompatEditText;
        Button button;
        xu.g gVar = this.binding;
        if (gVar != null && (button = gVar.f75569c) != null) {
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MccActivity.Y(this.f54734a, view);
                }
            });
        }
        xu.g gVar2 = this.binding;
        if (gVar2 == null || (appCompatEditText = gVar2.f75570d) == null) {
            return;
        }
        appCompatEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                return MccActivity.Z(this.f54739a, textView, i10, keyEvent);
            }
        });
    }

    public static final void Y(MccActivity mccActivity, View view) {
        fh.b.f60176a.e("重置自定义数据");
        mccActivity.checkedPosition = -1;
        mccActivity.e0(null);
        f1 f1Var = mccActivity.nationalInformationAdapter;
        if (f1Var != null) {
            f1Var.n1(null);
        }
        mccActivity.b0();
    }

    public static final boolean Z(MccActivity mccActivity, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 3) {
            return true;
        }
        mccActivity.c0(String.valueOf(textView != null ? textView.getText() : null));
        Object systemService = mccActivity.getSystemService("input_method");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(textView != null ? textView.getWindowToken() : null, 0);
        return true;
    }

    public static final void a0(MccActivity mccActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        mccActivity.d0(adapter, i10);
    }

    private final void b0() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MccActivity$loadData$1(this, null), 3, null);
    }

    private final void c0(String iso) {
        List<Object> data;
        xu.g gVar;
        RecyclerView recyclerView;
        RecyclerView.m layoutManager;
        f1 f1Var = this.nationalInformationAdapter;
        if (f1Var == null || (data = f1Var.getData()) == null) {
            return;
        }
        Iterator<Object> it = data.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            } else if (Intrinsics.c(((g1) it.next()).a().getIso(), iso)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            f1 f1Var2 = this.nationalInformationAdapter;
            if (i10 >= (f1Var2 != null ? f1Var2.getItemCount() : 0) || (gVar = this.binding) == null || (recyclerView = gVar.f75572f) == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
                return;
            }
            layoutManager.scrollToPosition(i10);
        }
    }

    private final void d0(BaseQuickAdapter adapter, int position) {
        List<Object> data;
        List<Object> data2;
        Object obj = (adapter == null || (data2 = adapter.getData()) == null) ? null : data2.get(position);
        g1 g1Var = obj instanceof g1 ? (g1) obj : null;
        if (g1Var != null) {
            g1Var.c(true);
        }
        f1 f1Var = this.nationalInformationAdapter;
        if (f1Var != null) {
            f1Var.notifyItemChanged(position);
        }
        f0(g1Var != null ? g1Var.a() : null);
        e0(g1Var);
        if (this.checkedPosition >= 0) {
            Object obj2 = (adapter == null || (data = adapter.getData()) == null) ? null : data.get(this.checkedPosition);
            g1 g1Var2 = obj2 instanceof g1 ? (g1) obj2 : null;
            if (g1Var2 != null) {
                g1Var2.c(false);
            }
            f1 f1Var2 = this.nationalInformationAdapter;
            if (f1Var2 != null) {
                f1Var2.notifyItemChanged(this.checkedPosition);
            }
        }
        this.checkedPosition = position;
    }

    private final void e0(g1 newEntity) {
        LocalMcc localMccA;
        String countryCode;
        String country;
        LocalMcc localMccA2;
        String iso;
        LocalMcc localMccA3;
        String mcc;
        LocalMcc localMccA4;
        mg.a.C0814a c0814a = mg.a.f66402a;
        MMKV mmkvC = c0814a.c();
        String str = "";
        if (mmkvC != null) {
            if (newEntity == null || (localMccA4 = newEntity.a()) == null || (mcc = localMccA4.getMcc()) == null) {
                mcc = "";
            }
            mmkvC.putString("sp_code", mcc);
        }
        MMKV mmkvC2 = c0814a.c();
        if (mmkvC2 != null) {
            if (newEntity == null || (localMccA3 = newEntity.a()) == null || (iso = localMccA3.getIso()) == null) {
                iso = "";
            }
            mmkvC2.putString("custom_local_iso", iso);
        }
        MMKV mmkvC3 = c0814a.c();
        if (mmkvC3 != null) {
            if (newEntity == null || (localMccA2 = newEntity.a()) == null || (country = localMccA2.getCountry()) == null) {
                country = "";
            }
            mmkvC3.putString("custom_local_country", country);
        }
        MMKV mmkvC4 = c0814a.c();
        if (mmkvC4 != null) {
            if (newEntity != null && (localMccA = newEntity.a()) != null && (countryCode = localMccA.getCountryCode()) != null) {
                str = countryCode;
            }
            mmkvC4.putString("custom_country_code", str);
        }
    }

    public final void f0(LocalMcc localMcc) {
        Button button;
        String str = "Country : + " + (localMcc != null ? localMcc.getCountry() : null) + " -- Mcc : " + (localMcc != null ? localMcc.getMcc() : null) + " -- Iso : " + (localMcc != null ? localMcc.getIso() : null) + " -- CountryCode : " + (localMcc != null ? localMcc.getCountryCode() : null);
        xu.g gVar = this.binding;
        if (gVar == null || (button = gVar.f75568b) == null) {
            return;
        }
        button.setText(str);
    }

    private final void initView() {
        RecyclerView recyclerView;
        xu.g gVar = this.binding;
        if (gVar == null || (recyclerView = gVar.f75572f) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        f1 f1Var = new f1();
        f1Var.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                MccActivity.a0(this.f54731a, baseQuickAdapter, view, i10);
            }
        });
        this.nationalInformationAdapter = f1Var;
        recyclerView.setAdapter(f1Var);
        recyclerView.addItemDecoration(new a());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        xu.g gVarC = xu.g.c(getLayoutInflater());
        this.binding = gVarC;
        setContentView(gVarC != null ? gVarC.getRoot() : null);
        initView();
        X();
        b0();
    }
}
