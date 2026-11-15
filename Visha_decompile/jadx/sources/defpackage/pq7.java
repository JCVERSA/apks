package defpackage;

import com.transsion.widgetslib.dialog.a;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import com.transsion.xuanniao.account.center.view.d;
import java.util.Calendar;

public class pq7 implements a.c {
    public final d a;

    public pq7(d dVar) {
        this.a = dVar;
    }

    @Override
    public void a(OSDateTimePicker oSDateTimePicker, Calendar calendar, int i, int i2, int i3, int i4, int i5, int i6) {
        this.a.a(i, i2 + 1, i3);
    }
}
