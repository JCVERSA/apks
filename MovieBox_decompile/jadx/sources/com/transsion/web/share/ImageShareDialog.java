package com.transsion.web.share;

import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialogFragment;
import com.transsion.web.R$id;
import com.transsion.web.R$layout;
import com.transsion.web.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import oq.p;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 %2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&'(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006)"}, d2 = {"Lcom/transsion/web/share/ImageShareDialog;", "Lcom/transsion/baseui/dialog/BaseDialogFragment;", "Liw/b;", "<init>", "()V", "", "packageName", "backUpName", "", "q0", "(Ljava/lang/String;Ljava/lang/String;)V", "", "result", "pageName", "t0", "(ZLjava/lang/String;)V", "backUpPackageName", "m0", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "Lcom/transsion/web/share/ImageShareDialog$c;", "n0", "()Ljava/util/List;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "initView", "c0", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Landroid/net/Uri;", "e", "Landroid/net/Uri;", "imageUri", "f", "a", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImageShareDialog extends BaseDialogFragment<iw.b> {

    public static final Companion INSTANCE = new Companion(null);

    private Uri imageUri;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    class AnonymousClass1 extends FunctionReferenceImpl implements Function3<LayoutInflater, ViewGroup, Boolean, iw.b> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(3, iw.b.class, "inflate", "inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/web/databinding/DialogImgeShareBinding;", 0);
        }

        public final iw.b invoke(LayoutInflater p10, ViewGroup viewGroup, boolean z10) {
            Intrinsics.h(p10, "p0");
            return iw.b.c(p10, viewGroup, z10);
        }

        @Override
        public Object invoke(Object obj, Object obj2, Object obj3) {
            return invoke((LayoutInflater) obj, (ViewGroup) obj2, ((Boolean) obj3).booleanValue());
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ImageShareDialog a(Uri imageUrl) {
            Intrinsics.h(imageUrl, "imageUrl");
            ImageShareDialog imageShareDialog = new ImageShareDialog();
            Bundle bundle = new Bundle();
            bundle.putParcelable("imageUrl", imageUrl);
            imageShareDialog.setArguments(bundle);
            return imageShareDialog;
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/web/share/ImageShareDialog$b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/web/share/ImageShareDialog$c;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/web/share/ImageShareDialog$c;)V", "Web_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends BaseQuickAdapter {
        public b() {
            super(R$layout.item_share, null, 2, null);
        }

        @Override
        public void F(BaseViewHolder holder, c item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            TextView textView = (TextView) holder.getView(R$id.tv_share);
            textView.setText(item.a());
            textView.setCompoundDrawablesWithIntrinsicBounds(0, item.c(), 0, 0);
        }
    }

    public ImageShareDialog() {
        super(AnonymousClass1.INSTANCE);
    }

    private final String m0(String packageName, String backUpPackageName) {
        if (packageName != null && com.transsion.baseui.util.a.f42330a.c(getContext(), packageName)) {
            return packageName;
        }
        if (backUpPackageName == null || !com.transsion.baseui.util.a.f42330a.c(getContext(), backUpPackageName)) {
            return null;
        }
        return backUpPackageName;
    }

    private final List n0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c(R$mipmap.player_ic_whatsapp, R$string.whatsapp, "whatsup", "com.whatsapp", null, 16, null));
        arrayList.add(new c(R$mipmap.player_ic_telegram, R$string.telegram, "Telegram", "org.telegram.messenger", "org.telegram.messenger.web"));
        return arrayList;
    }

    public static final void o0(ImageShareDialog imageShareDialog, View view) {
        imageShareDialog.dismiss();
    }

    public static final void p0(List list, ImageShareDialog imageShareDialog, b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        c cVar = (c) list.get(i10);
        imageShareDialog.q0(cVar.d(), cVar.b());
        HashMap map = new HashMap();
        map.put("module_name", bVar.getContext().getString(cVar.a()));
        qi.h hVar = qi.h.f69682a;
        map.put(EventConstants.KEY_SOURCE, hVar.h());
        hVar.o("web_share_panel", map);
        imageShareDialog.dismiss();
    }

    private final void q0(String packageName, String backUpName) {
        final String strM0 = m0(packageName, backUpName);
        if (Intrinsics.c(packageName, "org.telegram.messenger")) {
            p pVar = p.f67948a;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
            pVar.b(fragmentActivityRequireActivity, this.imageUri, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ImageShareDialog.r0(this.f55945a, strM0, ((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        if (Intrinsics.c(packageName, "com.whatsapp")) {
            p pVar2 = p.f67948a;
            FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
            Intrinsics.g(fragmentActivityRequireActivity2, "requireActivity(...)");
            pVar2.a(fragmentActivityRequireActivity2, strM0, this.imageUri, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ImageShareDialog.s0(this.f55947a, strM0, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public static final Unit r0(ImageShareDialog imageShareDialog, String str, boolean z10) {
        imageShareDialog.t0(z10, str);
        return Unit.f64096a;
    }

    public static final Unit s0(ImageShareDialog imageShareDialog, String str, boolean z10) {
        imageShareDialog.t0(z10, str);
        return Unit.f64096a;
    }

    private final void t0(boolean result, String pageName) {
        if (result) {
            return;
        }
        if (pageName == null || pageName.length() == 0) {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.web_app_not_exist);
        } else {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.share_failed_tips);
        }
    }

    @Override
    public void c0() {
    }

    @Override
    public void initView() {
        Bundle arguments = getArguments();
        this.imageUri = arguments != null ? (Uri) arguments.getParcelable("imageUrl") : null;
        ShapeableImageView ivShare = ((iw.b) getMViewBinding()).f62809c;
        Intrinsics.g(ivShare, "ivShare");
        cp.a.a(ivShare, this.imageUri, 4.0f);
        ((iw.b) getMViewBinding()).f62808b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ImageShareDialog.o0(this.f55941a, view);
            }
        });
        RecyclerView recyclerView = ((iw.b) getMViewBinding()).f62810d;
        recyclerView.addItemDecoration(new tf.d(a0.a(16.0f)));
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        final List<Object> listN0 = n0();
        final b bVar = new b();
        bVar.q1(listN0);
        bVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                ImageShareDialog.p0(listN0, this, bVar, baseQuickAdapter, view, i10);
            }
        });
        recyclerView.setAdapter(bVar);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("share_panel", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.BottomDialogTheme);
    }

    @Override
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = a0.a(287.0f);
        attributes.width = -1;
        window.setGravity(80);
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(Z());
        }
        window.setAttributes(attributes);
    }

    public static final class c {

        private final int f55926a;

        private final int f55927b;

        private final String f55928c;

        private final String f55929d;

        private final String f55930e;

        public c(int i10, int i11, String txt, String packageName, String str) {
            Intrinsics.h(txt, "txt");
            Intrinsics.h(packageName, "packageName");
            this.f55926a = i10;
            this.f55927b = i11;
            this.f55928c = txt;
            this.f55929d = packageName;
            this.f55930e = str;
        }

        public final int a() {
            return this.f55927b;
        }

        public final String b() {
            return this.f55930e;
        }

        public final int c() {
            return this.f55926a;
        }

        public final String d() {
            return this.f55929d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f55926a == cVar.f55926a && this.f55927b == cVar.f55927b && Intrinsics.c(this.f55928c, cVar.f55928c) && Intrinsics.c(this.f55929d, cVar.f55929d) && Intrinsics.c(this.f55930e, cVar.f55930e);
        }

        public int hashCode() {
            int iHashCode = ((((((this.f55926a * 31) + this.f55927b) * 31) + this.f55928c.hashCode()) * 31) + this.f55929d.hashCode()) * 31;
            String str = this.f55930e;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ShareItem(iconRes=" + this.f55926a + ", appNameRes=" + this.f55927b + ", txt=" + this.f55928c + ", packageName=" + this.f55929d + ", backPackageName=" + this.f55930e + ")";
        }

        public c(int i10, int i11, String str, String str2, String str3, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(i10, i11, str, str2, (i12 & 16) != 0 ? null : str3);
        }
    }
}
