package defpackage;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.transsion.core.log.LogUtils;
import com.transsion.xuanniao.account.R;
import java.lang.ref.WeakReference;

public class ep7 extends qk7 implements AdapterView.OnItemClickListener {
    public lp7 d;

    public ep7(Activity activity, AttributeSet attributeSet, int i, int i2) {
        super(activity, null, i, i2);
        d(activity);
    }

    public static String[] d(Context context) {
        return new String[]{context.getString(R.string.xn_label_list_1), context.getString(R.string.xn_label_list_2), context.getString(R.string.xn_label_list_3), context.getString(R.string.xn_label_list_4)};
    }

    @Override
    public View a() {
        LayoutInflater layoutInflater;
        WeakReference weakReference = this.b;
        if (weakReference == null) {
            LogUtils.d("LabelPopupWindow", "getLayoutInflater mContext is null");
            layoutInflater = null;
        } else {
            layoutInflater = ((Activity) weakReference.get()).getLayoutInflater();
        }
        View viewInflate = layoutInflater.inflate(R.layout.xn_label_layout, (ViewGroup) null);
        this.c = viewInflate;
        return viewInflate;
    }

    @Override
    public void c() {
        ArrayAdapter arrayAdapter = new ArrayAdapter((Context) this.b.get(), R.layout.xn_popup_item_layout, d((Context) this.b.get()));
        ListView listView = (ListView) fp7.a(this.c, ListView.class);
        if (listView == null) {
            LogUtils.p("LabelPopupWindow", "initView listView is null");
        } else {
            listView.setAdapter((ListAdapter) arrayAdapter);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                @Override
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    this.b.onItemClick(adapterView, view, i, j);
                }
            });
        }
    }

    @Override
    public void dismiss() {
        super.dismiss();
        lp7 lp7Var = this.d;
        if (lp7Var != null) {
            lp7Var.V();
        }
    }

    @Override
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.d.k0(i);
        dismiss();
    }
}
