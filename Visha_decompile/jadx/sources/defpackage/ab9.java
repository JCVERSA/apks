package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import com.transsion.tools.R;

public class ab9 extends ArrayAdapter {
    public int b;
    public boolean c;
    public Context d;
    public b e;

    public class a implements View.OnClickListener {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            int i = ab9.this.b;
            ab9.this.b = this.b;
            ab9.this.notifyDataSetChanged();
            if (this.b == 1) {
                ab9.this.c = true;
                qqb.g(ab9.this.d, true);
            }
            if (i != ab9.this.b) {
                qqb.e(ab9.this.d, ab9.this.b);
            }
            if (ab9.this.e != null) {
                ab9.this.e.onItemClick(this.b);
            }
        }
    }

    public interface b {
        void onItemClick(int i);
    }

    public ab9(Context context, String[] strArr) {
        super(context, R.layout.video_direction_item_layout, R.id.dialog_item_text, strArr);
        this.d = context;
        this.c = qqb.c(context);
        this.b = qqb.a(this.d);
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        RadioButton radioButton = (RadioButton) view2.findViewById(R.id.dialog_item_radio_button);
        View viewFindViewById = view2.findViewById(R.id.dialog_item_dot);
        radioButton.setChecked(i == this.b);
        if (i != 1 || this.c || ydc.e()) {
            viewFindViewById.setVisibility(4);
        } else {
            viewFindViewById.setVisibility(0);
        }
        view2.setOnClickListener(new a(i));
        return view2;
    }

    public void setOnItemClickListener(b bVar) {
        this.e = bVar;
    }
}
