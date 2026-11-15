package com.yanzhenjie.recyclerview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.yanzhenjie.recyclerview.SwipeRecyclerView;
import com.yanzhenjie.recyclerview.x.R;

public class DefaultLoadMoreView extends LinearLayout implements SwipeRecyclerView.g, View.OnClickListener {
    public ProgressBar b;
    public TextView c;

    public DefaultLoadMoreView(Context context) {
        this(context, null);
    }

    @Override
    public void onClick(View view) {
    }

    @Override
    public void onLoadError(int i, String str) {
        setVisibility(0);
        this.b.setVisibility(8);
        this.c.setVisibility(0);
        TextView textView = this.c;
        if (TextUtils.isEmpty(str)) {
            str = getContext().getString(R.string.x_recycler_load_error);
        }
        textView.setText(str);
    }

    @Override
    public void onLoadFinish(boolean z, boolean z2) {
        if (z2) {
            setVisibility(4);
            return;
        }
        setVisibility(0);
        if (z) {
            this.b.setVisibility(8);
            this.c.setVisibility(0);
            this.c.setText(R.string.x_recycler_data_empty);
        } else {
            this.b.setVisibility(8);
            this.c.setVisibility(0);
            this.c.setText(R.string.x_recycler_more_not);
        }
    }

    @Override
    public void onLoading() {
        setVisibility(0);
        this.b.setVisibility(0);
        this.c.setVisibility(0);
        this.c.setText(R.string.x_recycler_load_more_message);
    }

    @Override
    public void onWaitToLoadMore(SwipeRecyclerView.f fVar) {
        setVisibility(0);
        this.b.setVisibility(8);
        this.c.setVisibility(0);
        this.c.setText(R.string.x_recycler_click_load_more);
    }

    public DefaultLoadMoreView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        setGravity(17);
        setVisibility(8);
        setMinimumHeight((int) (((double) (getResources().getDisplayMetrics().density * 60.0f)) + 0.5d));
        View.inflate(getContext(), R.layout.x_recycler_view_load_more, this);
        this.b = (ProgressBar) findViewById(R.id.progress_bar);
        this.c = (TextView) findViewById(R.id.tv_load_more_message);
        setOnClickListener(this);
    }
}
