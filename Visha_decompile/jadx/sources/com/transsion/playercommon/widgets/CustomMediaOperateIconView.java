package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.CustomIconItemData;
import com.transsion.playercommon.widgets.CustomMediaOperateIconView;

public class CustomMediaOperateIconView extends HorizontalScrollView {
    public LinearLayout b;
    public int c;
    public a d;

    public interface a {
        static void lambda$getItemClickListener$0(View view) {
        }

        default View.OnClickListener getItemClickListener(CustomIconItemData customIconItemData) {
            return new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    CustomMediaOperateIconView.a.lambda$getItemClickListener$0(view);
                }
            };
        }
    }

    public CustomMediaOperateIconView(Context context) {
        super(context);
        this.c = 16;
        b();
    }

    public final View a(CustomIconItemData customIconItemData) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_media_icon_layout, (ViewGroup) this.b, false);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.icon);
        TextView textView = (TextView) viewInflate.findViewById(R.id.text);
        if (customIconItemData.getType() == 5) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -2;
            imageView.setLayoutParams(layoutParams);
        }
        if (customIconItemData.isIconVisible()) {
            imageView.setVisibility(0);
            imageView.setImageResource(customIconItemData.getIconResId());
        } else {
            imageView.setVisibility(8);
        }
        if (customIconItemData.isTextVisible()) {
            textView.setVisibility(0);
            textView.setText(customIconItemData.getText());
        } else {
            textView.setVisibility(8);
        }
        viewInflate.setOnClickListener(this.d.getItemClickListener(customIconItemData));
        return viewInflate;
    }

    public View addItem(CustomIconItemData customIconItemData) {
        View viewA = a(customIconItemData);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.rightMargin = com.transsion.utils.a.d(getContext(), this.c);
        this.b.addView(viewA, layoutParams);
        return viewA;
    }

    public final void b() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.b = linearLayout;
        linearLayout.setOrientation(0);
        int childCount = this.b.getChildCount();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        if (childCount > 0) {
            layoutParams.leftMargin = com.transsion.utils.a.d(getContext(), this.c);
        }
        addView(this.b, layoutParams);
    }

    public int getItemCount() {
        return this.b.getChildCount();
    }

    public TextView getItemTextView(int i) {
        if (i < 0 || i >= this.b.getChildCount()) {
            return null;
        }
        return (TextView) getItemView(i).findViewById(R.id.text);
    }

    public View getItemView(int i) {
        if (i < 0 || i >= this.b.getChildCount()) {
            return null;
        }
        return this.b.getChildAt(i);
    }

    public int getItemViewIndex(View view) {
        return this.b.indexOfChild(view);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0010  */
    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void removeItem(int i) {
        if (i < 0 || i >= this.b.getChildCount()) {
            return;
        }
        this.b.removeViewAt(i);
    }

    public void setOnItemClick(a aVar) {
        this.d = aVar;
    }

    public void updateItem(int i, CustomIconItemData customIconItemData) {
        if (i < 0 || i >= this.b.getChildCount()) {
            return;
        }
        View viewA = a(customIconItemData);
        this.b.removeViewAt(i);
        this.b.addView(viewA, i);
    }

    public void updateItemIcon(View view, int i) {
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        if (imageView != null) {
            imageView.setImageResource(i);
        }
    }

    public void updateItemText(View view, String str) {
        TextView textView = (TextView) view.findViewById(R.id.text);
        if (textView != null) {
            textView.setText(str);
        }
    }

    public CustomMediaOperateIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 16;
        b();
    }

    public View addItem(CustomIconItemData customIconItemData, int i) {
        View viewA = a(customIconItemData);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.rightMargin = com.transsion.utils.a.d(getContext(), this.c);
        this.b.addView(viewA, i, layoutParams);
        return viewA;
    }

    public CustomMediaOperateIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 16;
        b();
    }
}
