package com.transsion.onlinevideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.onlinevideo.R;

public class RecyclerPullLastView extends FrameLayout {
    public ImageView b;

    public RecyclerPullLastView(@NonNull Context context) {
        this(context, null);
    }

    public void initView(Context context) {
        this.b = (ImageView) View.inflate(context, R.layout.recycler_pull_last_view_for_history, this).findViewById(R.id.iv_arrow);
    }

    public RecyclerPullLastView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerPullLastView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initView(context);
    }
}
