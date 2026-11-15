package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import java.util.ArrayList;

public class wo7 extends BaseAdapter {
    public ArrayList b;
    public Context c;
    public int d = -1;
    public int e = R.style.font_black_12_t40;
    public int f = R.style.font_error_12;

    public class a {
        public TextView a;

        public a(wo7 wo7Var) {
        }
    }

    public wo7(Context context) {
        this.c = context;
    }

    @Override
    public int getCount() {
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Override
    public Object getItem(int i) {
        return (String) this.b.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = LayoutInflater.from(this.c).inflate(R.layout.xn_item_format_view, (ViewGroup) null, false);
            a aVar = new a(this);
            aVar.a = (TextView) view.findViewById(R.id.format);
            view.setTag(aVar);
        }
        a aVar2 = (a) view.getTag();
        aVar2.a.setText((CharSequence) this.b.get(i));
        if (this.d == i) {
            aVar2.a.setTextAppearance(this.f);
        } else {
            aVar2.a.setTextAppearance(this.e);
        }
        return view;
    }
}
