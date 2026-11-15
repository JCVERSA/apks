package com.transsion.room.sub.adapter.subscription;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.sub.bean.subscription.UserInfoFollowings;
import com.transsion.room.sub.bean.subscription.UserItemFollowings;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u001e\u001fB)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Lcom/transsion/room/sub/adapter/subscription/s;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;", "Lt6/i;", "", "data", "Lbj/b;", "exposureHelper", "", "showNumberTh", "<init>", "(Ljava/util/List;Lbj/b;Z)V", "", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/transsion/room/sub/adapter/subscription/b;", "itemClickListener", "", "Q1", "(Lcom/transsion/room/sub/adapter/subscription/b;)V", "G", "Lbj/b;", "H", "Z", "I", "Lcom/transsion/room/sub/adapter/subscription/b;", "clickListener", "J", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class s extends BaseProviderMultiAdapter<UserInfoFollowings> implements t6.i {
    private static final String K = "FollowingsFeedAdapter";
    public static final int L = 1;

    private final bj.b exposureHelper;

    private final boolean showNumberTh;

    private com.transsion.room.sub.adapter.subscription.b clickListener;

    public static final class b extends BaseItemProvider {

        private final bj.b f49693e;

        private final boolean f49694f;

        private com.transsion.room.sub.adapter.subscription.b f49695g;

        public b(bj.b bVar, boolean z10) {
            this.f49693e = bVar;
            this.f49694f = z10;
        }

        public static final void B(b bVar, UserInfoFollowings userInfoFollowings, View view) {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return;
            }
            com.transsion.room.sub.adapter.subscription.b bVar2 = bVar.f49695g;
            if (bVar2 != null) {
                UserItemFollowings userInfo = userInfoFollowings.getUserInfo();
                bVar2.b(userInfo != null ? userInfo.getUserId() : null);
            }
        }

        public static final void C(b bVar, UserInfoFollowings userInfoFollowings, View view) {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return;
            }
            com.transsion.room.sub.adapter.subscription.b bVar2 = bVar.f49695g;
            if (bVar2 != null) {
                UserItemFollowings userInfo = userInfoFollowings.getUserInfo();
                bVar2.b(userInfo != null ? userInfo.getUserId() : null);
            }
        }

        @Override
        public void b(BaseViewHolder holder, final UserInfoFollowings userItem) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(userItem, "userItem");
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.iv_avatar);
            if (shapeableImageView != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                UserItemFollowings userInfo = userItem.getUserInfo();
                bVarM.g(userInfo != null ? userInfo.getAvatar() : null).d(shapeableImageView);
                shapeableImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        s.b.B(this.f49696a, userItem, view);
                    }
                });
            }
            wf.a.C0922a.f(wf.a.f74274a, s.K, "tv_name " + userItem, false, 4, null);
            LinearLayout linearLayout = (LinearLayout) holder.getViewOrNull(R$id.container);
            if (linearLayout != null) {
                linearLayout.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        s.b.C(this.f49698a, userItem, view);
                    }
                });
            }
            int i10 = R$id.tv_name;
            UserItemFollowings userInfo2 = userItem.getUserInfo();
            holder.setText(i10, userInfo2 != null ? userInfo2.getNickname() : null);
            TextView textView = (TextView) holder.getViewOrNull(R$id.tv_name);
            if (textView != null) {
                textView.setVisibility(0);
            }
            GradientTextView gradientTextView = (GradientTextView) holder.getViewOrNull(R$id.tv_new_video);
            if (gradientTextView != null) {
                if (userItem.getHasUnread()) {
                    gradientTextView.setVisibility(0);
                } else {
                    gradientTextView.setVisibility(8);
                }
            }
        }

        public final void D(com.transsion.room.sub.adapter.subscription.b bVar) {
            this.f49695g = bVar;
        }

        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.item_subscription_list;
        }
    }

    public s(List list, bj.b bVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, bVar, (i10 & 4) != 0 ? false : z10);
    }

    @Override
    protected int N1(List<? extends UserInfoFollowings> data, int position) {
        Intrinsics.h(data, "data");
        return 1;
    }

    public final void Q1(com.transsion.room.sub.adapter.subscription.b itemClickListener) {
        this.clickListener = itemClickListener;
        b bVar = new b(this.exposureHelper, this.showNumberTh);
        bVar.D(this.clickListener);
        F1(bVar);
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return t6.h.a(this, baseQuickAdapter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(List<UserInfoFollowings> data, bj.b bVar, boolean z10) {
        super(data);
        Intrinsics.h(data, "data");
        this.exposureHelper = bVar;
        this.showNumberTh = z10;
    }
}
