package km;

import android.view.View;
import android.widget.FrameLayout;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.therouter.TheRouter;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.p006enum.ProfileSubSource;
import com.transsion.room.api.RoomsViewType;
import ep.e;
import ep.f;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class d extends BaseItemProvider {

    private final String f64051e;

    private final String f64052f;

    private final Lazy f64053g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return d.B(this.f64050a);
        }
    });

    public d(String str, String str2) {
        this.f64051e = str;
        this.f64052f = str2;
    }

    private final e A() {
        return (e) this.f64053g.getValue();
    }

    public static final e B(d dVar) {
        f fVar = (f) TheRouter.d(f.class, new Object[0]);
        if (fVar != null) {
            return fVar.c(dVar.k(), RoomsViewType.TYPE_SUBJECT_DETAIL);
        }
        return null;
    }

    @Override
    public int l() {
        return MediaType.ROOM_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.movie_detail_item_rooms;
    }

    @Override
    public void b(BaseViewHolder helper, PostSubjectItem item) {
        View view;
        e eVarA;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        FrameLayout frameLayout = (FrameLayout) helper.getView(R$id.fl_root);
        String str = this.f64051e;
        if (str != null) {
            String value = this.f64052f;
            if (value == null) {
                value = ProfileSubSource.COMMENTS.getValue();
            }
            e eVarA2 = A();
            if (eVarA2 != null) {
                eVarA2.setReportName(str, value);
            }
        }
        List<RoomItem> roomList = item.getRoomList();
        if (roomList != null && (eVarA = A()) != null) {
            eVarA.setList(roomList);
        }
        e eVarA3 = A();
        if (eVarA3 == null || (view = eVarA3.getView()) == null || frameLayout.indexOfChild(view) != -1) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.addView(view);
    }
}
