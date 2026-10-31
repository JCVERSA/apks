package com.snaptube.premium.home;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.premium.R;
import com.snaptube.premium.app.d;
import com.snaptube.premium.fragment.BaseTabNavigationFragment;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.CardData;
import com.wandoujia.em.common.protomodel.VideoCardData;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.cu7;
import o.fc1;
import o.je3;
import o.ke3;
import o.mg8;
import o.or3;
import o.ri0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\rJ!\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ)\u0010 \u001a\u00020\u001f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b \u0010!J+\u0010$\u001a\u0004\u0018\u00010#2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000bH\u0002¢\u0006\u0004\b$\u0010%J!\u0010&\u001a\u0004\u0018\u00010#2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u000bH\u0002¢\u0006\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-¨\u0006/"}, d2 = {"Lcom/snaptube/premium/home/SearchTabNavigationFragment;", "Lcom/snaptube/premium/fragment/BaseTabNavigationFragment;", "Lcom/snaptube/premium/batch_download/a$a;", "Lo/je3;", "<init>", "()V", "Landroid/content/Context;", "context", "Lo/mg8;", "onAttach", "(Landroid/content/Context;)V", "", "E2", "()I", "N2", "L2", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "H2", "(Landroid/view/View;)V", "Lcom/snaptube/mixed_list/view/FABBatchDownload;", "y1", "()Lcom/snaptube/mixed_list/view/FABBatchDownload;", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "Landroid/content/Intent;", "intent", "", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "id", "", "Q2", "(Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;I)Ljava/lang/String;", "P2", "(Landroid/content/Intent;I)Ljava/lang/String;", "i", "Lcom/snaptube/mixed_list/view/FABBatchDownload;", "mDownloadView", "Lo/ke3;", "j", "Lo/ke3;", "mixedListDelegate", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSearchTabNavigationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTabNavigationFragment.kt\ncom/snaptube/premium/home/SearchTabNavigationFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"})
public final class SearchTabNavigationFragment extends BaseTabNavigationFragment implements com.snaptube.premium.batch_download.a.InterfaceC0414a, je3 {

    public FABBatchDownload mDownloadView;

    public ke3 mixedListDelegate;

    @Override
    public int E2() {
        return R.layout.fragment_search_tab_navigation;
    }

    @Override
    public void H2(View view) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        this.mDownloadView = (FABBatchDownload) view.findViewById(R.id.fab_batch_download);
    }

    @Override
    public int L2() {
        return R.navigation.search_tab_navigation;
    }

    @Override
    public void N2() {
        STNavigator sTNavigator = STNavigator.a;
        Context contextRequireContext = requireContext();
        or3.e(contextRequireContext, "requireContext(...)");
        Bundle bundle = new Bundle();
        bundle.putString("trigger_tag", "manual");
        mg8 mg8Var = mg8.a;
        sTNavigator.a(contextRequireContext, "/search_home", bundle, LaunchFlag.SINGLE_TASK);
    }

    public final String P2(Intent intent, int id) {
        return intent.getStringExtra(id == 20051 ? "query" : "query_from");
    }

    public final String Q2(Card card, Intent intent, int id) {
        VideoDetailInfo videoInfo;
        String strH = ri0.h(card, id);
        if (strH != null && (!cu7.B(strH))) {
            return strH;
        }
        String strP2 = P2(intent, id);
        if (strP2 != null && (!cu7.B(strP2))) {
            return strP2;
        }
        CardData cardData = card != null ? card.data : null;
        VideoCardData videoCardData = cardData instanceof VideoCardData ? (VideoCardData) cardData : null;
        if (videoCardData == null || (videoInfo = videoCardData.getVideoInfo()) == null) {
            return "";
        }
        return id == 20051 ? videoInfo.P : videoInfo.Q;
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        Uri data;
        or3.f(context, "context");
        or3.f(intent, "intent");
        String strQ2 = Q2(card, intent, 20051);
        String strQ3 = Q2(card, intent, 20105);
        if (strQ2 != null) {
            intent.putExtra("query", strQ2);
        }
        if (strQ3 != null) {
            intent.putExtra("query_from", strQ3);
        }
        if (or3.a("snaptube.intent.action.DOWNLOAD", intent.getAction()) && (data = intent.getData()) != null) {
            intent.setData(data.buildUpon().appendQueryParameter("query", strQ2).appendQueryParameter("query_from", strQ3).build());
        }
        ke3 ke3Var = this.mixedListDelegate;
        if (ke3Var != null) {
            return ke3Var.l0(context, card, intent);
        }
        return false;
    }

    @Override
    public void onAttach(Context context) {
        or3.f(context, "context");
        super.onAttach(context);
        this.mixedListDelegate = ((d) fc1.c(context)).c();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        H2(view);
    }

    @Override
    public FABBatchDownload getMDownloadView() {
        return this.mDownloadView;
    }
}
