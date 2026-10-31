package com.snaptube.premium.whatsapp;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.em.common.protomodel.Card;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.or3;
import o.r6;
import o.sr7;
import o.x59;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/snaptube/premium/whatsapp/WhatsAppDownloadFragment;", "Lcom/snaptube/premium/whatsapp/WhatsAppStatusFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Lo/mg8;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/Context;", "context", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "Landroid/content/Intent;", "intent", "", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "emptyPage", "P5", "(Z)V", "G5", "()Z", "U5", "(Landroid/view/View;)V", "S5", "(Lcom/wandoujia/em/common/protomodel/Card;)Z", "T5", "(Landroid/content/Intent;Lcom/wandoujia/em/common/protomodel/Card;)Z", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWhatsAppDownloadFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WhatsAppDownloadFragment.kt\ncom/snaptube/premium/whatsapp/WhatsAppDownloadFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,98:1\n262#2,2:99\n*S KotlinDebug\n*F\n+ 1 WhatsAppDownloadFragment.kt\ncom/snaptube/premium/whatsapp/WhatsAppDownloadFragment\n*L\n37#1:99,2\n*E\n"})
public final class WhatsAppDownloadFragment extends WhatsAppStatusFragment {
    @Override
    public boolean G5() {
        return true;
    }

    @Override
    public void P5(boolean emptyPage) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            WhatsAppHelpFragment.Companion companion = WhatsAppHelpFragment.INSTANCE;
            FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
            or3.e(supportFragmentManager, "getSupportFragmentManager(...)");
            companion.c(supportFragmentManager, emptyPage);
        }
    }

    public final boolean S5(Card card) {
        x59.a(getContext(), card, false, this.B0);
        new ReportPropertyBuilder().setEventName("Click").setAction("whatsapp_page").setProperty("extra_info", "download whatsapp media from list").setProperty("card_id", 3002).reportEvent();
        return true;
    }

    public final boolean T5(Intent intent, Card card) {
        String str;
        if (Config.h2()) {
            Context context = getContext();
            List listA = o3().A();
            NavigationManager.Z(context, listA instanceof ArrayList ? (ArrayList) listA : null, this.B0, intent.getIntExtra("key_position", 0));
        } else {
            if (x59.k(card) == 2) {
                str = "VIDEO";
            } else {
                str = x59.k(card) == 1 ? "IMAGE" : "";
            }
            if (!TextUtils.isEmpty(str)) {
                r6.m(x59.l(card), x59.j(card), str);
            }
        }
        return true;
    }

    public final void U5(View view) {
        View viewFindViewById = view.findViewById(R.id.iv_download);
        or3.e(viewFindViewById, "findViewById(...)");
        viewFindViewById.setVisibility(8);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        if (or3.a(action, "play")) {
            return T5(intent, card);
        }
        return or3.a(action, NativeAdPresenter.DOWNLOAD) ? S5(card) : super.l0(context, card, intent);
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        sr7.h(view, true, true, false, 4, null);
        U5(view);
    }
}
