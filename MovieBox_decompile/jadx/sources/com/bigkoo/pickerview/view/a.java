package com.bigkoo.pickerview.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$layout;
import com.bigkoo.pickerview.R$string;
import java.text.ParseException;
import java.util.Calendar;
import s5.c;

public class a extends BasePickerView implements View.OnClickListener {

    private b f19350p;

    public a(r5.a aVar) {
        super(aVar.C);
        this.f19334e = aVar;
        y(aVar.C);
    }

    private void D() {
        b bVar = this.f19350p;
        r5.a aVar = this.f19334e;
        bVar.E(aVar.f70849h, aVar.f70850i);
        x();
    }

    private void E() {
        this.f19350p.H(this.f19334e.f70851j);
        this.f19350p.x(this.f19334e.f70852k);
    }

    private void F() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = this.f19334e.f70848g;
        if (calendar2 == null) {
            calendar.setTimeInMillis(System.currentTimeMillis());
            i10 = calendar.get(1);
            i11 = calendar.get(2);
            i12 = calendar.get(5);
            i13 = calendar.get(11);
            i14 = calendar.get(12);
            i15 = calendar.get(13);
        } else {
            i10 = calendar2.get(1);
            i11 = this.f19334e.f70848g.get(2);
            i12 = this.f19334e.f70848g.get(5);
            i13 = this.f19334e.f70848g.get(11);
            i14 = this.f19334e.f70848g.get(12);
            i15 = this.f19334e.f70848g.get(13);
        }
        this.f19350p.D(i10, i11, i12, i13, i14, i15);
    }

    private void x() {
        r5.a aVar = this.f19334e;
        Calendar calendar = aVar.f70849h;
        if (calendar == null || aVar.f70850i == null) {
            if (calendar != null) {
                aVar.f70848g = calendar;
                return;
            }
            Calendar calendar2 = aVar.f70850i;
            if (calendar2 != null) {
                aVar.f70848g = calendar2;
                return;
            }
            return;
        }
        Calendar calendar3 = aVar.f70848g;
        if (calendar3 == null || calendar3.getTimeInMillis() < this.f19334e.f70849h.getTimeInMillis() || this.f19334e.f70848g.getTimeInMillis() > this.f19334e.f70850i.getTimeInMillis()) {
            r5.a aVar2 = this.f19334e;
            aVar2.f70848g = aVar2.f70849h;
        }
    }

    private void y(Context context) {
        s();
        o();
        n();
        this.f19334e.getClass();
        LayoutInflater.from(context).inflate(R$layout.pickerview_time, this.f19331b);
        TextView textView = (TextView) findViewById(R$id.tvTitle);
        TextView textView2 = (TextView) findViewById(R$id.btnSubmit);
        TextView textView3 = (TextView) findViewById(R$id.tv_ok);
        TextView textView4 = (TextView) findViewById(R$id.btnCancel);
        textView2.setTag("submit");
        textView3.setTag("submit");
        textView4.setTag("cancel");
        textView2.setOnClickListener(this);
        textView3.setOnClickListener(this);
        textView4.setOnClickListener(this);
        textView2.setText(TextUtils.isEmpty(this.f19334e.D) ? context.getResources().getString(R$string.pickerview_submit) : this.f19334e.D);
        textView4.setText(TextUtils.isEmpty(this.f19334e.E) ? context.getResources().getString(R$string.pickerview_cancel) : this.f19334e.E);
        textView.setText(TextUtils.isEmpty(this.f19334e.F) ? "" : this.f19334e.F);
        textView.setTextColor(this.f19334e.I);
        textView.setTextSize(this.f19334e.M);
        z((LinearLayout) findViewById(R$id.timepicker));
    }

    private void z(LinearLayout linearLayout) {
        int i10;
        r5.a aVar = this.f19334e;
        this.f19350p = new b(linearLayout, aVar.f70847f, aVar.B, aVar.N);
        this.f19334e.getClass();
        this.f19350p.C(this.f19334e.f70854m);
        r5.a aVar2 = this.f19334e;
        int i11 = aVar2.f70851j;
        if (i11 != 0 && (i10 = aVar2.f70852k) != 0 && i11 <= i10) {
            E();
        }
        r5.a aVar3 = this.f19334e;
        Calendar calendar = aVar3.f70849h;
        if (calendar == null || aVar3.f70850i == null) {
            if (calendar == null) {
                Calendar calendar2 = aVar3.f70850i;
                if (calendar2 != null && calendar2.get(1) > 2100) {
                    throw new IllegalArgumentException("The endDate should not be later than 2100");
                }
                D();
            } else {
                if (calendar.get(1) < 1900) {
                    throw new IllegalArgumentException("The startDate can not as early as 1900");
                }
                D();
            }
        } else {
            if (calendar.getTimeInMillis() > this.f19334e.f70850i.getTimeInMillis()) {
                throw new IllegalArgumentException("startDate can't be later than endDate");
            }
            D();
        }
        F();
        b bVar = this.f19350p;
        r5.a aVar4 = this.f19334e;
        bVar.y(aVar4.f70855n, aVar4.f70856o, aVar4.f70857p, aVar4.f70858q, aVar4.f70859r, aVar4.f70860s);
        b bVar2 = this.f19350p;
        r5.a aVar5 = this.f19334e;
        bVar2.M(aVar5.f70861t, aVar5.f70862u, aVar5.f70863v, aVar5.f70864w, aVar5.f70865x, aVar5.f70866y);
        u(this.f19334e.U);
        this.f19350p.s(this.f19334e.f70853l);
        this.f19350p.u(this.f19334e.Q);
        this.f19350p.w(this.f19334e.X);
        this.f19350p.A(this.f19334e.S);
        this.f19350p.L(this.f19334e.O);
        this.f19350p.J(this.f19334e.P);
        this.f19350p.p(this.f19334e.V);
    }

    public void A() {
        if (this.f19334e.f70842a != null) {
            try {
                this.f19334e.f70842a.a(b.f19351y.parse(this.f19350p.o()), this.f19341l);
            } catch (ParseException e10) {
                e10.printStackTrace();
            }
        }
    }

    public void B(Calendar calendar) {
        this.f19334e.f70848g = calendar;
        F();
    }

    public void C() {
        c cVar = this.f19334e.f70842a;
        if (cVar != null) {
            cVar.a(null, this.f19341l);
        }
    }

    @Override
    public void onClick(View view) {
        if (((String) view.getTag()).equals("submit")) {
            A();
        } else {
            C();
        }
        f();
    }

    @Override
    public boolean p() {
        return this.f19334e.T;
    }
}
