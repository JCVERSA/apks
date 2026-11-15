package com.transsion.room.fragment;

import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$string;
import com.transsion.room.adapter.RoomListAdapter;
import com.transsion.room.adapter.RoomListFrom;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u000eR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/transsion/room/fragment/RoomMyListFragment;", "Lcom/transsion/room/fragment/RoomListBaseFragment;", "<init>", "()V", "", "N0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewModel", "initListener", "", "getEmptyDescText", "()Ljava/lang/String;", "Lcom/transsion/room/adapter/RoomListFrom;", "w0", "()Lcom/transsion/room/adapter/RoomListFrom;", "", "isRefresh", "E0", "(Z)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "pageName", "n", "Ljava/lang/String;", "userId", "o", "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomMyListFragment extends RoomListBaseFragment {

    public static final Companion INSTANCE = new Companion(null);

    private String userId;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomMyListFragment a(boolean z10, String str) {
            RoomMyListFragment roomMyListFragment = new RoomMyListFragment();
            roomMyListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("is_select_room", Boolean.valueOf(z10)), TuplesKt.a("user_id", str)));
            return roomMyListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49518a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49518a = function;
        }

        @Override
        public final Function a() {
            return this.f49518a;
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
            this.f49518a.invoke(obj);
        }
    }

    public static final Unit M0(RoomMyListFragment roomMyListFragment, RoomBean roomBean) {
        roomMyListFragment.J0(roomBean);
        return Unit.f64096a;
    }

    private final void N0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomMyListFragment.O0(this.f49600a, (JoinRoomEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit O0(RoomMyListFragment roomMyListFragment, JoinRoomEvent value) {
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (value.getJoin()) {
                roomMyListFragment.t0();
            } else {
                RoomListAdapter roomListAdapterU0 = roomMyListFragment.getMAdapter();
                int i10 = -1;
                if (roomListAdapterU0 != null && (data = roomListAdapterU0.getData()) != null) {
                    Iterator<Object> it = data.iterator();
                    int i11 = 0;
                    while (it.hasNext()) {
                        if (Intrinsics.c(((RoomItem) it.next()).getGroupId(), value.getGroupId())) {
                            i10 = i11;
                            break;
                        }
                        i11++;
                    }
                }
                if (i10 < 0) {
                    return Unit.f64096a;
                }
                RoomListAdapter roomListAdapterU1 = roomMyListFragment.getMAdapter();
                if (roomListAdapterU1 != null) {
                    roomListAdapterU1.G0(i10);
                }
                RoomListAdapter roomListAdapterU2 = roomMyListFragment.getMAdapter();
                List<Object> data2 = roomListAdapterU2 != null ? roomListAdapterU2.getData() : null;
                if (data2 == null || data2.isEmpty()) {
                    roomMyListFragment.checkToShowEmptyView();
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public void E0(boolean isRefresh) {
        RoomViewModel roomViewModelV0 = getMViewModel();
        if (roomViewModelV0 != null) {
            roomViewModelV0.z(isRefresh, getMPage(), getMPerPage(), this.userId);
        }
    }

    @Override
    public String getEmptyDescText() {
        String string = getString(R$string.my_room_empty_tips);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public void initListener() {
        N0();
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarA;
        super.initViewModel();
        RoomViewModel roomViewModelV0 = getMViewModel();
        if (roomViewModelV0 == null || (b0VarA = roomViewModelV0.A()) == null) {
            return;
        }
        b0VarA.j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomMyListFragment.M0(this.f49602a, (RoomBean) obj);
            }
        }));
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("my_room_list", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("user_id")) == null) {
            string = null;
        }
        this.userId = string;
    }

    @Override
    public String pageName() {
        return "my_room_list";
    }

    @Override
    public RoomListFrom w0() {
        return RoomListFrom.MY_ROOM;
    }
}
