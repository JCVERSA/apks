package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.OptionItem;
import java.util.ArrayList;
import java.util.List;

public class xq7 extends BaseAdapter {
    public List b;
    public Context c;

    public class a {
        public TextView a;

        public a(xq7 xq7Var) {
        }
    }

    public xq7(Context context, List list) {
        this.c = context;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        arrayList.addAll(list);
    }

    @Override
    public int getCount() {
        List list = this.b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override
    public Object getItem(int i) {
        List list = this.b;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.c).inflate(R.layout.xn_item_option, viewGroup, false);
            a aVar = new a(this);
            aVar.a = (TextView) view.findViewById(R.id.optionItem);
            view.setTag(aVar);
        }
        a aVar2 = (a) view.getTag();
        OptionItem optionItem = (OptionItem) this.b.get(i);
        if (optionItem != null && !TextUtils.isEmpty(optionItem.optionName)) {
            aVar2.a.setText(optionItem.optionName);
        }
        return view;
    }
}
