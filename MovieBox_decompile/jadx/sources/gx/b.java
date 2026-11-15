package gx;

import com.transsion.user.action.sync.event.CommentEvent;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.flow.event.sync.event.PublishEvent;
import com.transsnet.flow.event.sync.event.WatchLaterEvent;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final a f61207a = new a(null);

    private static final Lazy f61208b = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return b.b();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return (b) b.f61208b.getValue();
        }

        private a() {
        }
    }

    private b() {
    }

    public static final b b() {
        return new b();
    }

    public final void d(int i10, String commentId, String commentNum, String str) {
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(commentNum, "commentNum");
        CommentEvent commentEvent = new CommentEvent(i10 == 1, commentId, commentNum, str);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, commentEvent, 0L);
    }

    public final void e(String postId) {
        Intrinsics.h(postId, "postId");
        hx.b bVar = new hx.b(postId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = hx.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
    }

    public final void f(int i10, String groupId) {
        Intrinsics.h(groupId, "groupId");
        boolean z10 = false;
        if (i10 != 0 && i10 == 1) {
            z10 = true;
        }
        JoinRoomEvent joinRoomEvent = new JoinRoomEvent(z10, groupId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, joinRoomEvent, 0L);
    }

    public final void g(int i10, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        LikeEvent likeEvent = new LikeEvent(i10 == 0, subjectId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, likeEvent, 0L);
    }

    public final void h(String postId, String str, int i10) {
        Intrinsics.h(postId, "postId");
        try {
            PublishEvent publishEvent = new PublishEvent(postId, str, i10);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, publishEvent, 0L);
        } catch (Exception unused) {
            PublishEvent publishEvent2 = new PublishEvent(postId, null, i10);
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = PublishEvent.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, publishEvent2, 0L);
        }
    }

    public final void i(int i10, String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        boolean z10 = false;
        if (i10 != 0 && i10 == 1) {
            z10 = true;
        }
        WatchLaterEvent watchLaterEvent = new WatchLaterEvent(z10, subjectId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = WatchLaterEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, watchLaterEvent, 0L);
    }
}
