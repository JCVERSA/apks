package com.transsion.usercenter.message;

import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.c0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.message.UserRoomMessageFragment;
import com.transsion.usercenter.message.adapter.a;
import com.transsion.usercenter.message.bean.MessageEntity;
import com.transsion.usercenter.message.model.PagerEntity;
import com.transsion.usercenter.message.model.ResponseMessage;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gv.d;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010!¨\u0006)"}, d2 = {"Lcom/transsion/usercenter/message/UserRoomMessageFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/usercenter/message/bean/MessageEntity;", "<init>", "()V", "", "getPageName", "()Ljava/lang/String;", "s0", "getPageStateLayoutTitle", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "initViewData", "initViewModel", "initListener", "G0", "loadMore", "lazyLoadData", "retryLoadData", "receiveArguments", "Lgv/d;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "R0", "()Lgv/d;", "mViewModel", "c", "Ljava/lang/String;", "allType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mPage", "e", "msgType", "f", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UserRoomMessageFragment extends BaseListFragment<MessageEntity> {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy mViewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UserRoomMessageFragment.U0();
        }
    });

    private String allType = "ALL";

    private String mPage = "1";

    private String msgType;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UserRoomMessageFragment a(String str) {
            UserRoomMessageFragment userRoomMessageFragment = new UserRoomMessageFragment();
            Bundle bundle = new Bundle();
            bundle.putString("msgType", str);
            userRoomMessageFragment.setArguments(bundle);
            return userRoomMessageFragment;
        }

        private Companion() {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f54895a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54895a = function;
        }

        @Override
        public final Function a() {
            return this.f54895a;
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
            this.f54895a.invoke(obj);
        }
    }

    private final d R0() {
        return (d) this.mViewModel.getValue();
    }

    public static final void S0(UserRoomMessageFragment userRoomMessageFragment, BaseQuickAdapter adapter, View view, int i10) {
        MessageEntity messageEntity;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.usercenter.message.bean.MessageEntity");
        MessageEntity messageEntity2 = (MessageEntity) item;
        int id2 = view.getId();
        if (id2 != R$id.clLayout) {
            if (id2 != R$id.iv_avatar || Intrinsics.c(messageEntity2.getType(), a.I)) {
                return;
            }
            Navigator.x(TheRouter.c("/profile/user_profile").K("userId", messageEntity2.getSendUid()), userRoomMessageFragment.requireContext(), null, 2, null);
            return;
        }
        BaseQuickAdapter mBaseAdapter = userRoomMessageFragment.getMBaseAdapter();
        if (mBaseAdapter == null || (messageEntity = (MessageEntity) mBaseAdapter.getItem(i10)) == null) {
            return;
        }
        if (Intrinsics.c(messageEntity2.getType(), a.I)) {
            Navigator.x(TheRouter.c("/profile/message_detail").K("msg_content", messageEntity.getContent()).K("msg_nickname", messageEntity.getNickname()).K("msg_create_time", messageEntity.getCreatedAt()), userRoomMessageFragment.requireContext(), null, 2, null);
            return;
        }
        boolean z10 = messageEntity.getCommentId().length() == 0;
        if (messageEntity.getCommentId().length() > 0 && Intrinsics.c(messageEntity.getCommentStatus(), "DELETED")) {
            h.f40484a.l(userRoomMessageFragment.getString(R$string.comment_deleted_tips));
        } else if (Intrinsics.c(messageEntity.getTopicType(), "UGC_VIDEO")) {
            Navigator.x(TheRouter.c("/ugc_video/detail").K("id", messageEntity.getTopicId()).F("ugc_bottom_fragment_selected", 1), userRoomMessageFragment.requireContext(), null, 2, null);
        } else {
            Navigator.x(TheRouter.c("/post/detail").K("id", messageEntity.getTopicId()).K(WebConstants.PAGE_FROM, "system_message").K("comment_id", messageEntity.getCommentId()).z("video_load_more", false).z("from_comment", z10), userRoomMessageFragment.requireContext(), null, 2, null);
        }
    }

    public static final Unit T0(UserRoomMessageFragment userRoomMessageFragment, ResponseMessage responseMessage) {
        List<MessageEntity> list;
        PagerEntity pager;
        if (responseMessage != null && (pager = responseMessage.getPager()) != null) {
            if (pager.getHasMore()) {
                userRoomMessageFragment.mPage = pager.getNextPage();
                userRoomMessageFragment.B0();
            } else {
                BaseListFragment.D0(userRoomMessageFragment, false, 1, null);
            }
        }
        if (responseMessage == null || (list = responseMessage.getList()) == null) {
            userRoomMessageFragment.N0();
        } else if (userRoomMessageFragment.A0()) {
            userRoomMessageFragment.I0(false);
            if (list.isEmpty()) {
                BaseListFragment.K0(userRoomMessageFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = userRoomMessageFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(list);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = userRoomMessageFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(list);
            }
        }
        return Unit.f64096a;
    }

    public static final d U0() {
        return new d();
    }

    private final String getPageName() {
        String str = this.msgType;
        return (!Intrinsics.c(str, "like") && Intrinsics.c(str, "comment")) ? "comment_message" : "like_message";
    }

    @Override
    public void G0() {
        I0(true);
        this.mPage = "1";
        lazyLoadData();
    }

    @Override
    public String getPageStateLayoutTitle() {
        String string = getString(R$string.user_messaeg_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public void initListener() {
        super.initListener();
        BaseQuickAdapter mBaseAdapter = getMBaseAdapter();
        if (mBaseAdapter != null) {
            mBaseAdapter.l(R$id.clLayout, R$id.iv_avatar);
        }
        BaseQuickAdapter mBaseAdapter2 = getMBaseAdapter();
        if (mBaseAdapter2 != null) {
            mBaseAdapter2.s1(new r6.b() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    UserRoomMessageFragment.S0(this.f60534a, baseQuickAdapter, view, i10);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        super.initViewData();
        BaseListFragment.K0(this, null, 1, null);
        I0(true);
    }

    @Override
    public void initViewModel() {
        R0().d().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserRoomMessageFragment.T0(this.f60533a, (ResponseMessage) obj);
            }
        }));
    }

    @Override
    public void lazyLoadData() {
        R0().f(this.mPage, (Intrinsics.c(this.msgType, "like") ? UserMessageType.LIKE : UserMessageType.COMMENT).getValue());
    }

    @Override
    public void loadMore() {
        if (Intrinsics.c(this.mPage, "1")) {
            BaseListFragment.D0(this, false, 1, null);
        } else {
            lazyLoadData();
        }
    }

    @Override
    public BaseQuickAdapter m0() {
        return new com.transsion.usercenter.message.adapter.b(0, 1, null);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void receiveArguments() {
        String string;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("msgType")) == null) {
            string = "like";
        }
        this.msgType = string;
    }

    @Override
    public void retryLoadData() {
        loadMore();
    }

    @Override
    public String s0() {
        return Intrinsics.c(this.msgType, "like") ? "Likes" : "Comments";
    }
}
