package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.model.data.CloudItem;
import java.util.ArrayList;

public class om7 extends BaseAdapter {
    public ArrayList b;
    public Context c;

    public class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            ((CloudItem) om7.this.b.get(Integer.parseInt(String.valueOf(compoundButton.getTag())))).select = z;
        }
    }

    public class b {
        public CheckBox a;
        public TextView b;

        public b(om7 om7Var) {
        }
    }

    public om7(Context context, ArrayList arrayList) {
        this.c = context;
        this.b = arrayList;
    }

    public int[] a() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.b.size(); i++) {
            if (!((CloudItem) this.b.get(i)).select) {
                arrayList.add((CloudItem) this.b.get(i));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            iArr[i2] = ((CloudItem) arrayList.get(i2)).category;
        }
        return iArr;
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
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            return (CloudItem) arrayList.get(i);
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
            view = LayoutInflater.from(this.c).inflate(R.layout.xn_item_cloud, (ViewGroup) null, false);
            b bVar = new b(this);
            bVar.a = (CheckBox) view.findViewById(R.id.selectCheck);
            bVar.b = (TextView) view.findViewById(R.id.label);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        bVar2.b.setText(((CloudItem) this.b.get(i)).resId);
        bVar2.a.setChecked(((CloudItem) this.b.get(i)).select);
        bVar2.a.setTag(Integer.valueOf(i));
        bVar2.a.setOnCheckedChangeListener(new a());
        return view;
    }
}
