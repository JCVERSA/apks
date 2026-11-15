package defpackage;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.R;
import com.transsion.playercommon.widgets.language.AILanguageAdapter;

public class k extends eb0 {
    public k(Context context, View view, int i, boolean z) {
        super(context, view, i, z);
        n(context.getResources().getDrawable(R.drawable.dark_popup_background, context.getTheme()));
    }

    @Override
    public BaseQuickAdapter g() {
        return new AILanguageAdapter(this.a, this.j);
    }

    @Override
    public int i() {
        return R.layout.video_popup_window_ai_language_layout;
    }

    @Override
    public RecyclerView k(View view) {
        return (RecyclerView) view.findViewById(R.id.recyclerView);
    }
}
