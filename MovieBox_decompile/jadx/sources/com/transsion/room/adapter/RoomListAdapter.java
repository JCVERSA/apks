package com.transsion.room.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.noober.background.view.BLView;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.R$layout;
import com.transsion.room.R$string;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.y;
import ij.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ni.f;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u00010B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010!\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0014¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b#\u0010\u000fJ-\u0010'\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00022\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$H\u0014¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010/\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.¨\u00061"}, d2 = {"Lcom/transsion/room/adapter/RoomListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/bean/RoomItem;", "Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;", "Lt6/i;", "Lcom/transsion/room/adapter/RoomListFrom;", "roomListFrom", "", "isSelectRoom", "<init>", "(Lcom/transsion/room/adapter/RoomListFrom;Z)V", "holder", WebConstants.FIELD_ITEM, "", "J1", "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;)V", "F1", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "latestPosts", "H1", "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "I1", "hasJoin", "E1", "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Z)V", "", "newCount", "G1", "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;J)V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "D1", "(Landroid/view/ViewGroup;I)Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;", "B1", "", "", "payloads", "C1", "(Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;Lcom/transsion/moviedetailapi/bean/RoomItem;Ljava/util/List;)V", "F", "Lcom/transsion/room/adapter/RoomListFrom;", "G", "Z", "H", "I", "coverSize", "RoomListItemVH", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomListAdapter extends BaseQuickAdapter implements i {

    private final RoomListFrom roomListFrom;

    private final boolean isSelectRoom;

    private final int coverSize;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/room/adapter/RoomListAdapter$RoomListItemVH;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lfp/y;", "viewBinding", "<init>", "(Lfp/y;)V", "a", "Lfp/y;", "f", "()Lfp/y;", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RoomListItemVH extends BaseViewHolder {

        private final y viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public RoomListItemVH(y viewBinding) {
            Intrinsics.h(viewBinding, "viewBinding");
            ConstraintLayout root = viewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            super(root);
            this.viewBinding = viewBinding;
        }

        public final y getViewBinding() {
            return this.viewBinding;
        }
    }

    public class a {

        public static final int[] f49373a;

        static {
            int[] iArr = new int[RoomListFrom.values().length];
            try {
                iArr[RoomListFrom.MY_ROOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomListFrom.ROOM_LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f49373a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomListAdapter(RoomListFrom roomListFrom, boolean z10) {
        super(R$layout.item_room_list, null, 2, null);
        Intrinsics.h(roomListFrom, "roomListFrom");
        this.roomListFrom = roomListFrom;
        this.isSelectRoom = z10;
        this.coverSize = a0.a(52.0f);
    }

    private final void E1(RoomListItemVH holder, boolean hasJoin) {
        holder.getViewBinding().f60482l.setStatus(hasJoin ? RoomJoinStatus.JOINED : RoomJoinStatus.JOIN);
    }

    private final void F1(RoomListItemVH holder, RoomItem item) {
        List<PostSubjectItem> latestPosts = item.getLatestPosts();
        PostSubjectItem postSubjectItem = latestPosts != null ? (PostSubjectItem) CollectionsKt.k0(latestPosts) : null;
        if (postSubjectItem == null) {
            Group groupNewPost = holder.getViewBinding().f60473c;
            Intrinsics.g(groupNewPost, "groupNewPost");
            uf.c.g(groupNewPost);
            return;
        }
        Group groupNewPost2 = holder.getViewBinding().f60473c;
        Intrinsics.g(groupNewPost2, "groupNewPost");
        uf.c.k(groupNewPost2);
        String content = postSubjectItem.getContent();
        String title = (content == null || content.length() == 0) ? postSubjectItem.getTitle() : postSubjectItem.getContent();
        AppCompatTextView appCompatTextView = holder.getViewBinding().f60479i;
        if (title == null || title.length() == 0) {
            title = Utils.a().getString(R$string.New_post);
        }
        appCompatTextView.setText(title);
        Media media = postSubjectItem.getMedia();
        String mediaType = media != null ? media.getMediaType() : null;
        if (Intrinsics.c(mediaType, MediaType.VIDEO.getValue())) {
            I1(holder, postSubjectItem);
            return;
        }
        if (Intrinsics.c(mediaType, MediaType.IMAGE.getValue())) {
            H1(holder, postSubjectItem);
            return;
        }
        FrameLayout root = holder.getViewBinding().f60476f.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
        FrameLayout root2 = holder.getViewBinding().f60475e.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        uf.c.g(root2);
    }

    private final void G1(RoomListItemVH holder, long newCount) {
        BLTextView tvNewCount = holder.getViewBinding().f60478h;
        Intrinsics.g(tvNewCount, "tvNewCount");
        tvNewCount.setVisibility((newCount > 0L ? 1 : (newCount == 0L ? 0 : -1)) > 0 ? 0 : 8);
        holder.getViewBinding().f60478h.setText(Utils.a().getString(R$string.x_new, newCount > 99 ? "99+" : String.valueOf(newCount)));
    }

    private final void H1(RoomListItemVH holder, PostSubjectItem latestPosts) {
        List<Image> image;
        List<Image> image2;
        Media media = latestPosts.getMedia();
        int i10 = 0;
        List<Image> image3 = null;
        if (((media == null || (image2 = media.getImage()) == null) ? 0 : image2.size()) > 2) {
            Media media2 = latestPosts.getMedia();
            if (media2 != null && (image = media2.getImage()) != null) {
                image3 = image.subList(0, 2);
            }
        } else {
            Media media3 = latestPosts.getMedia();
            if (media3 != null) {
                image3 = media3.getImage();
            }
        }
        List<Image> list = image3;
        if (list == null || list.isEmpty()) {
            FrameLayout root = holder.getViewBinding().f60475e.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            uf.c.g(root);
            return;
        }
        FrameLayout root2 = holder.getViewBinding().f60475e.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        uf.c.k(root2);
        ShapeableImageView ivPostCover2 = holder.getViewBinding().f60475e.f60300c;
        Intrinsics.g(ivPostCover2, "ivPostCover2");
        ivPostCover2.setVisibility(image3.size() > 1 ? 0 : 8);
        BLView vPostBg = holder.getViewBinding().f60475e.f60301d;
        Intrinsics.g(vPostBg, "vPostBg");
        vPostBg.setVisibility(image3.size() > 1 ? 0 : 8);
        for (Object obj : image3) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            Image image4 = (Image) obj;
            ShapeableImageView shapeableImageView = i10 == 0 ? holder.getViewBinding().f60475e.f60299b : holder.getViewBinding().f60475e.f60300c;
            Intrinsics.e(shapeableImageView);
            String url = image4.getUrl();
            if (url != null) {
                f.f67269a.m(getContext()).g(url).m(this.coverSize).c(this.coverSize).d(shapeableImageView);
            }
            i10 = i11;
        }
    }

    private final void I1(RoomListItemVH holder, PostSubjectItem latestPosts) {
        String url;
        FirstFrame firstFrame;
        Cover cover;
        Media media = latestPosts.getMedia();
        if (media == null || (cover = media.getCover()) == null || (url = cover.getUrl()) == null) {
            Media media2 = latestPosts.getMedia();
            url = (media2 == null || (firstFrame = media2.getFirstFrame()) == null) ? null : firstFrame.getUrl();
        }
        if (url == null || url.length() == 0) {
            FrameLayout root = holder.getViewBinding().f60476f.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            uf.c.g(root);
            return;
        }
        FrameLayout root2 = holder.getViewBinding().f60476f.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        uf.c.k(root2);
        f.b bVarC = f.f67269a.m(getContext()).g(url).m(this.coverSize).c(this.coverSize);
        ShapeableImageView ivPostCover = holder.getViewBinding().f60476f.f60305b;
        Intrinsics.g(ivPostCover, "ivPostCover");
        bVarC.d(ivPostCover);
    }

    private final void J1(RoomListItemVH holder, RoomItem item) {
        E1(holder, Intrinsics.c(item.getHasJoin(), Boolean.TRUE));
        RoomJoinAnimationView vJoin = holder.getViewBinding().f60482l;
        Intrinsics.g(vJoin, "vJoin");
        uf.c.k(vJoin);
    }

    @Override
    public void F(RoomListItemVH holder, RoomItem item) {
        String strD;
        List<String> tags;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        String avatar = item.getAvatar();
        if (avatar != null) {
            f.b bVarC = f.f67269a.m(getContext()).g(avatar).m(this.coverSize).c(this.coverSize);
            ShapeableImageView ivCover = holder.getViewBinding().f60474d;
            Intrinsics.g(ivCover, "ivCover");
            bVarC.d(ivCover);
        }
        if (this.isSelectRoom) {
            holder.getViewBinding().f60481k.setMaxLines(2);
            AppCompatTextView tvMember = holder.getViewBinding().f60477g;
            Intrinsics.g(tvMember, "tvMember");
            uf.c.g(tvMember);
            AppCompatTextView tvTag = holder.getViewBinding().f60480j;
            Intrinsics.g(tvTag, "tvTag");
            uf.c.g(tvTag);
            Group groupNewPost = holder.getViewBinding().f60473c;
            Intrinsics.g(groupNewPost, "groupNewPost");
            uf.c.g(groupNewPost);
            holder.getViewBinding().f60481k.setText(item.getName());
            return;
        }
        Long newPostCount = item.getNewPostCount();
        G1(holder, newPostCount != null ? newPostCount.longValue() : 0L);
        holder.getViewBinding().f60481k.setText(item.getName());
        if (item.getUserCount() != null) {
            Long userCount = item.getUserCount();
            Intrinsics.e(userCount);
            strD = k.d(userCount.longValue());
        } else {
            strD = "0";
        }
        AppCompatTextView appCompatTextView = holder.getViewBinding().f60477g;
        Long userCount2 = item.getUserCount();
        appCompatTextView.setText((userCount2 != null ? userCount2.longValue() : 0L) == 1 ? Utils.a().getString(R$string.one_members) : Utils.a().getString(R$string.x_members, strD));
        ah.c.a aVarE = ah.c.e();
        List<String> tags2 = item.getTags();
        if ((tags2 != null ? tags2.size() : 0) > 3) {
            List<String> tags3 = item.getTags();
            tags = tags3 != null ? tags3.subList(0, 3) : null;
        } else {
            tags = item.getTags();
        }
        if (tags != null) {
            boolean z10 = true;
            for (String str : tags) {
                if (!z10) {
                    aVarE.e("丨").c(androidx.core.content.b.getColor(Utils.a(), R$color.white_20));
                }
                aVarE.e(str).c(androidx.core.content.b.getColor(Utils.a(), R$color.white_60));
                z10 = false;
            }
        }
        holder.getViewBinding().f60480j.setText(aVarE.b());
        int i10 = a.f49373a[this.roomListFrom.ordinal()];
        if (i10 == 1) {
            RoomJoinAnimationView vJoin = holder.getViewBinding().f60482l;
            Intrinsics.g(vJoin, "vJoin");
            uf.c.g(vJoin);
            F1(holder, item);
            return;
        }
        if (i10 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        Group groupNewPost2 = holder.getViewBinding().f60473c;
        Intrinsics.g(groupNewPost2, "groupNewPost");
        uf.c.g(groupNewPost2);
        J1(holder, item);
    }

    @Override
    public void G(RoomListItemVH holder, RoomItem item, List<? extends Object> payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.G(holder, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            E1(holder, ((Boolean) objV0).booleanValue());
        } else if (objV0 instanceof Long) {
            G1(holder, ((Number) objV0).longValue());
        }
    }

    @Override
    public RoomListItemVH y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        y yVarC = y.c(LayoutInflater.from(getContext()), parent, false);
        Intrinsics.g(yVarC, "inflate(...)");
        return new RoomListItemVH(yVarC);
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
