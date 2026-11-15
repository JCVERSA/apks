package com.transsnet.downloader.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 22\u00020\u0001:\u00013B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u000f\u001a\u00020\u000e2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\\\u0010\u001c\u001a\u00020\u00062M\u0010\u001b\u001aI\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00060\u0013¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R_\u0010(\u001aK\u0012\u0013\u0012\u00110\u0014¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0018¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0018¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u001e\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R(\u00101\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00180.0-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00064"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadMoreDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "q0", "(Landroid/view/View;)V", "initAdapter", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", RequestParameters.POSITION, "", "content", NativeComponentConstants.KEY_COMPONENT_TYPE, "call", "s0", "(Lkotlin/jvm/functions/Function3;)V", "Lbx/h;", "c", "Lbx/h;", "viewBinding", "Lcom/transsnet/downloader/dialog/l;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsnet/downloader/dialog/l;", "dialogAdapter", "e", "Lkotlin/jvm/functions/Function3;", "contentCallback", "Lkotlin/Function0;", "f", "Lkotlin/jvm/functions/Function0;", "cancelCallback", "", "Lkotlin/Pair;", "g", "Ljava/util/List;", "contents", "h", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadMoreDialog extends BaseDialog {

    public static final Companion INSTANCE = new Companion(null);

    private bx.h viewBinding;

    private l dialogAdapter;

    private Function3 contentCallback;

    private Function0 cancelCallback;

    private List contents;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadMoreDialog a(List contents) {
            Intrinsics.h(contents, "contents");
            DownloadMoreDialog downloadMoreDialog = new DownloadMoreDialog();
            downloadMoreDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("contents", contents)));
            return downloadMoreDialog;
        }

        private Companion() {
        }
    }

    public DownloadMoreDialog() {
        super(R$layout.dialog_download_more);
        this.contents = new ArrayList();
    }

    private final void initAdapter() {
        RecyclerView recyclerView;
        List list = this.contents;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Pair) it.next()).getFirst());
        }
        l lVar = new l(CollectionsKt.U0(arrayList));
        lVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                DownloadMoreDialog.p0(this.f56535a, baseQuickAdapter, view, i10);
            }
        });
        this.dialogAdapter = lVar;
        bx.h hVar = this.viewBinding;
        if (hVar == null || (recyclerView = hVar.f16067b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.dialogAdapter);
    }

    public static final void p0(DownloadMoreDialog downloadMoreDialog, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        downloadMoreDialog.dismissAllowingStateLoss();
        Function3 function3 = downloadMoreDialog.contentCallback;
        if (function3 != null) {
            Integer numValueOf = Integer.valueOf(i10);
            Object item = adapter.getItem(i10);
            Intrinsics.f(item, "null cannot be cast to non-null type kotlin.String");
            function3.invoke(numValueOf, (String) item, ((Pair) downloadMoreDialog.contents.get(i10)).getSecond());
        }
    }

    private final void q0(View view) {
        AppCompatTextView appCompatTextView;
        bx.h hVarA = bx.h.a(view);
        this.viewBinding = hVarA;
        if (hVarA == null || (appCompatTextView = hVarA.f16068c) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                DownloadMoreDialog.r0(this.f56537a, view2);
            }
        });
    }

    public static final void r0(DownloadMoreDialog downloadMoreDialog, View view) {
        downloadMoreDialog.dismissAllowingStateLoss();
        Function0 function0 = downloadMoreDialog.cancelCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f42330a.b(contextRequireContext);
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("contents") : null;
        List list = TypeIntrinsics.l(serializable) ? (List) serializable : null;
        if (list != null) {
            this.contents.clear();
            this.contents.addAll(list);
        }
        q0(view);
        initAdapter();
    }

    public final void s0(Function3 call) {
        Intrinsics.h(call, "call");
        this.contentCallback = call;
    }
}
