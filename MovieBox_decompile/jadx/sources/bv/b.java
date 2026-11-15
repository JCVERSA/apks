package bv;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.d0;
import androidx.p009lifecycle.t;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.h;
import com.google.android.material.bottomsheet.c;
import com.tn.lib.widget.R$color;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.R$style;

public class b implements View.OnClickListener, t {

    private Activity f15888a;

    private TextView f15889b;

    private TextView f15890c;

    private TextView f15891d;

    private a f15892e;

    private c f15893f;

    private String f15894g;

    private boolean f15895h;

    public interface a {
        void onDialogSelect(int i10, String str);
    }

    public b(Activity activity, a aVar, String str) {
        this.f15888a = activity;
        this.f15892e = aVar;
        this.f15894g = str;
        a();
    }

    private void a() {
        View viewInflate = LayoutInflater.from(this.f15888a).inflate(R$layout.dialog_edit_gender, (ViewGroup) null);
        this.f15889b = (TextView) viewInflate.findViewById(R$id.tv_first);
        this.f15890c = (TextView) viewInflate.findViewById(R$id.tv_second);
        this.f15891d = (TextView) viewInflate.findViewById(R$id.tv_third);
        this.f15889b.setOnClickListener(this);
        this.f15890c.setOnClickListener(this);
        this.f15891d.setOnClickListener(this);
        c cVar = new c(this.f15888a, R$style.BottomDialog1);
        this.f15893f = cVar;
        cVar.getWindow().setWindowAnimations(R$style.bottom_dialog_animation);
        this.f15893f.setContentView(viewInflate);
    }

    public void b() {
        if (TextUtils.equals(this.f15894g, this.f15888a.getString(R$string.profile_female))) {
            this.f15889b.setTextColor(h.a(R$color.white));
            this.f15890c.setTextColor(h.a(R$color.text_03));
            this.f15891d.setTextColor(h.a(R$color.text_03));
        } else if (TextUtils.equals(this.f15894g, this.f15888a.getString(R$string.profile_male))) {
            this.f15890c.setTextColor(h.a(R$color.white));
            this.f15889b.setTextColor(h.a(R$color.text_03));
            this.f15891d.setTextColor(h.a(R$color.text_03));
        } else {
            this.f15891d.setTextColor(h.a(R$color.white));
            this.f15889b.setTextColor(h.a(R$color.text_03));
            this.f15890c.setTextColor(h.a(R$color.text_03));
        }
        this.f15889b.setText(R$string.profile_female);
        this.f15890c.setText(R$string.profile_male);
        this.f15891d.setText(R$string.profile_gender_other);
        this.f15893f.show();
    }

    @Override
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R$id.tv_first) {
            a aVar = this.f15892e;
            if (aVar != null) {
                aVar.onDialogSelect(0, this.f15889b.getText().toString());
                this.f15893f.dismiss();
                return;
            }
            return;
        }
        if (id2 != R$id.tv_second) {
            if (id2 == R$id.tv_third) {
                this.f15892e.onDialogSelect(2, this.f15891d.getText().toString());
                this.f15893f.dismiss();
                return;
            }
            return;
        }
        a aVar2 = this.f15892e;
        if (aVar2 != null) {
            aVar2.onDialogSelect(1, this.f15890c.getText().toString());
            this.f15893f.dismiss();
        }
    }

    @d0(Lifecycle.Event.ON_ANY)
    public void onLifecycleChanged(u uVar, Lifecycle.Event event) {
    }

    @d0(Lifecycle.Event.ON_PAUSE)
    public void onPause(u uVar) {
        this.f15895h = false;
    }

    @d0(Lifecycle.Event.ON_RESUME)
    public void onResume(u uVar) {
        this.f15895h = true;
    }
}
