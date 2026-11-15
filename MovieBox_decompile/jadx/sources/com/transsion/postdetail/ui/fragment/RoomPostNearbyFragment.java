package com.transsion.postdetail.ui.fragment;

import android.location.Address;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.room.api.bean.LocationPlace;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 G2\u00020\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u0019\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u001f\u0010$\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u001fH\u0016¢\u0006\u0004\b&\u0010!J\u000f\u0010'\u001a\u00020\u001fH\u0016¢\u0006\u0004\b'\u0010!J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010)J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R\u0018\u00107\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u00109\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00101R\u0018\u0010:\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00101R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001d\u0010F\u001a\u0004\u0018\u00010A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E¨\u0006I"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostNearbyFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "checkGPS", "", "forceRequest", "checkPermission", "(Z)V", "requestLocationPermission", "addLocationHeaderView", "getCurrentLocation", "removeLocationHeaderView", "removeEmptyView", "loadRecommendRooms", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "lazyLoadData", "checkToShowEmptyView", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Landroid/view/View;", "locationPermissionHeaderView", "Landroid/view/View;", "", "lat", "Ljava/lang/Double;", "lon", "Landroid/location/Address;", PlaceTypes.ADDRESS, "Landroid/location/Address;", "mEmptyView", "mNoNetView", "isRoomListRequested", "Z", "isInsertRoom", "Lep/c;", "mGpsServiceHelper", "Lep/c;", "Lep/f;", "mRoomApi$delegate", "Lkotlin/Lazy;", "getMRoomApi", "()Lep/f;", "mRoomApi", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomPostNearbyFragment extends RoomPostBaseFragment {

    public static final Companion INSTANCE = new Companion(null);
    private static final String KEY_PERMISSION_REQUESTED = "key_lo_per_requested";
    public static final String SUBPAGE_NAME = "room_home_nearby";
    public static final String TAG = "RoomPostNearby";
    private Address address;
    private boolean isInsertRoom;
    private boolean isRoomListRequested;
    private Double lat;
    private View locationPermissionHeaderView;
    private Double lon;
    private View mEmptyView;
    private ep.c mGpsServiceHelper;
    private View mNoNetView;

    private final Lazy mRoomApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomPostNearbyFragment.mRoomApi_delegate$lambda$0();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostNearbyFragment a(String str) {
            RoomPostNearbyFragment roomPostNearbyFragment = new RoomPostNearbyFragment();
            roomPostNearbyFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("parent_type", str)));
            return roomPostNearbyFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47534a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47534a = function;
        }

        @Override
        public final Function a() {
            return this.f47534a;
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
            this.f47534a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void addLocationHeaderView() {
        RecyclerView recyclerView;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing() || this.locationPermissionHeaderView != null) {
            return;
        }
        final View viewInflate = LayoutInflater.from(activity).inflate(R$layout.layout_location_permission_header, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R$id.tv_allow)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f47689a.requestLocationPermission();
            }
        });
        com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
        if (mAdapter != null) {
            Intrinsics.e(viewInflate);
            BaseQuickAdapter.y(mAdapter, viewInflate, 0, 0, 6, null);
        }
        wn.p pVar = (wn.p) getMViewBinding();
        if (pVar != null && (recyclerView = pVar.f74519b) != null) {
            recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    RoomPostNearbyFragment.addLocationHeaderView$lambda$11$lambda$10(viewInflate, this);
                }
            });
        }
        this.locationPermissionHeaderView = viewInflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void addLocationHeaderView$lambda$11$lambda$10(View view, RoomPostNearbyFragment roomPostNearbyFragment) {
        Unit unit;
        RecyclerView recyclerView;
        try {
            Result.Companion companion = Result.INSTANCE;
            wn.p pVar = (wn.p) roomPostNearbyFragment.getMViewBinding();
            if (pVar == null || (recyclerView = pVar.f74519b) == null) {
                unit = null;
            } else {
                recyclerView.scrollToPosition(0);
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void checkGPS() {
        FrameLayout root;
        FragmentActivity activity = getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        ep.c cVar = this.mGpsServiceHelper;
        if (cVar != null && cVar.b()) {
            wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "GPS is open, checkPermission", false, 4, null);
            wn.p pVar = (wn.p) getMViewBinding();
            if (pVar == null || (root = pVar.getRoot()) == null) {
                return;
            }
            root.post(new Runnable() {
                @Override
                public final void run() {
                    this.f47671a.checkPermission(false);
                }
            });
            return;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (bVar.b().getBoolean(KEY_PERMISSION_REQUESTED, false)) {
            addLocationHeaderView();
            showLoadingView();
            RoomPostBaseFragment.loadData$default(this, true, false, 2, null);
        } else {
            bVar.b().putBoolean(KEY_PERMISSION_REQUESTED, true);
            ep.c cVar2 = this.mGpsServiceHelper;
            if (cVar2 != null) {
                cVar2.a(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return RoomPostNearbyFragment.checkGPS$lambda$6(this.f47684a, ((Boolean) obj).booleanValue());
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit checkGPS$lambda$6(final RoomPostNearbyFragment roomPostNearbyFragment, boolean z10) {
        FrameLayout root;
        if (!roomPostNearbyFragment.isAdded() || roomPostNearbyFragment.isDetached() || roomPostNearbyFragment.isRemoving()) {
            return Unit.f64096a;
        }
        wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "openGPS result:" + z10, false, 4, null);
        wn.p pVar = (wn.p) roomPostNearbyFragment.getMViewBinding();
        if (pVar != null && (root = pVar.getRoot()) != null) {
            root.post(new Runnable() {
                @Override
                public final void run() {
                    this.f47740a.checkPermission(true);
                }
            });
        }
        return Unit.f64096a;
    }

    public final void checkPermission(boolean forceRequest) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        if (cf.c.f16930a.f(activity, "android.permission.ACCESS_FINE_LOCATION")) {
            getCurrentLocation();
            return;
        }
        if (forceRequest) {
            wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "checkPermission forceRequest permission", false, 4, null);
            requestLocationPermission();
        } else {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            if (bVar.b().getBoolean(KEY_PERMISSION_REQUESTED, false)) {
                wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "checkPermission other,show header", false, 4, null);
                addLocationHeaderView();
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "checkPermission first", false, 4, null);
                bVar.b().putBoolean(KEY_PERMISSION_REQUESTED, true);
                requestLocationPermission();
            }
        }
        showLoadingView();
        RoomPostBaseFragment.loadData$default(this, false, false, 3, null);
    }

    public static final void checkToShowEmptyView$lambda$16(RoomPostNearbyFragment roomPostNearbyFragment, View view) {
        com.transsion.postdetail.ui.adapter.f mAdapter = roomPostNearbyFragment.getMAdapter();
        if (mAdapter != null) {
            BaseQuickAdapter.y(mAdapter, view, 1, 0, 4, null);
        }
    }

    private final void getCurrentLocation() {
        ep.f mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.b(activity, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.getCurrentLocation$lambda$12(this.f47677a, (LocationPlace) obj);
            }
        });
    }

    public static final Unit getCurrentLocation$lambda$12(RoomPostNearbyFragment roomPostNearbyFragment, LocationPlace locationPlace) {
        if (!roomPostNearbyFragment.isAdded() || roomPostNearbyFragment.isDetached() || roomPostNearbyFragment.isRemoving()) {
            return Unit.f64096a;
        }
        roomPostNearbyFragment.lat = locationPlace != null ? locationPlace.getLat() : null;
        roomPostNearbyFragment.lon = locationPlace != null ? locationPlace.getLon() : null;
        roomPostNearbyFragment.address = locationPlace != null ? locationPlace.getLocationAddress() : null;
        wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "get location success load data again", false, 4, null);
        roomPostNearbyFragment.loadRecommendRooms();
        roomPostNearbyFragment.showLoadingView();
        RoomPostBaseFragment.loadData$default(roomPostNearbyFragment, false, false, 3, null);
        return Unit.f64096a;
    }

    private final ep.f getMRoomApi() {
        return (ep.f) this.mRoomApi.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c6  */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00c6, please report this as an issue */
    public static final Unit initViewModel$lambda$1(RoomPostNearbyFragment roomPostNearbyFragment, PostSubjectBean postSubjectBean) {
        List<RoomItem> list;
        androidx.p009lifecycle.b0 b0VarL;
        RoomBean roomBean;
        RoomPostViewModel mViewModel = roomPostNearbyFragment.getMViewModel();
        List<RoomItem> items = (mViewModel == null || (b0VarL = mViewModel.L()) == null || (roomBean = (RoomBean) b0VarL.f()) == null) ? null : roomBean.getItems();
        if (!roomPostNearbyFragment.isRoomListRequested || roomPostNearbyFragment.isInsertRoom) {
            wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
        } else {
            List<PostSubjectItem> items2 = postSubjectBean != null ? postSubjectBean.getItems() : null;
            if (items2 == null || items2.isEmpty() || (list = items) == null || list.isEmpty()) {
                wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
            } else {
                if ((items != null ? items.size() : 0) >= 3) {
                    wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐已成功，插入数据", false, 4, null);
                    PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, true, items, false, null, false, false, false, false, null, -50331649, 1, null);
                    List<PostSubjectItem> items3 = postSubjectBean.getItems();
                    if ((items3 != null ? items3.size() : 0) > 2) {
                        List<PostSubjectItem> items4 = postSubjectBean.getItems();
                        if (items4 != null) {
                            items4.add(2, postSubjectItem);
                        }
                    } else {
                        List<PostSubjectItem> items5 = postSubjectBean.getItems();
                        if (items5 != null) {
                            items5.add(postSubjectItem);
                        }
                    }
                    roomPostNearbyFragment.isInsertRoom = true;
                } else {
                    wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "帖子列表成功，room推荐:" + roomPostNearbyFragment.isRoomListRequested + "，不插入数据", false, 4, null);
                }
            }
        }
        roomPostNearbyFragment.removeEmptyView();
        roomPostNearbyFragment.updateData(postSubjectBean);
        return Unit.f64096a;
    }

    public static final Unit initViewModel$lambda$3(RoomPostNearbyFragment roomPostNearbyFragment, RoomBean roomBean) {
        Unit unit;
        List<Object> data;
        roomPostNearbyFragment.isRoomListRequested = true;
        List<RoomItem> items = roomBean != null ? roomBean.getItems() : null;
        List<RoomItem> list = items;
        if (list == null || list.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，属于为空，不处理", false, 4, null);
            return Unit.f64096a;
        }
        if (items.size() < 3) {
            wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，少于3个，直接隐藏", false, 4, null);
            return Unit.f64096a;
        }
        PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, true, items, false, null, false, false, false, false, null, -50331649, 1, null);
        com.transsion.postdetail.ui.adapter.f mAdapter = roomPostNearbyFragment.getMAdapter();
        int itemCount = mAdapter != null ? mAdapter.getItemCount() : 0;
        if (itemCount > 0) {
            wf.a.C0922a.f(wf.a.f74274a, roomPostNearbyFragment.getTAG(), "room 推荐列表成功，帖子列表已返回，直接插入， " + items.size(), false, 4, null);
            if (itemCount > 2) {
                itemCount = 2;
            }
            try {
                Result.Companion companion = Result.INSTANCE;
                com.transsion.postdetail.ui.adapter.f mAdapter2 = roomPostNearbyFragment.getMAdapter();
                if (mAdapter2 != null && (data = mAdapter2.getData()) != null) {
                    data.add(itemCount, postSubjectItem);
                }
                com.transsion.postdetail.ui.adapter.f mAdapter3 = roomPostNearbyFragment.getMAdapter();
                if (mAdapter3 != null) {
                    mAdapter3.notifyItemInserted(itemCount);
                    unit = Unit.f64096a;
                } else {
                    unit = null;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        return Unit.f64096a;
    }

    private final void loadRecommendRooms() {
        RoomPostViewModel mViewModel;
        if (this.lat == null || this.lon == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        Double d10 = this.lat;
        Intrinsics.e(d10);
        double dDoubleValue = d10.doubleValue();
        Double d11 = this.lon;
        Intrinsics.e(d11);
        mViewModel.K(dDoubleValue, d11.doubleValue(), this.address);
    }

    public static final ep.f mRoomApi_delegate$lambda$0() {
        return (ep.f) TheRouter.d(ep.f.class, new Object[0]);
    }

    private final void removeEmptyView() {
        View view = this.mNoNetView;
        if (view != null) {
            com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
            if (mAdapter != null) {
                mAdapter.J0(view);
            }
            this.mNoNetView = null;
        }
        View view2 = this.mEmptyView;
        if (view2 != null) {
            com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
            if (mAdapter2 != null) {
                mAdapter2.J0(view2);
            }
            this.mEmptyView = null;
        }
    }

    private final void removeLocationHeaderView() {
        View view = this.locationPermissionHeaderView;
        if (view != null) {
            com.transsion.postdetail.ui.adapter.f mAdapter = getMAdapter();
            if (mAdapter != null) {
                mAdapter.J0(view);
            }
            this.locationPermissionHeaderView = null;
        }
    }

    public final void requestLocationPermission() {
        ep.f mRoomApi;
        FragmentActivity activity = getActivity();
        if (activity == null || !isAdded() || isDetached() || isRemoving() || (mRoomApi = getMRoomApi()) == null) {
            return;
        }
        mRoomApi.a(activity, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.requestLocationPermission$lambda$7(this.f47733a, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit requestLocationPermission$lambda$7(RoomPostNearbyFragment roomPostNearbyFragment, boolean z10) {
        if (z10) {
            wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "checkPermission permission Granted， get location", false, 4, null);
            roomPostNearbyFragment.removeLocationHeaderView();
            roomPostNearbyFragment.getCurrentLocation();
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "NearbyLocation", "checkPermission permission denied, show header", false, 4, null);
            roomPostNearbyFragment.addLocationHeaderView();
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void checkToShowEmptyView() {
        final View emptyView;
        FrameLayout root;
        if (this.locationPermissionHeaderView == null) {
            super.checkToShowEmptyView();
            return;
        }
        if (yg.l.f76264a.e()) {
            emptyView = getEmptyView(false);
            this.mEmptyView = emptyView;
        } else {
            emptyView = getLocalNoNetworkView(false);
            this.mNoNetView = emptyView;
        }
        wn.p pVar = (wn.p) getMViewBinding();
        if (pVar == null || (root = pVar.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() {
            @Override
            public final void run() {
                RoomPostNearbyFragment.checkToShowEmptyView$lambda$16(this.f47725a, emptyView);
            }
        });
    }

    @Override
    public void initViewData() {
        super.initViewData();
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarL;
        androidx.p009lifecycle.b0 b0VarA;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarA = mViewModel.A()) != null) {
            b0VarA.j(this, new b(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostNearbyFragment.initViewModel$lambda$1(this.f47745a, (PostSubjectBean) obj);
                }
            }));
        }
        RoomPostViewModel mViewModel2 = getMViewModel();
        if (mViewModel2 == null || (b0VarL = mViewModel2.L()) == null) {
            return;
        }
        b0VarL.j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostNearbyFragment.initViewModel$lambda$3(this.f47750a, (RoomBean) obj);
            }
        }));
    }

    @Override
    public boolean isNeedInsertPublishPost() {
        return true;
    }

    @Override
    public boolean isStaggeredPost() {
        return false;
    }

    @Override
    public boolean isSwipeRefreshEnable() {
        return false;
    }

    @Override
    public void lazyLoadData() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        checkGPS();
    }

    @Override
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        if (isRefresh) {
            this.isInsertRoom = false;
            loadRecommendRooms();
        }
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null) {
            String mPage = getMPage();
            int mPerPage = getMPerPage();
            Double d10 = this.lat;
            double dDoubleValue = d10 != null ? d10.doubleValue() : 0.0d;
            Double d11 = this.lon;
            mViewModel.F(isRefresh, mPage, mPerPage, dDoubleValue, d11 != null ? d11.doubleValue() : 0.0d);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        setMParentTypeName(arguments != null ? arguments.getString("parent_type") : null);
        ep.f mRoomApi = getMRoomApi();
        this.mGpsServiceHelper = mRoomApi != null ? mRoomApi.f(this) : null;
    }

    @Override
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override
    public String onItemHeaderModuleName() {
        return "user_center";
    }

    @Override
    public String pageName() {
        return "room_home";
    }

    @Override
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.NEARBY;
    }

    @Override
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override
    public int getMTabIndex() {
        return 1;
    }
}
