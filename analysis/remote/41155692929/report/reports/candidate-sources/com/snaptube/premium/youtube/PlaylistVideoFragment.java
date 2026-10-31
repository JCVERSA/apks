package com.snaptube.premium.youtube;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.view.n;
import com.mbridge.msdk.MBridgeConstans;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.mixed_list.recyclerview.ExposureGridLayoutManager;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.fragment.AutoPlayableListFragment;
import com.snaptube.premium.fragment.youtube.viewmodel.YtbPlaylistAnimViewHolder;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.user.viewmodel.YtbUserAccountViewModel;
import com.snaptube.premium.ytb_playlist.WatchHistoryAction;
import com.snaptube.util.ProductionEnv;
import com.trello.rxlifecycle.components.RxFragment;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.base.view.EventListPopupWindow;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.CardAnnotation;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import o.ap6;
import o.az7;
import o.cz5;
import o.dz5;
import o.ei0;
import o.fc1;
import o.jf1;
import o.kc9;
import o.ke3;
import o.kh3;
import o.l3;
import o.mr4;
import o.mt2;
import o.n01;
import o.px0;
import o.ri0;
import o.rw4;
import o.ry6;
import o.sr7;
import o.sy5;
import o.ug2;
import o.uu0;
import o.vq6;
import o.wy5;
import o.za3;
import o.zo6;
import o.zv4;

public class PlaylistVideoFragment extends AutoPlayableListFragment implements ry6, ap6, com.snaptube.premium.batch_download.a.InterfaceC0414a, za3 {
    public String G0;
    public String H0;
    public n01 I0;

    @Inject
    kh3 J0;

    @Inject
    ke3 K0;
    public WatchHistoryAction L0;
    public px0 M0;
    public String N0 = "";
    public YtbUserAccountViewModel O0;

    public class a extends GridLayoutManager.c {
        public a() {
        }

        @Override
        public int getSpanSize(int i) {
            int itemViewType = PlaylistVideoFragment.this.o3().getItemViewType(i);
            return (itemViewType == 1 || itemViewType == 2 || itemViewType == 1023 || itemViewType == 1062 || itemViewType == 1175 || itemViewType == 1198 || itemViewType == 1206 || itemViewType == 2013 || itemViewType == 10002 || itemViewType == 1185 || itemViewType == 1186 || itemViewType == 1203 || itemViewType == 1204) ? 2 : 1;
        }
    }

    public class b implements View.OnClickListener {
        public final List a;

        public b(List list) {
            this.a = list;
        }

        @Override
        public void onClick(View view) {
            PlaylistVideoFragment.d6(PlaylistVideoFragment.this, view, this.a);
        }
    }

    public class c implements AdapterView.OnItemClickListener {
        public final EventListPopupWindow a;

        public c(EventListPopupWindow eventListPopupWindow) {
            this.a = eventListPopupWindow;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            this.a.dismiss();
            PlaylistVideoFragment.a6(PlaylistVideoFragment.this, (int) j);
        }
    }

    public class d implements l3 {
        public d() {
        }

        public void a(RxBus.d dVar) {
            int i = dVar.a;
            if (i == 1054) {
                PlaylistVideoFragment.b6(PlaylistVideoFragment.this, dVar);
            } else if (i == 1055) {
                PlaylistVideoFragment.c6(PlaylistVideoFragment.this, dVar);
            } else {
                if (i != 1059) {
                    return;
                }
                PlaylistVideoFragment.this.F0();
            }
        }

        @Override
        public void call(Object obj) {
            a((RxBus.d) obj);
        }
    }

    public class e implements l3 {
        public e() {
        }

        public void a(Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
        }

        @Override
        public void call(Object obj) {
            a((Throwable) obj);
        }
    }

    public interface f {
        void m(PlaylistVideoFragment playlistVideoFragment);
    }

    public static void Y5(PlaylistVideoFragment playlistVideoFragment, View view) {
        playlistVideoFragment.n6(view);
    }

    public static void Z5(PlaylistVideoFragment playlistVideoFragment, Boolean bool) {
        playlistVideoFragment.m6(bool);
    }

    public static void a6(PlaylistVideoFragment playlistVideoFragment, int i) {
        playlistVideoFragment.e6(i);
    }

    public static void b6(PlaylistVideoFragment playlistVideoFragment, RxBus.d dVar) {
        playlistVideoFragment.r6(dVar);
    }

    public static void c6(PlaylistVideoFragment playlistVideoFragment, RxBus.d dVar) {
        playlistVideoFragment.s6(dVar);
    }

    public static void d6(PlaylistVideoFragment playlistVideoFragment, View view, List list) {
        playlistVideoFragment.v6(view, list);
    }

    private void e6(int i) {
        if (i == R.id.menu_delete_watch_history) {
            this.L0.f(i);
        } else if (i == R.id.menu_pause_watch_history) {
            this.L0.f(i);
        }
    }

    private int f6(int i) {
        if (ri0.I(i)) {
            return R.layout.card_ad_unit;
        }
        if (i == 1175) {
            return R.layout.card_ytb_library_playlist_info;
        }
        if (i != 1204) {
            return i != 10002 ? px0.a(i) : R.layout.card_playlist_big_cover_video;
        }
        return R.layout.card_video_middle;
    }

    private n01 h6() {
        if (this.I0 == null) {
            this.I0 = new n01();
        }
        return this.I0;
    }

    public static Bundle p6(Intent intent) {
        String dataString = intent.getDataString();
        String stringExtra = intent.getStringExtra("title");
        String stringExtra2 = intent.getStringExtra("snaptube.intent.action.DOWNLOAD_ALL");
        Bundle bundle = new Bundle();
        bundle.putString("url", dataString);
        bundle.putString("phoenix.intent.extra.TITLE", stringExtra);
        bundle.putString("snaptube.intent.action.DOWNLOAD_ALL", stringExtra2);
        return bundle;
    }

    @Override
    public void A3(Throwable th) {
    }

    @Override
    public int E2() {
        return R.layout.fragment_mixed_list_with_bar;
    }

    @Override
    public RecyclerView.a0 U1(RxFragment rxFragment, ViewGroup viewGroup, int i, zv4 zv4Var) {
        rw4 ytbPlaylistAnimViewHolder;
        int iF6 = f6(i);
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(iF6, viewGroup, false);
        jf1.j(viewInflate, iF6);
        if (i == 1204) {
            ytbPlaylistAnimViewHolder = new kc9(this, viewInflate, this);
        } else if (i == 1175) {
            ytbPlaylistAnimViewHolder = new sy5(this, viewInflate, this);
        } else if (i == 10002) {
            ytbPlaylistAnimViewHolder = new wy5(this, viewInflate, this);
        } else {
            ytbPlaylistAnimViewHolder = i == 1203 ? new YtbPlaylistAnimViewHolder(this, viewInflate, this) : null;
        }
        if (ytbPlaylistAnimViewHolder == null) {
            return this.M0.c(this, viewGroup, i, zv4Var);
        }
        ytbPlaylistAnimViewHolder.s(i, viewInflate);
        return ytbPlaylistAnimViewHolder;
    }

    @Override
    public RecyclerView.LayoutManager U3(Context context) {
        ExposureGridLayoutManager exposureGridLayoutManager = new ExposureGridLayoutManager(context, 2);
        exposureGridLayoutManager.setSpanSizeLookup(new a());
        return exposureGridLayoutManager;
    }

    @Override
    public void V0() {
        if (TextUtils.isEmpty(this.G0)) {
            return;
        }
        vq6.K().h(Uri.parse(this.G0).getPath(), null);
    }

    @Override
    public ap6 W3(Context context) {
        return this;
    }

    @Override
    public void X3(List list, boolean z, boolean z2, int i) {
        if (z2) {
            list = w6(list);
        }
        super.X3(list, z, z2, i);
    }

    @Override
    public void Z2() {
    }

    @Override
    public void g4() {
        if (getContext() != null) {
            NavigationManager.e1(getContext(), "");
        }
    }

    public final String g6(Card card, Intent intent) {
        String path;
        Uri data = intent.getData();
        if (data != null) {
            path = data.getQueryParameter(IntentUtil.POS);
            String stringExtra = intent.getStringExtra(IntentUtil.POS);
            if (!TextUtils.isEmpty(stringExtra)) {
                path = stringExtra;
            }
        } else {
            path = null;
        }
        if (TextUtils.isEmpty(path)) {
            path = ri0.w(card);
        }
        if (TextUtils.isEmpty(path)) {
            path = ri0.A(card);
        }
        if (TextUtils.isEmpty(path)) {
            path = Uri.parse(this.G0).getPath();
        }
        return com.snaptube.premium.share.c.m(com.snaptube.premium.share.c.f(path, "playlist_detail"));
    }

    @Override
    public void h4(List list, int i) {
        if (list == null || list.size() != 1) {
            return;
        }
        String strH = ri0.h((Card) list.get(0), 20036);
        this.N0 = strH;
        s4(TextUtils.equals(strH, MBridgeConstans.ENDCARD_URL_TYPE_PL), R.id.no_data_tips_view);
    }

    public final void i6() {
        this.O0.U().i(getViewLifecycleOwner(), new dz5(this));
    }

    @Override
    public RecyclerView.a0 j0(Fragment fragment, ViewGroup viewGroup, int i, zv4 zv4Var) {
        return zo6.a(this, fragment, viewGroup, i, zv4Var);
    }

    public boolean j6() {
        String str;
        return isAdded() && (str = this.G0) != null && str.contains("/list/youtube/history");
    }

    public boolean k6() {
        String str;
        return isAdded() && (str = this.G0) != null && str.contains("/list/youtube/playlist");
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        if (intent == null) {
            ProductionEnv.throwExceptForDebugging("NullParamsException", new NullPointerException("intent should not be null"));
            return false;
        }
        String action = intent.getAction();
        if ("snaptube.intent.action.SHARE".equals(action) || "snaptube.intent.action.GET_SHARE_POS".equals(action)) {
            intent.putExtra(IntentUtil.POS, g6(card, intent));
        }
        return super.l0(context, card, intent);
    }

    public boolean l6() {
        String str;
        return isAdded() && (str = this.G0) != null && str.contains("/list/youtube/watchlater");
    }

    @Override
    public void m5(com.snaptube.premium.batch_download.a aVar) {
        this.X.B(getActivity(), aVar);
    }

    public final void m6(Boolean bool) {
        if (bool.booleanValue()) {
            k4();
        }
    }

    public final void n6(View view) {
        mt2.a(this).P();
    }

    public final void o6(Menu menu, MenuInflater menuInflater) {
        WatchHistoryAction watchHistoryAction = this.L0;
        List listD = watchHistoryAction == null ? null : watchHistoryAction.d();
        if (listD == null || listD.size() <= 0) {
            return;
        }
        MenuItem menuItemAdd = menu.add(0, R.id.menu_more, 0, R.string.more);
        mr4.c(menuItemAdd, R.drawable.ic_more_vertical, R.color.content_main);
        View viewInflate = View.inflate(getContext(), R.layout.item_donwload_more_action, null);
        viewInflate.setOnClickListener(new b(listD));
        menuItemAdd.setActionView(viewInflate);
        menuItemAdd.setShowAsAction(2);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        ((f) fc1.a(context)).m(this);
        this.M0 = new px0(context, this);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.G0 = arguments.getString("url");
            this.H0 = arguments.getString(IntentUtil.POS);
        }
        if ((this.C && getUserVisibleHint()) || !this.C) {
            m5(this);
        }
        setHasOptionsMenu(true);
        q6();
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        o6(menu, menuInflater);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        x6();
    }

    @Override
    public void onResume() {
        super.onResume();
        s4(TextUtils.equals(this.N0, MBridgeConstans.ENDCARD_URL_TYPE_PL), R.id.no_data_tips_view);
        V0();
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        t6();
        view.setBackgroundColor(getResources().getColor(R.color.transparent));
        ug2.e(this);
        u6(view);
        this.O0 = (YtbUserAccountViewModel) new n(requireActivity()).a(YtbUserAccountViewModel.class);
        i6();
    }

    public void q6() {
    }

    public final void r6(RxBus.d dVar) {
        zv4 zv4VarO3 = o3();
        if (zv4VarO3 == null) {
            return;
        }
        zv4VarO3.R(dVar.b);
        List<Card> listA = zv4VarO3.A();
        if (listA == null) {
            s4(true, R.id.no_data_tips_view);
            return;
        }
        Card card = null;
        Card card2 = null;
        for (Card card3 : listA) {
            if (card == null && card3.cardId.intValue() == 1175) {
                card = card3;
            }
            if (card2 == null && (card3.cardId.intValue() == 1174 || card3.cardId.intValue() == 1204)) {
                card2 = card3;
            }
            if (card != null && card2 != null) {
                break;
            }
        }
        if (card2 == null) {
            listA.clear();
            s4(true, R.id.no_data_tips_view);
            return;
        }
        if (card != null) {
            String str = card2.action;
            Card.Builder builderNewBuilder = card.newBuilder();
            builderNewBuilder.annotation.remove(ri0.c(card, 30009));
            builderNewBuilder.annotation.add(ei0.m(30009, str));
            CardAnnotation cardAnnotationC = ri0.c(card, 20047);
            CardAnnotation cardAnnotationC2 = ri0.c(card, 20039);
            int iIntValue = cardAnnotationC != null ? cardAnnotationC.intValue.intValue() : 0;
            String str2 = cardAnnotationC2 != null ? cardAnnotationC2.stringValue : "";
            if (str2 != null && iIntValue > 0) {
                String strValueOf = String.valueOf(iIntValue);
                int i = iIntValue - 1;
                String strReplace = str2.replace(strValueOf, String.valueOf(i));
                builderNewBuilder.annotation.remove(cardAnnotationC);
                builderNewBuilder.annotation.remove(cardAnnotationC2);
                builderNewBuilder.annotation.add(ei0.o(20047, i));
                builderNewBuilder.annotation.add(ei0.s(20039, strReplace));
            }
            zv4VarO3.j0(0, builderNewBuilder.build());
        }
    }

    @Override
    public void s4(boolean z, int i) {
        super.s4(z, i);
        if (z && i == R.id.no_data_tips_view) {
            TextView textView = (TextView) getView().findViewById(R.id.tips);
            ImageView imageView = (ImageView) getView().findViewById(R.id.iv_tips_img);
            if (k6()) {
                textView.setText(R.string.playlist_no_liked_video);
                imageView.setImageResource(R.drawable.ic_no_liked_video);
            } else if (l6()) {
                textView.setText(R.string.playlist_no_watch_later);
                imageView.setImageResource(R.drawable.ic_no_watch_later);
            }
        }
    }

    public final void s6(RxBus.d dVar) {
        List<Card> listA;
        zv4 zv4VarO3 = o3();
        if (zv4VarO3 != null) {
            zv4VarO3.R(dVar.b);
            listA = zv4VarO3.A();
        } else {
            listA = null;
        }
        if (!uu0.c(listA)) {
            for (Card card : listA) {
                if (card != null && (card.cardId.intValue() == 1174 || card.cardId.intValue() == 1204)) {
                    return;
                }
            }
        }
        F0();
    }

    public final void t6() {
        h6().a(RxBus.d().c(1054, 1055, 1059).g(RxBus.f).u0(new d(), new e()));
    }

    public final void u6(View view) {
        Toolbar toolbar = (Toolbar) view.findViewById(R.id.toolbar);
        if (toolbar == null) {
            return;
        }
        sr7.g(view, true, false, false);
        toolbar.setNavigationOnClickListener(new cz5(this));
        if (getArguments() != null) {
            toolbar.setTitle(getArguments().getString("phoenix.intent.extra.TITLE"));
        }
    }

    public final void v6(View view, List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        EventListPopupWindow eventListPopupWindowA = com.snaptube.premium.views.a.a(getActivity(), list);
        eventListPopupWindowA.k0(view);
        eventListPopupWindowA.t0(new c(eventListPopupWindowA));
        eventListPopupWindowA.a();
    }

    public final List w6(List list) {
        FragmentActivity activity = getActivity();
        if (!az7.U(activity)) {
            return list;
        }
        Card card = (list == null || list.isEmpty()) ? null : (Card) list.get(0);
        if (card == null || card.cardId.intValue() != 1185) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        this.L0 = new WatchHistoryAction(activity, card);
        arrayList.remove(card);
        activity.invalidateOptionsMenu();
        return arrayList;
    }

    public final void x6() {
        n01 n01Var = this.I0;
        if (n01Var != null) {
            n01Var.b();
            this.I0 = null;
        }
    }

    @Override
    public FABBatchDownload getMDownloadView() {
        return (FABBatchDownload) C2(R.id.fab_batch_download);
    }

    @Override
    public boolean y3() {
        if (!YtbLoginStatusHelper.l()) {
            return false;
        }
        s4(true, R.id.list_login_expired_view);
        new ReportPropertyBuilder().setEventName("Exposure").setAction("ytb_401expired_page").reportEvent();
        return true;
    }

    @Override
    public int z0(int i, Card card) {
        return card.cardId.intValue();
    }
}
