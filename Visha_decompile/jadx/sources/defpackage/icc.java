package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.transsion.dbdata.beans.sniff.SearchKey;
import com.transsion.sniffer_load.R;
import java.util.List;

public class icc extends BaseAdapter {
    public Context b;
    public List c;

    public static class a {
        public TextView a;

        public a(View view) {
            this.a = (TextView) view.findViewById(R.id.tv_item);
            if (kdc.a(view.getContext())) {
                this.a.setTextDirection(4);
            }
        }
    }

    public icc(Context context) {
        this.b = context;
    }

    public void a(List list) {
        this.c = list;
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        List list = this.c;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public Object getItem(int i) {
        List list = this.c;
        if (list == null) {
            return null;
        }
        return list.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(this.b).inflate(R.layout.item_key, viewGroup, false);
            aVar = new a(view);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        String content = ((SearchKey.Key) this.c.get(i)).getContent();
        if (TextUtils.isEmpty(content)) {
            aVar.a.setText("");
            aVar.a.setHint(this.b.getString(R.string.download_search_hint));
        } else {
            TextView textView = aVar.a;
            Context context = this.b;
            int i2 = R.string.all_search;
            textView.setText(context.getString(i2, content));
            aVar.a.setContentDescription(this.b.getString(i2, content));
        }
        return view;
    }
}
