package com.questionnaire.sdk.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.questionnaire.sdk.R;

public class ScoreView extends LinearLayout {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public b n;

    public class a implements View.OnClickListener {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public void onClick(View view) {
            ScoreView.this.e();
            ScoreView.this.setSelectedScores(this.b + 1);
            if (ScoreView.this.n != null) {
                ScoreView.this.n.a(this.b + 1);
            }
        }
    }

    public interface b {
        void a(int i);
    }

    public ScoreView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 76;
        this.c = 60;
        this.d = 8;
        this.e = -14452481;
        this.f = -2302235;
        this.i = -1;
        this.j = 28;
        this.k = 7;
        this.l = 0;
        this.m = true;
        d(context, attributeSet);
    }

    public void setSelectedScores(int i) {
        if (i <= 0) {
            Log.e("ScoreView", "setSelectedScores error, selectNum: " + i);
            return;
        }
        if (this.m) {
            for (int i2 = 0; i2 < i; i2++) {
                ((TextView) getChildAt(i2)).setBackgroundColor(this.e);
            }
        }
    }

    public final void d(Context context, AttributeSet attributeSet) {
        setOrientation(0);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.Questionsdk_ScoreView, 0, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.Questionsdk_ScoreView_item_width) {
                this.b = (int) typedArrayObtainStyledAttributes.getDimension(index, this.b);
            } else if (index == R.styleable.Questionsdk_ScoreView_item_height) {
                this.c = (int) typedArrayObtainStyledAttributes.getDimension(index, this.c);
            } else if (index == R.styleable.Questionsdk_ScoreView_item_margin_horizontal) {
                this.d = (int) typedArrayObtainStyledAttributes.getDimension(index, this.d);
            } else if (index == R.styleable.Questionsdk_ScoreView_selected_color) {
                this.e = typedArrayObtainStyledAttributes.getInt(index, this.e);
            } else if (index == R.styleable.Questionsdk_ScoreView_unselected_color) {
                this.f = typedArrayObtainStyledAttributes.getInt(index, this.f);
            } else if (index == R.styleable.Questionsdk_ScoreView_selected_image_id) {
                this.g = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
            } else if (index == R.styleable.Questionsdk_ScoreView_unselected_image_id) {
                this.h = typedArrayObtainStyledAttributes.getResourceId(index, this.h);
            } else if (index == R.styleable.Questionsdk_ScoreView_text_color) {
                this.i = typedArrayObtainStyledAttributes.getInt(index, this.i);
            } else if (index == R.styleable.Questionsdk_ScoreView_text_size) {
                this.j = (int) typedArrayObtainStyledAttributes.getDimension(index, this.j);
            } else if (index == R.styleable.Questionsdk_ScoreView_total_scores) {
                this.k = typedArrayObtainStyledAttributes.getInt(index, this.k);
            } else if (index == R.styleable.Questionsdk_ScoreView_selected_scores) {
                this.l = typedArrayObtainStyledAttributes.getInt(index, this.l);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((TextView) getChildAt(i)).setBackgroundColor(this.f);
        }
    }

    public final void f(TextView textView, int i) {
        if (textView != null) {
            textView.setOnClickListener(new a(i));
        }
    }

    public int getItemHeight() {
        return this.c;
    }

    public int getItemWidth() {
        return this.b;
    }

    public int getSelectedImageId() {
        return this.g;
    }

    public b getSelectedItemListener() {
        return this.n;
    }

    public int getUnSelectedImageId() {
        return this.h;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        setTotalScores(this.k);
        setSelectedScores(this.l);
    }

    public void setItemHeight(int i) {
        this.c = i;
    }

    public void setItemWidth(int i) {
        this.b = i;
    }

    public void setSelectedImageId(int i) {
        this.g = i;
    }

    public void setSelectedScoreListener(b bVar) {
        this.n = bVar;
    }

    public void setTotalScores(int i) {
        if (i <= 0) {
            Log.e("ScoreView", "setTotalScores error, totalNum: " + i);
            return;
        }
        removeAllViews();
        int i2 = 0;
        while (i2 < i) {
            TextView textView = new TextView(getContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.b, this.c);
            int i3 = this.d;
            layoutParams.leftMargin = i3;
            layoutParams.rightMargin = i3;
            textView.setLayoutParams(layoutParams);
            textView.setBackgroundColor(this.f);
            textView.setTextColor(this.i);
            textView.setTextSize(this.j);
            int i4 = i2 + 1;
            textView.setText(String.valueOf(i4));
            textView.setGravity(17);
            addView(textView);
            f(textView, i2);
            i2 = i4;
        }
    }

    public void setUnSelectedImageId(int i) {
        this.h = i;
    }

    public ScoreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 76;
        this.c = 60;
        this.d = 8;
        this.e = -14452481;
        this.f = -2302235;
        this.i = -1;
        this.j = 28;
        this.k = 7;
        this.l = 0;
        this.m = true;
        d(context, attributeSet);
    }
}
