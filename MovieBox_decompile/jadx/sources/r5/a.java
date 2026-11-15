package r5;

import android.content.Context;
import android.graphics.Typeface;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.bigkoo.pickerview.R$layout;
import com.contrarywind.view.WheelView;
import java.util.Calendar;
import s5.c;

public class a {
    public ViewGroup A;
    public Context C;
    public String D;
    public String E;
    public String F;
    public boolean T;

    public c f70842a;

    public Calendar f70848g;

    public Calendar f70849h;

    public Calendar f70850i;

    public int f70851j;

    public int f70852k;

    public String f70855n;

    public String f70856o;

    public String f70857p;

    public String f70858q;

    public String f70859r;

    public String f70860s;

    public int f70861t;

    public int f70862u;

    public int f70863v;

    public int f70864w;

    public int f70865x;

    public int f70866y;

    public int f70867z;

    public boolean f70843b = false;

    public boolean f70844c = false;

    public boolean f70845d = false;

    public boolean f70846e = false;

    public boolean[] f70847f = {true, true, true, false, false, false};

    public boolean f70853l = false;

    public boolean f70854m = false;
    public int B = 17;
    public int G = -16417281;
    public int H = -16417281;
    public int I = ViewCompat.MEASURED_STATE_MASK;
    public int J = -1;
    public int K = -657931;
    public int L = 17;
    public int M = 18;
    public int N = 18;
    public int O = -6710887;
    public int P = -13421773;
    public int Q = -1118482;
    public int R = -1;
    public float S = 1.6f;
    public boolean U = true;
    public boolean V = true;
    public Typeface W = Typeface.MONOSPACE;
    public WheelView.DividerType X = WheelView.DividerType.FILL;

    public a(int i10) {
        if (i10 == 1) {
            this.f70867z = R$layout.pickerview_options;
        } else {
            this.f70867z = R$layout.pickerview_time;
        }
    }
}
