package com.yandex.div.internal.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.SelectView;
import defpackage.a15;
import defpackage.e74;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001:\u00014B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ7\u0010\u0013\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR0\u0010'\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/yandex/div/internal/widget/SelectView;", "Lcom/yandex/div/internal/widget/EllipsizedTextView;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "", "", "items", "Lzfb;", "setItems", "(Ljava/util/List;)V", "", "changed", "", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "onDetachedFromWindow", "()V", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "Landroid/view/accessibility/AccessibilityNodeInfo;", "info", "onInitializeAccessibilityNodeInfo", "(Landroid/view/accessibility/AccessibilityNodeInfo;)V", "Lkotlin/Function1;", "r", "Le74;", "getOnItemSelectedListener", "()Le74;", "setOnItemSelectedListener", "(Le74;)V", "onItemSelectedListener", "La15;", "s", "La15;", "getFocusTracker", "()La15;", "setFocusTracker", "(La15;)V", "focusTracker", "Lcom/yandex/div/internal/widget/SelectView$PopupWindow;", "t", "Lcom/yandex/div/internal/widget/SelectView$PopupWindow;", "popupWindow", "PopupWindow", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class SelectView extends EllipsizedTextView {

    public e74 onItemSelectedListener;

    public a15 focusTracker;

    public final PopupWindow popupWindow;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u00002\u00020\u0001:\u0001\u0016B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0015\u001a\u00060\u0012R\u00020\u00008\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/yandex/div/internal/widget/SelectView$PopupWindow;", "Landroidx/appcompat/widget/ListPopupWindow;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "getInputMethodMode", "()I", "Lzfb;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "()V", "c", "b", "Landroid/content/Context;", "Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;", "Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;", "()Lcom/yandex/div/internal/widget/SelectView$PopupWindow$a;", "adapter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class PopupWindow extends ListPopupWindow {

        public final Context context;

        public final a adapter;

        public final class a extends BaseAdapter {
            public List b = y71.k();

            public a() {
            }

            public final TextView a() {
                TextView textView = new TextView(PopupWindow.this.context, null, R.attr.spinnerDropDownItemStyle);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setSingleLine(true);
                DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
                y45.i(displayMetrics, "resources.displayMetrics");
                textView.setLayoutParams(new ViewGroup.LayoutParams(-1, BaseDivViewExtensionsKt.L(48, displayMetrics)));
                textView.setTextAlignment(5);
                return textView;
            }

            @Override
            public String getItem(int i) {
                return (String) this.b.get(i);
            }

            @Override
            public TextView getView(int i, View view, ViewGroup viewGroup) {
                if (view == null) {
                    view = a();
                }
                y45.h(view, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView = (TextView) view;
                textView.setText(getItem(i));
                return textView;
            }

            public final void d(List list) {
                y45.j(list, "newItems");
                this.b = list;
                notifyDataSetChanged();
            }

            @Override
            public int getCount() {
                return this.b.size();
            }

            @Override
            public long getItemId(int i) {
                return i;
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public PopupWindow(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0, 4, null);
            y45.j(context, "context");
        }

        public a getAdapter() {
            return this.adapter;
        }

        public void c() {
            ListView listView = getListView();
            if (listView != null) {
                listView.setSelectionAfterHeaderView();
            }
        }

        @Override
        public int getInputMethodMode() {
            return 1;
        }

        @Override
        public void show() {
            if (getListView() == null) {
                super.show();
                ListView listView = getListView();
                if (listView != null) {
                    listView.setChoiceMode(1);
                }
            }
            super.show();
        }

        public PopupWindow(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? androidx.appcompat.R.attr.listPopupWindowStyle : i);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PopupWindow(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            y45.j(context, "context");
            this.context = context;
            this.adapter = new a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectView(Context context) {
        super(context, null, 0, 6, null);
        y45.j(context, "context");
        setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SelectView.o(this.b, view);
            }
        });
        final PopupWindow popupWindow = new PopupWindow(context, null, 0, 6, null);
        popupWindow.setModal(true);
        popupWindow.setAnchorView(this);
        popupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                SelectView.p(this.b, popupWindow, adapterView, view, i, j);
            }
        });
        popupWindow.setOverlapAnchor(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(-1));
        popupWindow.setAdapter(popupWindow.getAdapter());
        this.popupWindow = popupWindow;
    }

    public static final void o(SelectView selectView, View view) {
        y45.j(selectView, "this$0");
        a15 a15Var = selectView.focusTracker;
        if (a15Var != null) {
            BaseDivViewExtensionsKt.G(selectView, a15Var);
        }
        selectView.popupWindow.c();
        selectView.popupWindow.show();
    }

    public static final void p(SelectView selectView, PopupWindow popupWindow, AdapterView adapterView, View view, int i, long j) {
        y45.j(selectView, "this$0");
        y45.j(popupWindow, "$this_apply");
        selectView.sendAccessibilityEvent(4);
        e74 e74Var = selectView.onItemSelectedListener;
        if (e74Var != null) {
            e74Var.invoke(Integer.valueOf(i));
        }
        popupWindow.dismiss();
    }

    public final a15 getFocusTracker() {
        return this.focusTracker;
    }

    public final e74 getOnItemSelectedListener() {
        return this.onItemSelectedListener;
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.popupWindow.isShowing()) {
            this.popupWindow.dismiss();
        }
    }

    @Override
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        y45.j(info, "info");
        super.onInitializeAccessibilityNodeInfo(info);
        info.setCanOpenPopup(true);
        info.setText(getText());
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (changed && this.popupWindow.isShowing()) {
            this.popupWindow.show();
        }
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        y45.j(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        if (visibility == 0 || !this.popupWindow.isShowing()) {
            return;
        }
        this.popupWindow.dismiss();
    }

    public final void setFocusTracker(a15 a15Var) {
        this.focusTracker = a15Var;
    }

    public final void setItems(List<String> items) {
        y45.j(items, "items");
        this.popupWindow.getAdapter().d(items);
    }

    public final void setOnItemSelectedListener(e74 e74Var) {
        this.onItemSelectedListener = e74Var;
    }
}
