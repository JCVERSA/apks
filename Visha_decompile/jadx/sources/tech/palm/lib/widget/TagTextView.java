package tech.palm.lib.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import defpackage.js0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import tech.palm.commonlib.R;

@SuppressLint({"AppCompatCustomView"})
public class TagTextView extends TextView {
    public static int TAGS_INDEX_AT_END = 1;
    public static int TAGS_INDEX_AT_START;
    public int b;
    public int c;
    public int d;
    public StringBuffer e;
    public Context f;
    public TextView g;
    public int h;

    public TagTextView(Context context) {
        super(context);
        this.b = R.drawable.shape_textview_tags_bg;
        this.c = 10;
        this.h = 0;
        this.f = context;
        b();
    }

    public static Bitmap a(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.buildDrawingCache();
        return view.getDrawingCache();
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final void b() {
        this.d = Color.parseColor("#FF08B1FF");
    }

    public void setMultiTagAndContent(@NonNull List<String> list, String str) {
        if (this.h == TAGS_INDEX_AT_START) {
            setTagStart(list, str);
        } else {
            setTagEnd(list, str);
        }
    }

    public void setSingleTagAndContent(@NonNull String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        setMultiTagAndContent(arrayList, str2);
    }

    public void setTagAnyway(int i, int i2, String str) {
        SpannableString spannableString = new SpannableString(str);
        View viewInflate = LayoutInflater.from(this.f).inflate(R.layout.layout_textview_tags, (ViewGroup) null);
        String strSubstring = str.substring(i, i2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_tags);
        this.g = textView;
        textView.setText(strSubstring);
        this.g.setTextSize(this.c);
        this.g.setTextColor(this.d);
        this.g.setBackgroundResource(this.b);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(a(viewInflate));
        bitmapDrawable.setBounds(0, 0, this.g.getWidth(), this.g.getHeight());
        spannableString.setSpan(new js0(bitmapDrawable), i, i2, 18);
        setText(spannableString);
        setGravity(16);
    }

    public void setTagEnd(List<String> list, String str) {
        int length = str.length();
        this.e = new StringBuffer(str);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.e.append(it.next());
        }
        SpannableString spannableString = new SpannableString(this.e);
        for (int i = 0; i < list.size(); i++) {
            String str2 = list.get(i);
            View viewInflate = LayoutInflater.from(this.f).inflate(R.layout.layout_textview_tags, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_tags);
            this.g = textView;
            textView.setText(str2);
            this.g.setTextSize(this.c);
            this.g.setTextColor(this.d);
            this.g.setBackgroundResource(this.b);
            Bitmap bitmapA = a(viewInflate);
            new BitmapDrawable(bitmapA).setBounds(0, 0, this.g.getWidth(), this.g.getHeight());
            spannableString.setSpan(new ImageSpan(getContext(), bitmapA), length, str2.length() + length, 18);
            length += str2.length();
        }
        setPadding(0, 0, 0, 5);
        setText(spannableString);
        setGravity(16);
    }

    public void setTagImageStart(Context context, int i, String str, int i2, int i3) {
        this.e = new StringBuffer("**" + str);
        SpannableString spannableString = new SpannableString(this.e);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i));
        bitmapDrawable.setBounds(0, 0, dp2px(context, (float) i2), dp2px(context, (float) i3));
        spannableString.setSpan(new js0(bitmapDrawable), 0, 2, 18);
        setText(spannableString);
        setGravity(16);
    }

    public void setTagStart(List<String> list, String str) {
        this.e = new StringBuffer();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.e.append(it.next());
        }
        this.e.append(str);
        SpannableString spannableString = new SpannableString(this.e);
        int length = 1;
        int length2 = 0;
        for (int i = 0; i < list.size(); i++) {
            String str2 = list.get(i);
            length2 += str2.length();
            View viewInflate = LayoutInflater.from(this.f).inflate(R.layout.layout_textview_tags, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_tags);
            this.g = textView;
            textView.setText(str2);
            this.g.setTextSize(this.c);
            this.g.setTextColor(this.d);
            this.g.setBackgroundResource(this.b);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(a(viewInflate));
            bitmapDrawable.setBounds(0, 0, this.g.getWidth(), this.g.getHeight());
            spannableString.setSpan(new js0(bitmapDrawable), length - 1, length2, 18);
            length += str2.length();
        }
        setPadding(0, 0, 0, 5);
        setText(spannableString);
        setGravity(16);
    }

    public void setTagTextColor(int i) {
        this.d = i;
    }

    public void setTagTextSize(int i) {
        this.c = i;
    }

    public void setTagsBackgroundStyle(int i) {
        this.b = i;
    }

    public void setTagsIndex(int i) {
        this.h = i;
    }

    public TagTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = R.drawable.shape_textview_tags_bg;
        this.c = 10;
        this.h = 0;
        this.f = context;
        b();
    }

    public TagTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = R.drawable.shape_textview_tags_bg;
        this.c = 10;
        this.h = 0;
        this.f = context;
        b();
    }
}
