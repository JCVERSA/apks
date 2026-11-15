package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.popup.SimplePopupAdapter;
import com.transsion.utils.ToastUtils;
import com.transsion.utils.a;
import com.transsion.widgets.popup.BasePopupWindow;
import com.transsion.widgets.popup.ISelectCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class fm9 {
    public Context a;
    public int b;
    public boolean c;
    public View d;
    public int e;
    public int f;
    public int g;
    public BasePopupWindow h;

    public fm9(Context context, View view, int i, boolean z) {
        this(context, view, i, z, 2, 240, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
    }

    public final boolean c(List list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (((gw4) list.get(i2)).isCheck()) {
                i++;
            }
        }
        return i > this.e;
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

    public final List f(List list) {
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

    public final void g(List list, ISelectCallback iSelectCallback, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.c) {
            e(list);
            ((gw4) list.get(i)).setCheck(true);
            baseQuickAdapter.notifyDataSetChanged();
        } else {
            gw4 gw4Var = (gw4) list.get(i);
            gw4Var.setCheck(!gw4Var.isCheck());
            if (c(list)) {
                gw4Var.setCheck(!gw4Var.isCheck());
                ToastUtils.w(this.a.getString(R.string.choose_at_most, Integer.valueOf(this.e)));
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
            if (!this.c) {
                iSelectCallback.selectCallback(f(list));
                return;
            }
            BasePopupWindow basePopupWindow = this.h;
            if (basePopupWindow != null) {
                basePopupWindow.dismiss();
            }
            iSelectCallback.selectCallback(list.get(i));
        }
    }

    public final void h(List list, ISelectCallback iSelectCallback) {
        List listF = f(list);
        if (!this.c || listF.size() != 1) {
            if (iSelectCallback != null) {
                iSelectCallback.selectOnDismissMultiChoice(listF);
            }
        } else {
            gw4 gw4Var = (gw4) list.get(0);
            if (iSelectCallback != null) {
                iSelectCallback.selectOnDismissSingleChoice(gw4Var);
            }
        }
    }

    public void i(List list, gw4 gw4Var, ISelectCallback iSelectCallback) {
        if (!this.c) {
            throw new IllegalArgumentException("its not single choice");
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(gw4Var);
        j(list, arrayList, iSelectCallback);
    }

    public void j(final List list, List list2, final ISelectCallback iSelectCallback) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            gw4 gw4Var = (gw4) it.next();
            gw4Var.setCheck(list2.contains(gw4Var));
        }
        View viewInflate = LayoutInflater.from(this.a).inflate(R.layout.simple_popup_window_layout, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.a));
        SimplePopupAdapter simplePopupAdapter = new SimplePopupAdapter(list);
        recyclerView.setAdapter(simplePopupAdapter);
        BasePopupWindow.Builder builderCreate = BasePopupWindow.create(this.a);
        simplePopupAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                this.b.g(list, iSelectCallback, baseQuickAdapter, view, i);
            }
        });
        BasePopupWindow.Builder gravity = builderCreate.setTarget(this.d).setGravity(this.b);
        int iD = this.f;
        if (iD >= 0) {
            iD = a.d(this.a, iD);
        }
        BasePopupWindow.Builder width = gravity.setWidth(iD);
        int i = this.g;
        BasePopupWindow basePopupWindowBuild = width.setHeight(i < 0 ? this.f : a.d(this.a, i)).setElevation(a.d(this.a, 4.0f)).setBackgroundDrawable(this.a.getResources().getDrawable(R.drawable.os_popup_background, this.a.getTheme())).setAnimationStyle(R.style.popup_anim).setContentView(viewInflate).setOutsideTouchable(true).setTouchable(true).setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public final void onDismiss() {
                this.b.h(list, iSelectCallback);
            }
        }).build();
        this.h = basePopupWindowBuild;
        basePopupWindowBuild.show();
    }

    public fm9(Context context, View view, int i, boolean z, int i2, int i3) {
        this(context, view, i, z, 2, i2, i3);
    }

    public fm9(Context context, View view, int i, boolean z, int i2, int i3, int i4) {
        this.a = context;
        this.d = view;
        this.b = i;
        this.c = z;
        this.e = i2;
        this.f = i3;
        this.g = i4;
    }
}
