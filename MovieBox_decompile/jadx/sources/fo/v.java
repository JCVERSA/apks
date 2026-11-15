package fo;

import android.content.Context;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$drawable;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class v extends BaseItemProvider {

    private final String f60270e;

    private final String f60271f;

    private final RecyclerView.s f60272g;

    private final int f60273h;

    public v(String str, String str2, RecyclerView.s pool) {
        Intrinsics.h(pool, "pool");
        this.f60270e = str;
        this.f60271f = str2;
        this.f60272g = pool;
        this.f60273h = (com.blankj.utilcode.util.y.e() - (a0.a(6.0f) * 3)) / 2;
    }

    private final int A(int i10, int i11, int i12) {
        float f10 = i10 / i11;
        if (f10 < 0.75f) {
            return (i12 * 4) / 3;
        }
        return f10 > 1.3333334f ? (i12 * 3) / 4 : (int) (i12 / f10);
    }

    private final void C(BaseViewHolder baseViewHolder, PostSubjectItem postSubjectItem, boolean z10) {
        B((AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_staggered_post_like), z10, postSubjectItem);
    }

    public final void B(AppCompatTextView appCompatTextView, boolean z10, PostSubjectItem item) {
        Intrinsics.h(item, "item");
        if (appCompatTextView != null) {
            Stat stat = item.getStat();
            Long likeCount = stat != null ? stat.getLikeCount() : null;
            appCompatTextView.setText((likeCount == null || likeCount.longValue() == 0) ? "" : com.transsion.baseui.util.j.a(likeCount.longValue()));
            if (z10) {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_like_icon, 0, 0, 0);
            } else {
                appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_unlike_icon, 0, 0, 0);
            }
        }
    }

    @Override
    public int l() {
        return MediaType.CONTENT_ALL.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_provider_post_staggered_layout;
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        String title;
        String url;
        String thumbnail;
        Integer height;
        Integer width;
        List<Image> image;
        List<Image> image2;
        String avatar;
        String url2;
        Integer height2;
        Integer width2;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        String content = item.getContent();
        String strA = "";
        if (content == null || content.length() == 0 ? (title = item.getTitle()) == null : (title = item.getContent()) == null) {
            title = "";
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvPicNum);
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getViewOrNull(R$id.ivPlaying);
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        Media media = item.getMedia();
        if (Intrinsics.c(media != null ? media.getMediaType() : null, MediaType.VIDEO.getValue())) {
            if (appCompatImageView != null) {
                uf.c.k(appCompatImageView);
            }
            if (appCompatTextView != null) {
                uf.c.g(appCompatTextView);
            }
            Media media2 = item.getMedia();
            FirstFrame firstFrame = media2 != null ? media2.getFirstFrame() : null;
            if (shapeableImageView != null) {
                shapeableImageView.getLayoutParams().height = A((firstFrame == null || (width2 = firstFrame.getWidth()) == null) ? 0 : width2.intValue(), (firstFrame == null || (height2 = firstFrame.getHeight()) == null) ? 0 : height2.intValue(), this.f60273h);
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                if (firstFrame == null || (url2 = firstFrame.getUrl()) == null) {
                    url2 = "";
                }
                bVarM.g(url2).d(shapeableImageView);
            }
        } else {
            if (appCompatImageView != null) {
                uf.c.g(appCompatImageView);
            }
            Media media3 = item.getMedia();
            List<Image> image3 = media3 != null ? media3.getImage() : null;
            if (image3 != null && !image3.isEmpty()) {
                Media media4 = item.getMedia();
                Image image4 = (media4 == null || (image2 = media4.getImage()) == null) ? null : image2.get(0);
                Media media5 = item.getMedia();
                int size = (media5 == null || (image = media5.getImage()) == null) ? 0 : image.size();
                if (shapeableImageView != null) {
                    shapeableImageView.getLayoutParams().height = A((image4 == null || (width = image4.getWidth()) == null) ? 0 : width.intValue(), (image4 == null || (height = image4.getHeight()) == null) ? 0 : height.intValue(), this.f60273h);
                    ni.f.a aVar2 = ni.f.f67269a;
                    Context context2 = shapeableImageView.getContext();
                    Intrinsics.g(context2, "getContext(...)");
                    ni.f.b bVarM2 = aVar2.m(context2);
                    if (image4 == null || (url = image4.getUrl()) == null) {
                        url = "";
                    }
                    ni.f.b bVarG = bVarM2.g(url);
                    if (image4 == null || (thumbnail = image4.getThumbnail()) == null) {
                        thumbnail = "";
                    }
                    bVarG.l(thumbnail).d(shapeableImageView);
                }
                if (size > 1) {
                    if (appCompatTextView != null) {
                        uf.c.k(appCompatTextView);
                    }
                    if (appCompatTextView != null) {
                        appCompatTextView.setText(size + " pics");
                    }
                } else if (appCompatTextView != null) {
                    uf.c.g(appCompatTextView);
                }
            }
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
        if (title.length() == 0) {
            if (appCompatTextView2 != null) {
                uf.c.g(appCompatTextView2);
            }
        } else if (appCompatTextView2 != null) {
            uf.c.k(appCompatTextView2);
        }
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(title);
        }
        ShapeableImageView shapeableImageView2 = (ShapeableImageView) helper.getViewOrNull(R$id.iv_user_avatar);
        if (shapeableImageView2 != null) {
            ni.f.a aVar3 = ni.f.f67269a;
            Context context3 = shapeableImageView2.getContext();
            Intrinsics.g(context3, "getContext(...)");
            ni.f.b bVarM3 = aVar3.m(context3);
            User user = item.getUser();
            if (user == null || (avatar = user.getAvatar()) == null) {
                avatar = "";
            }
            bVarM3.g(avatar).d(shapeableImageView2);
        }
        int i10 = R$id.tv_user_name;
        User user2 = item.getUser();
        helper.setText(i10, user2 != null ? user2.getNickname() : null);
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_staggered_post_like);
        if (appCompatTextView3 != null) {
            Stat stat = item.getStat();
            Long likeCount = stat != null ? stat.getLikeCount() : null;
            if (likeCount != null && likeCount.longValue() != 0) {
                strA = com.transsion.baseui.util.j.a(likeCount.longValue());
            }
            appCompatTextView3.setText(strA);
            if (Intrinsics.c(item.getHasLike(), Boolean.TRUE)) {
                appCompatTextView3.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_like_icon, 0, 0, 0);
            } else {
                appCompatTextView3.setCompoundDrawablesWithIntrinsicBounds(R$drawable.room_staggered_unlike_icon, 0, 0, 0);
            }
        }
    }

    @Override
    public void f(BaseViewHolder helper, PostSubjectItem item, List payloads) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof Boolean) {
            try {
                Result.Companion companion = Result.INSTANCE;
                BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
                if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
                    int adapterPosition = helper.getAdapterPosition();
                    BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
                    PostSubjectItem postSubjectItem = (PostSubjectItem) data.get(adapterPosition + (baseProviderMultiAdapterG2 != null ? baseProviderMultiAdapterG2.a0() : 0));
                    if (postSubjectItem != null) {
                        C(helper, postSubjectItem, ((Boolean) objV0).booleanValue());
                    }
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }
}
