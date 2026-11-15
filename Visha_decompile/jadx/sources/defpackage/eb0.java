package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.R;
import com.transsion.utils.ToastUtils;
import com.transsion.utils.a;
import com.transsion.widgets.popup.BasePopupWindow;
import com.transsion.widgets.popup.ISelectCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class eb0 {
    public Context a;
    public int b;
    public int c;
    public int d;
    public boolean e;
    public View f;
    public int g;
    public int h;
    public int i;
    public List j;
    public BasePopupWindow k;
    public View l;
    public Drawable m;

    public eb0(Context context, View view, int i, boolean z) {
        this(context, view, i, z, 2, 240, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
    }

    public final boolean c(List list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (((gw4) list.get(i2)).isCheck()) {
                i++;
            }
        }
        return i > this.g;
    }

    public final boolean d(List list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (((gw4) list.get(i2)).isCheck()) {
                i++;
            }
        }
        return i < 1;
    }

    public final void e(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((gw4) it.next()).setCheck(false);
        }
    }

    public void f() {
        BasePopupWindow basePopupWindow = this.k;
        if (basePopupWindow != null) {
            basePopupWindow.dismiss();
        }
    }

    public abstract BaseQuickAdapter g();

    public View h() {
        return this.l;
    }

    public abstract int i();

    public final List j(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            gw4 gw4Var = (gw4) it.next();
            if (gw4Var.isCheck()) {
                arrayList.add(gw4Var);
            }
        }
        return arrayList;
    }

    public abstract RecyclerView k(View view);

    public final void l(List list, ISelectCallback iSelectCallback, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.e) {
            e(list);
            ((gw4) list.get(i)).setCheck(true);
            baseQuickAdapter.notifyDataSetChanged();
        } else {
            gw4 gw4Var = (gw4) list.get(i);
            gw4Var.setCheck(!gw4Var.isCheck());
            if (c(list)) {
                gw4Var.setCheck(!gw4Var.isCheck());
                ToastUtils.w(this.a.getString(R.string.choose_at_most, Integer.valueOf(this.g)));
                return;
            } else {
                if (d(list)) {
                    gw4Var.setCheck(!gw4Var.isCheck());
                    ToastUtils.w(this.a.getString(R.string.choose_at_least, 1));
                    return;
                }
                baseQuickAdapter.notifyItemChanged(i);
            }
        }
        if (iSelectCallback != null) {
            if (!this.e) {
                iSelectCallback.selectCallback(j(list));
                return;
            }
            BasePopupWindow basePopupWindow = this.k;
            if (basePopupWindow != null) {
                basePopupWindow.dismiss();
            }
            iSelectCallback.selectCallback(list.get(i));
        }
    }

    public final void m(List list, ISelectCallback iSelectCallback) {
        List listJ = j(list);
        if (!this.e || listJ.size() != 1) {
            if (iSelectCallback != null) {
                iSelectCallback.selectOnDismissMultiChoice(listJ);
            }
        } else {
            gw4 gw4Var = (gw4) list.get(0);
            if (iSelectCallback != null) {
                iSelectCallback.selectOnDismissSingleChoice(gw4Var);
            }
        }
    }

    public void n(Drawable drawable) {
        this.m = drawable;
    }

    public eb0 o(int i) {
        this.c = i;
        return this;
    }

    public eb0 p(int i) {
        this.d = i;
        return this;
    }

    public void q(List list, gw4 gw4Var, ISelectCallback iSelectCallback) {
        if (!this.e) {
            throw new IllegalArgumentException("its not single choice");
        }
        ArrayList arrayList = new ArrayList();
        if (gw4Var != null) {
            arrayList.add(gw4Var);
        }
        r(list, arrayList, iSelectCallback);
    }

    public void r(final List list, List list2, final ISelectCallback iSelectCallback) {
        if (!list2.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                gw4 gw4Var = (gw4) it.next();
                gw4Var.setCheck(list2.contains(gw4Var));
            }
        }
        View viewInflate = LayoutInflater.from(this.a).inflate(i(), (ViewGroup) null);
        if (k(viewInflate) == null) {
            return;
        }
        RecyclerView recyclerViewK = k(viewInflate);
        this.l = recyclerViewK;
        recyclerViewK.setLayoutManager(new LinearLayoutManager(this.a));
        this.j = list;
        BaseQuickAdapter baseQuickAdapterG = g();
        if (baseQuickAdapterG == null) {
            return;
        }
        recyclerViewK.setAdapter(baseQuickAdapterG);
        BasePopupWindow.Builder builderCreate = BasePopupWindow.create(this.a);
        baseQuickAdapterG.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.l(list, iSelectCallback, baseQuickAdapter, view, i);
            }
        });
        BasePopupWindow.Builder elevation = builderCreate.setTarget(this.f).setGravity(this.b).setOffsetX(this.c).setOffsetY(this.d).setElevation(a.d(this.a, 4.0f));
        Drawable drawable = this.m;
        if (drawable == null) {
            drawable = this.a.getResources().getDrawable(R.drawable.os_popup_background, this.a.getTheme());
        }
        BasePopupWindow basePopupWindowBuild = elevation.setBackgroundDrawable(drawable).setAnimationStyle(R.style.popup_anim).setContentView(viewInflate).setOutsideTouchable(true).setTouchable(true).setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public final void onDismiss() {
                this.b.m(list, iSelectCallback);
            }
        }).build();
        this.k = basePopupWindowBuild;
        basePopupWindowBuild.show();
    }

    public eb0(Context context, View view, int i, boolean z, int i2, int i3, int i4) {
        this.c = 0;
        this.d = 0;
        this.a = context;
        this.f = view;
        this.b = i;
        this.e = z;
        this.g = i2;
        this.h = i3;
        this.i = i4;
    }
}
