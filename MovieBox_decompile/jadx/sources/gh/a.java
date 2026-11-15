package gh;

import android.R;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public interface a {

    public static final class C0739a {
        public static TextView a(a aVar, View view) {
            Intrinsics.h(view, "view");
            if (view instanceof TextView) {
                if (view.getId() == -1) {
                    view.setId(R.id.message);
                } else if (view.getId() != 16908299) {
                    throw new IllegalArgumentException("You must set the ID value of TextView to android.R.id.message");
                }
                return (TextView) view;
            }
            if (!(view.findViewById(R.id.message) instanceof TextView)) {
                throw new IllegalArgumentException("You must include a TextView with an ID value of android.R.id.message");
            }
            View viewFindViewById = view.findViewById(R.id.message);
            Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type android.widget.TextView");
            return (TextView) viewFindViewById;
        }
    }

    boolean a();

    void b(View view);

    View c();

    void cancel();

    int getDuration();

    int getGravity();

    float getHorizontalMargin();

    float getVerticalMargin();

    int getXOffset();

    int getYOffset();

    void setDuration(int i10);

    void setGravity(int i10, int i11, int i12);

    void setMargin(float f10, float f11);

    void setText(CharSequence charSequence);

    void show();
}
