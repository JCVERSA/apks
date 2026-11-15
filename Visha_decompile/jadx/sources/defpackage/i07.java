package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.transsion.tools.R;

public class i07 extends h07 {
    public i07(Context context) {
        super(context);
    }

    public View b(ViewGroup viewGroup) {
        LayoutInflater layoutInflater;
        hb0.markDirect("vd_hide_popup_show");
        if (viewGroup == null || (layoutInflater = this.b) == null) {
            return null;
        }
        View viewInflate = layoutInflater.inflate(R.layout.layout_new_feature_privite_room, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tv_text_2)).setText(pp3.c ? R.string.new_feature_private_room_text_2_pre : R.string.new_feature_private_room_text_2);
        viewGroup.addView(viewInflate);
        return viewInflate;
    }
}
