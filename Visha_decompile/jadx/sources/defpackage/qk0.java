package defpackage;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.questionnaire.sdk.R;

public class qk0 {
    public ImageView a;
    public ImageView b;
    public c c;
    public View d;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            c cVar = qk0.this.c;
            if (cVar != null) {
                cVar.a();
                ((ViewGroup) qk0.this.d.getParent()).removeView(qk0.this.d);
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            c cVar = qk0.this.c;
            if (cVar != null) {
                cVar.onClose();
                ((ViewGroup) qk0.this.d.getParent()).removeView(qk0.this.d);
            }
        }
    }

    public interface c {
        void a();

        void onClose();
    }

    public final void b(Activity activity) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        this.d = activity.getLayoutInflater().inflate(R.layout.questionsdk_bubble_view, (ViewGroup) null);
        int i = (int) (((double) activity.getResources().getDisplayMetrics().heightPixels) * 0.82d);
        int i2 = (int) (((double) activity.getResources().getDisplayMetrics().widthPixels) * 0.75d);
        layoutParams.topMargin = i;
        layoutParams.setMarginStart(i2);
        activity.addContentView(this.d, layoutParams);
        this.a = (ImageView) activity.findViewById(R.id.questionsdk_bubble);
        this.b = (ImageView) activity.findViewById(R.id.questionsdk_bubble_close);
    }

    public final void c() {
        ImageView imageView = this.a;
        if (imageView == null || this.b == null) {
            return;
        }
        imageView.setOnClickListener(new a());
        this.b.setOnClickListener(new b());
    }

    public void d(Activity activity) {
        b(activity);
        c();
    }

    public void setOnClickListener(c cVar) {
        this.c = cVar;
    }
}
