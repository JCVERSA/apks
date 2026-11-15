package qa;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.R$id;

public class d extends Property {

    public static final Property f69583a = new d("childrenAlpha");

    private d(String str) {
        super(Float.class, str);
    }

    @Override
    public Float get(ViewGroup viewGroup) {
        Float f10 = (Float) viewGroup.getTag(R$id.mtrl_internal_children_alpha_tag);
        return f10 != null ? f10 : Float.valueOf(1.0f);
    }

    @Override
    public void set(ViewGroup viewGroup, Float f10) {
        float fFloatValue = f10.floatValue();
        viewGroup.setTag(R$id.mtrl_internal_children_alpha_tag, f10);
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            viewGroup.getChildAt(i10).setAlpha(fFloatValue);
        }
    }
}
