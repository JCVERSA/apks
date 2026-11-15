package com.yandex.div.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import defpackage.b5;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001:\u0001=B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\fH\u0000¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0017\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001cH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ)\u0010%\u001a\u00020\f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010#H\u0014¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020 2\u0006\u0010(\u001a\u00020'H\u0014¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020 2\u0006\u0010(\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\fH\u0002¢\u0006\u0004\b.\u0010\u0011R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\n0/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\n0/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00101R\u001a\u00108\u001a\b\u0018\u000105R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006>"}, d2 = {"Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;", "Lcom/yandex/div/internal/widget/EllipsizedTextView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/div/core/view2/spannable/a;", TtmlNode.TAG_SPAN, "Lzfb;", "addImageSpan$div_release", "(Lcom/yandex/div/core/view2/spannable/a;)V", "addImageSpan", "clearImageSpans$div_release", "()V", "clearImageSpans", "", "text", "Landroid/widget/TextView$BufferType;", "type", "setText", "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V", "contentDescription", "setContentDescription", "(Ljava/lang/CharSequence;)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "gainFocus", ICode.CALL.CALL_KEY_DIRECTION, "Landroid/graphics/Rect;", "previouslyFocusedRect", "onFocusChanged", "(ZILandroid/graphics/Rect;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "dispatchHoverEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/view/KeyEvent;", "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z", CmcdData.OBJECT_TYPE_MANIFEST, "", "r", "Ljava/util/List;", "accessibleImageSpans", "s", "imageSpans", "Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;", "t", "Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans$a;", "spanHelper", "", "u", "Ljava/lang/String;", "_contentDescription", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class TextViewWithAccessibleSpans extends EllipsizedTextView {

    public final List accessibleImageSpans;

    public final List imageSpans;

    public final a spanHelper;

    public String _contentDescription;

    public final class a extends ExploreByTouchHelper {
        public a() {
            super(TextViewWithAccessibleSpans.this);
        }

        public final com.yandex.div.core.view2.spannable.a a(int i) {
            if (i != -1 && TextViewWithAccessibleSpans.this.accessibleImageSpans.size() != 0 && i < TextViewWithAccessibleSpans.this.accessibleImageSpans.size() && i >= 0) {
                return (com.yandex.div.core.view2.spannable.a) TextViewWithAccessibleSpans.this.accessibleImageSpans.get(i);
            }
            return null;
        }

        @Override
        public int getVirtualViewAt(float f, float f2) {
            RectF rectF = new RectF();
            List list = TextViewWithAccessibleSpans.this.accessibleImageSpans;
            TextViewWithAccessibleSpans textViewWithAccessibleSpans = TextViewWithAccessibleSpans.this;
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                ((com.yandex.div.core.view2.spannable.a) obj).e(rectF).offset(textViewWithAccessibleSpans.getPaddingLeft(), textViewWithAccessibleSpans.getPaddingTop());
                if (rectF.contains(f, f2)) {
                    return i;
                }
                i = i2;
            }
            return -1;
        }

        @Override
        public void getVisibleVirtualViews(List list) {
            y45.j(list, "virtualViewIds");
            int i = 0;
            for (Object obj : TextViewWithAccessibleSpans.this.accessibleImageSpans) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                list.add(Integer.valueOf(i));
                i = i2;
            }
        }

        @Override
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            com.yandex.div.core.view2.spannable.a.C0293a c0293aC;
            com.yandex.div.core.view2.spannable.a.b bVarC;
            com.yandex.div.core.view2.spannable.a aVarA = a(i);
            if (aVarA == null || (c0293aC = aVarA.c()) == null || (bVarC = c0293aC.c()) == null || i2 != 16) {
                return false;
            }
            bVarC.a();
            return true;
        }

        @Override
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String strA;
            y45.j(accessibilityNodeInfoCompat, "node");
            com.yandex.div.core.view2.spannable.a aVarA = a(i);
            if (aVarA == null) {
                return;
            }
            com.yandex.div.core.view2.spannable.a.C0293a c0293aC = aVarA.c();
            if (c0293aC == null || (strA = c0293aC.a()) == null) {
                strA = "";
            }
            accessibilityNodeInfoCompat.setClassName(strA);
            accessibilityNodeInfoCompat.setPackageName(TextViewWithAccessibleSpans.this.getContext().getPackageName());
            Rect rectD = aVarA.d(new Rect());
            TextViewWithAccessibleSpans textViewWithAccessibleSpans = TextViewWithAccessibleSpans.this;
            rectD.offset(textViewWithAccessibleSpans.getPaddingLeft(), textViewWithAccessibleSpans.getPaddingTop());
            com.yandex.div.core.view2.spannable.a.C0293a c0293aC2 = aVarA.c();
            accessibilityNodeInfoCompat.setContentDescription(c0293aC2 != null ? c0293aC2.b() : null);
            com.yandex.div.core.view2.spannable.a.C0293a c0293aC3 = aVarA.c();
            if ((c0293aC3 != null ? c0293aC3.c() : null) == null) {
                accessibilityNodeInfoCompat.setClickable(false);
            } else {
                accessibilityNodeInfoCompat.setClickable(true);
                accessibilityNodeInfoCompat.addAction(16);
            }
            accessibilityNodeInfoCompat.setBoundsInParent(rectD);
        }
    }

    public TextViewWithAccessibleSpans(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0033  */
    public final void addImageSpan$div_release(com.yandex.div.core.view2.spannable.a span) {
        y45.j(span, TtmlNode.TAG_SPAN);
        if (y45.e(b5.b.b(), Boolean.TRUE)) {
            this.imageSpans.add(span);
            com.yandex.div.core.view2.spannable.a.C0293a c0293aC = span.c();
            if ((c0293aC != null ? c0293aC.b() : null) != null) {
                this.accessibleImageSpans.add(span);
            } else {
                com.yandex.div.core.view2.spannable.a.C0293a c0293aC2 = span.c();
                if ((c0293aC2 != null ? c0293aC2.c() : null) != null) {
                    this.accessibleImageSpans.add(span);
                }
            }
            a aVar = this.spanHelper;
            if (aVar != null) {
                aVar.invalidateVirtualView(this.accessibleImageSpans.size() - 1);
            }
        }
    }

    public final void clearImageSpans$div_release() {
        this.accessibleImageSpans.clear();
        this.imageSpans.clear();
        a aVar = this.spanHelper;
        if (aVar != null) {
            aVar.invalidateRoot();
        }
        m();
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        a aVar = this.spanHelper;
        return (aVar != null && aVar.dispatchHoverEvent(event)) || super.dispatchHoverEvent(event);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        a aVar = this.spanHelper;
        return (aVar != null && aVar.dispatchKeyEvent(event)) || super.dispatchKeyEvent(event);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00b7  */
    public final void m() {
        String string;
        if (!y45.e(b5.b.b(), Boolean.TRUE)) {
            super.setContentDescription(this._contentDescription);
            return;
        }
        List list = this.imageSpans;
        if (list == null || this._contentDescription != null) {
            string = this._contentDescription;
        } else {
            string = null;
            string = null;
            if (list.size() != 0 && getText().length() != 0) {
                CharSequence text = getText();
                SpannableString spannableString = text instanceof SpannableString ? (SpannableString) text : null;
                if (spannableString != null) {
                    List list2 = this.imageSpans;
                    ArrayList arrayList = new ArrayList(z71.v(list2, 10));
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(Integer.valueOf(spannableString.getSpanStart((com.yandex.div.core.view2.spannable.a) it.next())));
                    }
                    List listT0 = i81.T0(arrayList, new Comparator() {
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override
                        public final int compare(T t, T t2) {
                            return kotlin.comparisons.a.d(Integer.valueOf(((Number) t2).intValue()), Integer.valueOf(((Number) t).intValue()));
                        }
                    });
                    StringBuilder sb = new StringBuilder();
                    Iterator it2 = listT0.iterator();
                    int i = 0;
                    while (it2.hasNext()) {
                        int iIntValue = ((Number) it2.next()).intValue();
                        sb.append(getText().subSequence(i, iIntValue));
                        i = iIntValue + 1;
                    }
                    sb.append(getText().subSequence(i, getText().length()));
                    string = sb.toString();
                    if (string == null) {
                        string = getText().toString();
                    }
                } else {
                    string = getText().toString();
                }
            }
        }
        super.setContentDescription(string);
    }

    @Override
    public void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        int i = 0;
        for (Object obj : this.accessibleImageSpans) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            a aVar = this.spanHelper;
            if (aVar != null) {
                aVar.invalidateVirtualView(i);
            }
            i = i2;
        }
    }

    @Override
    public void onFocusChanged(boolean gainFocus, int direction, Rect previouslyFocusedRect) {
        super.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        a aVar = this.spanHelper;
        if (aVar != null) {
            aVar.onFocusChanged(gainFocus, direction, previouslyFocusedRect);
        }
    }

    @Override
    public void setContentDescription(CharSequence contentDescription) {
        this._contentDescription = contentDescription != null ? contentDescription.toString() : null;
        super.setContentDescription(contentDescription);
    }

    @Override
    public void setText(CharSequence text, TextView.BufferType type) {
        super.setText(text, type);
        m();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextViewWithAccessibleSpans(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.accessibleImageSpans = new ArrayList();
        this.imageSpans = new ArrayList();
        b5.a aVar = b5.b;
        aVar.a(context);
        if (!y45.e(aVar.b(), Boolean.TRUE)) {
            this.spanHelper = null;
            return;
        }
        a aVar2 = new a();
        this.spanHelper = aVar2;
        ViewCompat.setAccessibilityDelegate(this, aVar2);
        setAccessibilityLiveRegion(1);
    }
}
