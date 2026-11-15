package defpackage;

import android.content.Context;
import android.view.View;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.loadmore.LoadMoreView;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.playercommon.R;
import com.transsion.playercommon.router.RouterUtils;

public class uf7 extends LoadMoreView {
    public Context a;
    public a b;
    public int c = 1;

    public interface a {
        void a();
    }

    public uf7(Context context) {
        this.a = context;
    }

    private void visibleLoadEnd(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadEndViewId(), z);
        baseViewHolder.getView(R.id.tv_sort).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.b(view);
            }
        });
    }

    private void visibleLoadFail(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadFailViewId(), z);
    }

    private void visibleLoading(BaseViewHolder baseViewHolder, boolean z) {
        baseViewHolder.setGone(getLoadingViewId(), z);
    }

    public final void b(View view) {
        RouterBean.RouterData routerData = new RouterBean.RouterData();
        routerData.setData_type(2);
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(routerData).withMarkParam("vd_ott_morevideobottom_cl").build(), this.a);
        a aVar = this.b;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder) {
        int i = this.c;
        if (i == 1) {
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, false);
            visibleLoadEnd(baseViewHolder, false);
            return;
        }
        if (i == 2) {
            visibleLoading(baseViewHolder, true);
            visibleLoadFail(baseViewHolder, false);
            visibleLoadEnd(baseViewHolder, false);
        } else if (i == 3) {
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, true);
            visibleLoadEnd(baseViewHolder, false);
        } else {
            if (i != 4) {
                return;
            }
            visibleLoading(baseViewHolder, false);
            visibleLoadFail(baseViewHolder, false);
            visibleLoadEnd(baseViewHolder, true);
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.online_custom_load_more_view;
    }

    @Override
    public int getLoadEndViewId() {
        return R.id.load_more_load_end_view;
    }

    @Override
    public int getLoadFailViewId() {
        return R.id.load_fail_view;
    }

    @Override
    public int getLoadMoreStatus() {
        return this.c;
    }

    @Override
    public int getLoadingViewId() {
        return R.id.loading_view;
    }

    public void setClickListener(a aVar) {
        this.b = aVar;
    }

    @Override
    public void setLoadMoreStatus(int i) {
        this.c = i;
    }
}
