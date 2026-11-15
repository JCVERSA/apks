package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.VideoListModeAdapter;
import com.transsion.playercommon.gallery.ImageAdapter;
import com.transsion.playercommon.widgets.SortGroup;
import com.transsion.playercommon.widgets.SortItem;
import java.util.ArrayList;
import java.util.List;

public class kpb extends Dialog {
    public final Context b;
    public SortItem c;
    public SortItem d;
    public SortItem e;
    public SortItem f;
    public SortItem g;
    public VideoListModeAdapter h;
    public RecyclerView i;
    public TextView j;
    public TextView k;
    public boolean l;
    public int m;
    public int n;
    public int o;
    public boolean p;

    public static class a {
        public int a;
        public int b;
        public boolean c;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public kpb(Context context) {
        super(context);
        this.p = false;
        this.b = context;
        setContentView(R.layout.dialog_video_collect);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        this.i = (RecyclerView) findViewById(R.id.rv_video_collect);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(R.drawable.ic_public_short_video_mode, R.string.visha_Categories_mode));
        arrayList.add(new a(R.drawable.ic_public_list_mode, R.string.visha_list_mode));
        arrayList.add(new a(R.drawable.ic_public_grid_mode, R.string.visha_grid_mode));
        VideoListModeAdapter videoListModeAdapter = new VideoListModeAdapter(arrayList);
        this.h = videoListModeAdapter;
        videoListModeAdapter.setOnItemClick(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.f(baseQuickAdapter, view, i);
            }
        });
        this.i.setAdapter(this.h);
        this.i.setLayoutManager(new GridLayoutManager(getContext(), 3));
        this.i.addItemDecoration(new ImageAdapter.GridSpaceItemDecoration(3, com.transsion.utils.a.d(context, 8.0f)));
        View viewFindViewById = findViewById(R.id.video_sort_item_list);
        final SortGroup sortGroup = (SortGroup) viewFindViewById.findViewById(R.id.sort_by_group);
        this.c = (SortItem) viewFindViewById.findViewById(R.id.item_by_date);
        this.d = (SortItem) viewFindViewById.findViewById(R.id.item_by_name);
        this.e = (SortItem) viewFindViewById.findViewById(R.id.item_by_length);
        this.f = (SortItem) viewFindViewById.findViewById(R.id.item_by_size);
        this.g = (SortItem) viewFindViewById.findViewById(R.id.item_by_count);
        sortGroup.setIsSortVideo(true, false);
        sortGroup.setNotPlayNow(true);
        e();
        this.l = sortGroup.getIsAscending();
        this.m = sortGroup.getSortByNameValue();
        int iD = d();
        this.n = iD;
        if (iD == -3) {
            ((a) arrayList.get(0)).c = true;
            this.o = -3;
        } else if (iD == -1) {
            ((a) arrayList.get(1)).c = true;
            this.o = -1;
        } else {
            ((a) arrayList.get(2)).c = true;
            this.o = -2;
        }
        this.j = (TextView) findViewById(R.id.tv_video_collect_cancel);
        this.k = (TextView) findViewById(R.id.tv_video_collect_confirm);
        this.j.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.g(view);
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.h(sortGroup, view);
            }
        });
    }

    public final int d() {
        if (w6c.c(this.b, "video_adapter_grid_type", false)) {
            return -2;
        }
        return pp3.e(this.b) ? -3 : -1;
    }

    public final void e() {
        int iD = w6c.d(this.b, "video_pref_sort_name", 0);
        View[] viewArr = {this.c, this.d, this.e, this.f, this.g};
        String string = this.b.getString(R.string.by_date);
        String string2 = this.b.getString(com.transsion.playercommon.R.string.by_name);
        String string3 = this.b.getString(com.transsion.playercommon.R.string.duration);
        String string4 = this.b.getString(com.transsion.playercommon.R.string.by_size);
        String string5 = this.b.getString(com.transsion.playercommon.R.string.by_count);
        Context context = this.b;
        int i = com.transsion.playercommon.R.string.manual_sorting;
        String[] strArr = {string, string2, string3, string4, string5, context.getString(i), this.b.getString(i)};
        for (int i2 = 0; i2 < 5; i2++) {
            if (i2 == iD) {
                viewArr[i2].setContentDescription(strArr[i2]);
            } else {
                viewArr[i2].setContentDescription(strArr[i2] + this.b.getString(com.transsion.playercommon.R.string.talkback_unselected));
            }
        }
    }

    public final void f(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List<a> data = this.h.getData();
        int i2 = 0;
        while (true) {
            boolean z = true;
            if (i2 >= data.size()) {
                break;
            }
            a aVar = data.get(i2);
            if (i2 != i) {
                z = false;
            }
            aVar.c = z;
            i2++;
        }
        if (i == 0) {
            this.o = -3;
        } else if (i == 1) {
            this.o = -1;
        } else {
            this.o = -2;
        }
        this.h.setNewData(data);
    }

    public final void g(View view) {
        dismiss();
    }

    public final void h(SortGroup sortGroup, View view) {
        boolean newestAscending = sortGroup.getNewestAscending();
        int newestSortByNameValue = sortGroup.getNewestSortByNameValue();
        boolean z = (this.l == newestAscending && this.m == newestSortByNameValue) ? false : true;
        boolean z2 = this.n != this.o;
        if (z && z2) {
            sortGroup.saveVideoSortAttr(newestAscending, newestSortByNameValue);
            sortGroup.saveVideoListModeAttr(sortGroup.getNewestAscending(), sortGroup.getNewestSortByNameValue(), this.o, true);
        } else if (z2) {
            sortGroup.saveVideoListModeAttr(sortGroup.getNewestAscending(), sortGroup.getNewestSortByNameValue(), this.o, true);
        } else if (z) {
            sortGroup.saveVideoSortAttr(newestAscending, newestSortByNameValue);
        }
        this.p = true;
        q16.e(this.n, this.o, this.m, newestSortByNameValue);
        dismiss();
    }
}
