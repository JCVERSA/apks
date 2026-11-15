package com.aliyun.subtitle;

import android.content.Context;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.HashMap;
import java.util.Map;

public class SubtitleView extends RelativeLayout {
    public static final String EXTRA_COLOR__STRING = "extra_color";
    public static final String EXTRA_GRAVITY__ENUM = "extra_gravity";
    public static final String EXTRA_LOCATION__INT = "extra_location";
    public static final String EXTRA_SIZE_PX__INT = "extra_size_px";
    private static final String TAG = "SubtitleView";
    private String mDefaultColor;
    private int mDefaultLocation;
    private float mDefaultPercent;
    private int mDefaultSize;
    private Map<String, TextView> mSubtitleView;
    private TextViewPool mTextViewPool;

    public static class DefaultValueBuilder {
        int mLocation = 24;
        int mTextSize = -1;
        float mTextSizePercent = 0.08f;
        String mTextColor = "#FFFFFFFF";

        public DefaultValueBuilder setColor(String str) {
            this.mTextColor = str;
            return this;
        }

        public DefaultValueBuilder setLocation(int i10) {
            this.mLocation = i10;
            return this;
        }

        public DefaultValueBuilder setSize(int i10) {
            this.mTextSize = i10;
            return this;
        }

        public DefaultValueBuilder setSizePercent(float f10) {
            this.mTextSizePercent = f10;
            return this;
        }
    }

    public static class Subtitle {
        public String content;
        public Map<String, Object> extraInfo;

        public String f17651id;
    }

    public SubtitleView(Context context) {
        super(context);
        this.mSubtitleView = new HashMap();
        init();
    }

    private RelativeLayout.LayoutParams getFinalParam(Subtitle subtitle) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        LocationStyle.setLocation(layoutParams, subtitle.extraInfo, this.mDefaultLocation);
        return layoutParams;
    }

    private SpannableStringBuilder getFinalText(Subtitle subtitle) {
        String str;
        if (subtitle == null || (str = subtitle.content) == null) {
            return new SpannableStringBuilder("");
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Html.fromHtml(str.replace("\n", "<br>")));
        Map<String, Object> map = subtitle.extraInfo;
        TextSytle.setTextColor(spannableStringBuilder, map, this.mDefaultColor);
        TextSytle.setTextSize(spannableStringBuilder, map, this.mDefaultSize);
        return spannableStringBuilder;
    }

    private TextView getFinalTextView(Subtitle subtitle) {
        TextView textViewObtain = this.mTextViewPool.obtain();
        Map<String, Object> map = subtitle.extraInfo;
        if (map == null) {
            textViewObtain.setGravity(17);
        } else {
            map.containsKey(EXTRA_GRAVITY__ENUM);
        }
        return textViewObtain;
    }

    private void init() {
        this.mTextViewPool = new TextViewPool(getContext());
        setDefaultValue(new DefaultValueBuilder());
    }

    public void dismiss(String str) {
        this.mTextViewPool.recycle(this.mSubtitleView.remove(str));
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        int i14 = i13 - i11;
        if (this.mDefaultSize > 0) {
            return;
        }
        float f10 = this.mDefaultPercent;
        if (f10 > 0.0f) {
            this.mDefaultSize = (int) (f10 * i14);
        }
        if (this.mDefaultSize <= 0) {
            this.mDefaultSize = 20;
        }
    }

    public void setDefaultValue(DefaultValueBuilder defaultValueBuilder) {
        this.mDefaultLocation = defaultValueBuilder.mLocation;
        this.mDefaultPercent = defaultValueBuilder.mTextSizePercent;
        this.mDefaultSize = defaultValueBuilder.mTextSize;
        this.mDefaultColor = defaultValueBuilder.mTextColor;
    }

    public void show(Subtitle subtitle) {
        SpannableStringBuilder finalText = getFinalText(subtitle);
        RelativeLayout.LayoutParams finalParam = getFinalParam(subtitle);
        TextView finalTextView = getFinalTextView(subtitle);
        finalTextView.setLayoutParams(finalParam);
        finalTextView.setText(finalText);
        ViewParent parent = finalTextView.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(finalTextView);
        }
        addView(finalTextView);
        this.mSubtitleView.put(subtitle.f17651id, finalTextView);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSubtitleView = new HashMap();
        init();
    }

    public SubtitleView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mSubtitleView = new HashMap();
        init();
    }
}
