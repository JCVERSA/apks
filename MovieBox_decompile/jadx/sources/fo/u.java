package fo;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public final class u extends BaseItemProvider {

    private final ep.e f60269e;

    public u(ep.e roomsView) {
        Intrinsics.h(roomsView, "roomsView");
        this.f60269e = roomsView;
    }

    @Override
    public int l() {
        return MediaType.ROOM_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_provider_room_post_nearby_rs_layout;
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.fl_container);
        if (frameLayout.getChildCount() == 0) {
            View view = this.f60269e.getView();
            if (view.getParent() != null) {
                ViewParent parent = view.getParent();
                Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(view);
            }
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -2));
        }
        List<RoomItem> roomList = item.getRoomList();
        if (roomList != null) {
            ep.e eVar = this.f60269e;
            String string = Utils.a().getString(R$string.Nearby_Communities);
            Intrinsics.g(string, "getString(...)");
            eVar.updateTitle(string);
            this.f60269e.setList(roomList);
            qi.h.f69682a.z("room_home", MapsKt.m(TuplesKt.a("module_name", "room_nearby_recommend")));
            this.f60269e.setReportName("room_home", "room_nearby_recommend");
        }
    }
}
