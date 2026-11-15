package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.tn.lib.view.RoomCacheAnimationView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.NestedSwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.widget.CommunityRoomsView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class q implements f4.a {

    private final NestedSwipeRefreshLayout f60419a;

    public final BubbleTextView f60420b;

    public final AppBarLayout f60421c;

    public final RoomCacheAnimationView f60422d;

    public final AppCompatImageView f60423e;

    public final MagicIndicator f60424f;

    public final NestedSwipeRefreshLayout f60425g;

    public final CollapsingToolbarLayout f60426h;

    public final GradientTextView f60427i;

    public final CommunityRoomsView f60428j;

    public final ViewPager2 f60429k;

    private q(NestedSwipeRefreshLayout nestedSwipeRefreshLayout, BubbleTextView bubbleTextView, AppBarLayout appBarLayout, RoomCacheAnimationView roomCacheAnimationView, AppCompatImageView appCompatImageView, MagicIndicator magicIndicator, NestedSwipeRefreshLayout nestedSwipeRefreshLayout2, CollapsingToolbarLayout collapsingToolbarLayout, GradientTextView gradientTextView, CommunityRoomsView communityRoomsView, ViewPager2 viewPager2) {
        this.f60419a = nestedSwipeRefreshLayout;
        this.f60420b = bubbleTextView;
        this.f60421c = appBarLayout;
        this.f60422d = roomCacheAnimationView;
        this.f60423e = appCompatImageView;
        this.f60424f = magicIndicator;
        this.f60425g = nestedSwipeRefreshLayout2;
        this.f60426h = collapsingToolbarLayout;
        this.f60427i = gradientTextView;
        this.f60428j = communityRoomsView;
        this.f60429k = viewPager2;
    }

    public static q a(View view) {
        int i10 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) f4.b.a(view, i10);
        if (bubbleTextView != null) {
            i10 = R$id.appBar;
            AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
            if (appBarLayout != null) {
                i10 = R$id.iv_cache;
                RoomCacheAnimationView roomCacheAnimationView = (RoomCacheAnimationView) f4.b.a(view, i10);
                if (roomCacheAnimationView != null) {
                    i10 = R$id.iv_publish;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                        if (magicIndicator != null) {
                            NestedSwipeRefreshLayout nestedSwipeRefreshLayout = (NestedSwipeRefreshLayout) view;
                            i10 = R$id.toolbar_layout;
                            CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) f4.b.a(view, i10);
                            if (collapsingToolbarLayout != null) {
                                i10 = R$id.tv_post;
                                GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                if (gradientTextView != null) {
                                    i10 = R$id.v_recommend_rooms;
                                    CommunityRoomsView communityRoomsView = (CommunityRoomsView) f4.b.a(view, i10);
                                    if (communityRoomsView != null) {
                                        i10 = R$id.view_pager;
                                        ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                        if (viewPager2 != null) {
                                            return new q(nestedSwipeRefreshLayout, bubbleTextView, appBarLayout, roomCacheAnimationView, appCompatImageView, magicIndicator, nestedSwipeRefreshLayout, collapsingToolbarLayout, gradientTextView, communityRoomsView, viewPager2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_home, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedSwipeRefreshLayout getRoot() {
        return this.f60419a;
    }
}
