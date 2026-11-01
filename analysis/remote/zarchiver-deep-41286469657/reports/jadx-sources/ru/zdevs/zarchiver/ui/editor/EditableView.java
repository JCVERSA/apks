package ru.zdevs.zarchiver.ui.editor;

import android.R;
import android.app.RemoteAction;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Selection;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContentInfo;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassification;
import android.widget.TextView;
import java.util.Arrays;
import java.util.Iterator;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZTextEditor;

public class EditableView extends View implements c1.a, ru.zdevs.zarchiver.ui.editor.e, MenuItem.OnMenuItemClickListener, ru.zdevs.zarchiver.ui.editor.d.b {

    public static final int f1811y = 0;

    public final int f1812a;

    public final int f1813b;

    public final int[] f1814c;

    public final int[] f1815d;

    public final ru.zdevs.zarchiver.ui.editor.b f1816e;

    public final ru.zdevs.zarchiver.ui.editor.c f1817f;

    public final c1.b f1818g;

    public final TextKeyListener f1819h;

    public final ru.zdevs.zarchiver.ui.editor.f f1820i;

    public final InputMethodManager f1821j;

    public final c1.e f1822k;

    public final Paint f1823l;

    public ActionMode f1824m;

    public int f1825n;

    public final ru.zdevs.zarchiver.ui.editor.d f1826o;

    public final Rect f1827p;

    public final d f1828q;

    public boolean f1829r;

    public boolean f1830s;

    public boolean f1831t;

    public f f1832u;

    public int f1833v;

    public c1.d f1834w;

    public final a f1835x;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            c1.d dVar = EditableView.this.f1834w;
            if (dVar != null) {
                dVar.c();
            }
        }
    }

    public class b implements ActionMode.Callback {
        public b(int i2) {
            EditableView.this.f1817f.g(i2 == 0 ? 2 : 1);
            EditableView.this.invalidate();
        }

        @Override
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return EditableView.this.onMenuItemClick(menuItem);
        }

        @Override
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            actionMode.setTitle((CharSequence) null);
            actionMode.setSubtitle((CharSequence) null);
            if (Build.VERSION.SDK_INT >= 16) {
                actionMode.setTitleOptionalHint(true);
            }
            int i2 = EditableView.f1811y;
            EditableView.this.e(menu);
            return true;
        }

        @Override
        public final void onDestroyActionMode(ActionMode actionMode) {
            EditableView editableView = EditableView.this;
            editableView.f1817f.g(0);
            editableView.f1824m = null;
            editableView.postInvalidate();
        }

        @Override
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            EditableView.b(EditableView.this, menu);
            return true;
        }
    }

    public class c extends ActionMode.Callback2 {

        public final boolean f1838a;

        public final Object f1839b;

        public c(int i2, Object obj) {
            boolean z2 = i2 == 0;
            this.f1838a = z2;
            this.f1839b = obj;
            EditableView.this.f1817f.g(z2 ? 2 : 1);
            EditableView.this.invalidate();
        }

        public final void a(Menu menu, RemoteAction remoteAction, int i2, int i3) {
            MenuItem showAsActionFlags = menu.add(R.id.textAssist, 0, i2, remoteAction.getTitle()).setContentDescription(remoteAction.getContentDescription()).setShowAsActionFlags(i3);
            if (Build.VERSION.SDK_INT < 28 || !remoteAction.shouldShowIcon()) {
                return;
            }
            showAsActionFlags.setIcon(remoteAction.getIcon().loadDrawable(EditableView.this.getContext()));
        }

        @Override
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            boolean z2;
            Object obj;
            if (menuItem.getGroupId() == 16908353) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 < 26 || (obj = this.f1839b) == null) {
                    z2 = false;
                } else {
                    TextClassification textClassification = (TextClassification) obj;
                    if (menuItem.getItemId() == 16908353) {
                        View.OnClickListener onClickListener = textClassification.getOnClickListener();
                        if (onClickListener != null) {
                            onClickListener.onClick(menuItem.getActionView());
                        }
                    } else if (i2 >= 28) {
                        try {
                            textClassification.getActions().get(menuItem.getOrder() - 20).getActionIntent().send();
                        } catch (Exception unused) {
                        }
                    }
                    z2 = true;
                }
                if (z2) {
                    return true;
                }
            }
            return EditableView.this.onMenuItemClick(menuItem);
        }

        @Override
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            Object obj;
            actionMode.setTitle((CharSequence) null);
            actionMode.setSubtitle((CharSequence) null);
            actionMode.setTitleOptionalHint(true);
            EditableView editableView = EditableView.this;
            int i2 = EditableView.f1811y;
            editableView.e(menu);
            EditableView.b(EditableView.this, menu);
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 26 && (obj = this.f1839b) != null) {
                TextClassification textClassification = (TextClassification) obj;
                if (i3 >= 28 && !textClassification.getActions().isEmpty()) {
                    a(menu, textClassification.getActions().get(0), 20, 2);
                } else if ((textClassification.getIcon() != null || !TextUtils.isEmpty(textClassification.getLabel())) && (textClassification.getIntent() != null || textClassification.getOnClickListener() != null)) {
                    menu.add(R.id.textAssist, R.id.textAssist, 10, textClassification.getLabel()).setIcon(textClassification.getIcon()).setShowAsActionFlags(2).setIntent(textClassification.getIntent());
                }
                if (i3 >= 28) {
                    int size = textClassification.getActions().size();
                    for (int i4 = 1; i4 < size; i4++) {
                        a(menu, textClassification.getActions().get(i4), i4 + 20, 0);
                    }
                }
            }
            return true;
        }

        @Override
        public final void onDestroyActionMode(ActionMode actionMode) {
            EditableView.this.f1817f.g(0);
            EditableView editableView = EditableView.this;
            editableView.f1824m = null;
            editableView.postInvalidate();
        }

        @Override
        public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            int i2;
            int i3;
            int i4;
            int i5;
            int[] iArr;
            int i6;
            EditableView editableView = EditableView.this;
            boolean z2 = false;
            if (editableView.f1816e.f1861g[0] == -1) {
                return;
            }
            int iC = editableView.f1822k.c();
            EditableView editableView2 = EditableView.this;
            int[] iArr2 = editableView2.f1815d;
            int width = iArr2[0];
            if (width == -1 || (i6 = iArr2[1]) == -1) {
                width = iArr2[2];
                if (width == -1 || (i3 = iArr2[3]) == -1) {
                    width = editableView2.getWidth() / 2;
                    i2 = -iC;
                } else {
                    i2 = i3 - iC;
                    z2 = true;
                }
            } else {
                i2 = i6 - iC;
            }
            if (!this.f1838a || z2 || (i4 = (iArr = EditableView.this.f1815d)[2]) == -1 || (i5 = iArr[3]) == -1) {
                i4 = width + 1;
                i5 = i2 + iC;
            }
            rect.set(width, i2, i4, i5);
        }

        @Override
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            EditableView.b(EditableView.this, menu);
            return true;
        }
    }

    public class d implements Runnable {

        public boolean f1841a = true;

        public boolean f1842b = true;

        public boolean f1843c = true;

        public d() {
        }

        public final void a() {
            if (this.f1841a) {
                return;
            }
            EditableView.this.removeCallbacks(this);
            this.f1841a = true;
            this.f1843c = true;
        }

        @Override
        public final void run() {
            if (this.f1841a) {
                return;
            }
            EditableView editableView = EditableView.this;
            editableView.removeCallbacks(this);
            Rect rect = editableView.f1827p;
            if (rect.right == -1 || rect.top == -1 || !this.f1842b) {
                this.f1841a = true;
                return;
            }
            this.f1843c = !this.f1843c;
            editableView.invalidate(rect);
            editableView.postDelayed(this, 500L);
        }
    }

    public static class e {

        public final EditableView f1845a;

        public final int f1846b;

        public final int f1847c;

        public e(EditableView editableView, int i2, int i3) {
            this.f1845a = editableView;
            this.f1846b = i2;
            this.f1847c = i3;
        }
    }

    public interface f {
    }

    public static class g extends View.BaseSavedState {
        public static final Parcelable.Creator<g> CREATOR = new a();

        public ru.zdevs.zarchiver.ui.editor.b f1848a;

        public final ru.zdevs.zarchiver.ui.editor.b.a f1849b;

        public int f1850c;

        public int f1851d;

        public class a implements Parcelable.Creator<g> {
            @Override
            public final g createFromParcel(Parcel parcel) {
                return new g(parcel);
            }

            @Override
            public final g[] newArray(int i2) {
                return new g[i2];
            }
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "SavedState";
        }

        @Override
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f1850c);
            parcel.writeInt(this.f1851d);
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1848a;
            synchronized (bVar) {
                parcel.writeInt(bVar.f1856b.size());
                Iterator it = bVar.f1856b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ru.zdevs.zarchiver.ui.editor.b.d dVar = (ru.zdevs.zarchiver.ui.editor.b.d) it.next();
                        parcel.writeInt(dVar.f1881d);
                        parcel.writeInt(dVar.f1879b);
                        int i3 = dVar.f1881d;
                        int i4 = i3 % 2;
                        int i5 = i3 - i4;
                        for (int i6 = 0; i6 < i5; i6 += 2) {
                            char[] cArr = dVar.f1880c;
                            parcel.writeInt((cArr[i6 + 1] << 16) | cArr[i6]);
                        }
                        if (i4 == 1) {
                            parcel.writeInt(dVar.f1880c[i5]);
                        }
                    } else {
                        parcel.writeInt(bVar.f1861g[0]);
                        parcel.writeInt(bVar.f1861g[1]);
                    }
                }
            }
        }

        public g(Parcel parcel) {
            super(parcel);
            this.f1850c = parcel.readInt();
            this.f1851d = parcel.readInt();
            int i2 = parcel.readInt();
            ru.zdevs.zarchiver.ui.editor.b.a aVar = new ru.zdevs.zarchiver.ui.editor.b.a(i2);
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int i5 = parcel.readInt();
                int i6 = i5 % 2;
                int i7 = i5 - i6;
                ru.zdevs.zarchiver.ui.editor.b.d dVar = new ru.zdevs.zarchiver.ui.editor.b.d(i5, parcel.readInt());
                for (int i8 = 0; i8 < i7; i8 += 2) {
                    int i9 = parcel.readInt();
                    char[] cArr = dVar.f1880c;
                    cArr[i8] = (char) i9;
                    cArr[i8 + 1] = (char) (i9 >> 16);
                }
                if (i6 == 1) {
                    dVar.f1880c[i7] = (char) parcel.readInt();
                }
                dVar.f1881d = i5;
                aVar.f1868a.add(dVar);
                i3 += i5;
            }
            aVar.f1870c = i3;
            int i10 = parcel.readInt();
            int[] iArr = aVar.f1869b;
            iArr[0] = i10;
            iArr[1] = parcel.readInt();
            this.f1849b = aVar;
        }
    }

    public EditableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1835x = new a();
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.f1812a = (int) TypedValue.applyDimension(1, 1.0f, Resources.getSystem().getDisplayMetrics());
        this.f1813b = (int) TypedValue.applyDimension(1, 1.5f, Resources.getSystem().getDisplayMetrics());
        this.f1814c = new int[2];
        this.f1815d = new int[4];
        c1.e eVar = new c1.e(context);
        this.f1822k = eVar;
        ru.zdevs.zarchiver.ui.editor.b bVar = new ru.zdevs.zarchiver.ui.editor.b(this);
        this.f1816e = bVar;
        this.f1817f = new ru.zdevs.zarchiver.ui.editor.c(context, this, eVar);
        this.f1818g = new c1.b(this, bVar);
        this.f1819h = TextKeyListener.getInstance();
        this.f1820i = new ru.zdevs.zarchiver.ui.editor.f();
        this.f1821j = (InputMethodManager) context.getSystemService("input_method");
        Paint paint = new Paint();
        this.f1823l = paint;
        paint.setAntiAlias(true);
        this.f1826o = new ru.zdevs.zarchiver.ui.editor.d(this);
        this.f1827p = new Rect(-1, -1, -1, -1);
        this.f1828q = new d();
        this.f1830s = false;
        this.f1829r = false;
    }

    public static void b(EditableView editableView, Menu menu) {
        editableView.getClass();
        menu.findItem(R.id.selectAll).setVisible((editableView.getSelectionStart() == 0 && editableView.getSelectionEnd() == editableView.f1816e.f1857c) ? false : true);
    }

    private ClipboardManager getClipboardManager() {
        return (ClipboardManager) getContext().getSystemService("clipboard");
    }

    private DisplayMetrics getDisplayMetricsOrSystem() {
        Context context = getContext();
        return (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics();
    }

    private int getLineNumberWidth() {
        if (this.f1830s) {
            return (int) (this.f1823l.measureText(String.valueOf(this.f1816e.f1856b.size() + 1)) + (this.f1812a * 12));
        }
        return 0;
    }

    @Override
    public final int a() {
        return getLineNumberWidth();
    }

    public final boolean c() {
        return this.f1816e.f1857c > 0 && j();
    }

    @Override
    public final int computeHorizontalScrollOffset() {
        return this.f1817f.b();
    }

    @Override
    public final int computeHorizontalScrollRange() {
        return getWidth() + this.f1817f.f1897g;
    }

    @Override
    public final void computeScroll() {
        if (this.f1817f.f1895e.computeScrollOffset()) {
            ru.zdevs.zarchiver.ui.editor.d dVar = this.f1826o;
            if (dVar.f1922m != 2) {
                dVar.a(1);
            }
            postInvalidate();
        }
    }

    @Override
    public final int computeVerticalScrollOffset() {
        return this.f1817f.c();
    }

    @Override
    public final int computeVerticalScrollRange() {
        return getHeight() + this.f1817f.f1898h;
    }

    public final boolean d() {
        ClipboardManager clipboardManager = getClipboardManager();
        return getSelectionStart() >= 0 && getSelectionEnd() >= 0 && clipboardManager != null && clipboardManager.hasPrimaryClip();
    }

    public final void e(Menu menu) {
        Context context = getContext();
        int[] iArr = new int[5];
        iArr[0] = 16843537;
        int i2 = R.attr.actionModeCopyDrawable;
        iArr[1] = 16843538;
        iArr[2] = 16843539;
        iArr[3] = 16843646;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            i2 = R.attr.actionModeShareDrawable;
        }
        iArr[4] = i2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (c()) {
            menu.add(1, R.id.cut, 4, R.string.cut).setAlphabeticShortcut('x').setIcon(typedArrayObtainStyledAttributes.getDrawable(0)).setShowAsActionFlags(2);
            menu.add(1, R.id.copy, 5, R.string.copy).setAlphabeticShortcut('c').setIcon(typedArrayObtainStyledAttributes.getDrawable(1)).setShowAsActionFlags(2);
        }
        if (d()) {
            menu.add(1, R.id.paste, 6, R.string.paste).setAlphabeticShortcut('v').setIcon(typedArrayObtainStyledAttributes.getDrawable(2)).setShowAsActionFlags(2);
        }
        menu.add(1, R.id.selectAll, 7, R.string.selectAll).setAlphabeticShortcut('a').setVisible((getSelectionStart() == 0 && getSelectionEnd() == this.f1816e.f1857c) ? false : true).setIcon(typedArrayObtainStyledAttributes.getDrawable(3)).setShowAsActionFlags(2);
        if (i3 > 21) {
            menu.add(2, R.id.shareText, 8, ru.zdevs.zarchiver.R.string.MENU_SHARE).setVisible(c()).setIcon(typedArrayObtainStyledAttributes.getDrawable(4));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void f(Canvas canvas) {
        int[] iArr = this.f1815d;
        int i2 = iArr[0];
        int i3 = this.f1813b;
        int i4 = i2 - (i3 / 2);
        int i5 = iArr[1];
        c1.e eVar = this.f1822k;
        int iC = i5 - eVar.c();
        int i6 = iArr[0] + i3;
        int i7 = iArr[1];
        Rect rect = this.f1827p;
        rect.set(i4, iC, i6, i7);
        d dVar = this.f1828q;
        if (dVar.f1843c) {
            float f2 = rect.left;
            float f3 = rect.top;
            float f4 = rect.right;
            float f5 = rect.bottom;
            Paint paint = eVar.f457a;
            paint.setColor(eVar.b((byte) 10));
            eVar.f458b = (byte) 10;
            canvas.drawRect(f2, f3, f4, f5, paint);
        }
        c1.d dVar2 = this.f1834w;
        if (dVar2 != null && this.f1833v == 0) {
            dVar2.b(rect.centerX(), rect.centerY());
        }
        if (dVar.f1841a && dVar.f1842b) {
            dVar.f1843c = true;
            dVar.f1841a = false;
            EditableView.this.postDelayed(dVar, 500L);
        }
    }

    public final void g(Canvas canvas, ru.zdevs.zarchiver.ui.editor.b.d dVar, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        int iH;
        int iH2;
        if (i5 >= i6) {
            return;
        }
        c1.e eVar = this.f1822k;
        byte bF = 0;
        if (i7 == -1 || i7 > i6 || i8 < i5) {
            iH = -1;
            iH2 = -1;
        } else {
            int[] iArr = this.f1815d;
            if (i7 >= i5) {
                iH2 = i7 > i5 ? dVar.h(eVar, i5, i7 - i5) : 0;
                if ((i9 & 1) == 1) {
                    iArr[0] = i3 + iH2;
                    if (eVar.f459c == 0) {
                        eVar.c();
                    }
                    iArr[1] = eVar.f460d + i4;
                }
                if (i8 == i7) {
                    f(canvas);
                }
            } else {
                iH2 = 0;
            }
            if (i8 == i7) {
                iH = -1;
            } else if (i6 >= i8) {
                iH = i6 > i8 ? dVar.h(eVar, i5, i8 - i5) : i10;
                if ((i9 & 2) == 2) {
                    iArr[2] = i3 + iH;
                    if (eVar.f459c == 0) {
                        eVar.c();
                    }
                    iArr[3] = eVar.f460d + i4;
                }
            } else {
                iH = i10;
            }
        }
        if (iH != -1) {
            float f2 = i3 + iH2;
            if (eVar.f459c == 0) {
                eVar.c();
            }
            float f3 = eVar.f459c + i4;
            float f4 = iH + i3;
            if (eVar.f459c == 0) {
                eVar.c();
            }
            float f5 = eVar.f460d + i4;
            byte b2 = eVar.f458b;
            Paint paint = eVar.f457a;
            if (9 != b2) {
                paint.setColor(eVar.b((byte) 9));
                eVar.f458b = (byte) 9;
            }
            canvas.drawRect(f2, f3, f4, f5, paint);
        }
        d1.b bVar = this.f1816e.f1866l;
        char[] cArr = dVar.f1880c;
        if (cArr[i5] == '\t') {
            return;
        }
        int i11 = (i6 - i5) - ((i6 <= 0 || cArr[i6 + (-1)] != '\n') ? 0 : 1);
        byte[] bArr = dVar.f1886i;
        if (bArr != null && bVar != null && (bF = bArr[i2]) == 0) {
            int[] iArr2 = dVar.f1885h;
            bF = bVar.f(cArr, iArr2[i2] & 8388607, iArr2[i2 + 1] & 8388607);
            bArr[i2] = bF;
        }
        char[] cArr2 = dVar.f1880c;
        float f6 = i3;
        float f7 = i4;
        byte b3 = (byte) (bF & 15);
        byte b4 = eVar.f458b;
        Paint paint2 = eVar.f457a;
        if (b3 != b4) {
            paint2.setColor(eVar.b(b3));
            eVar.f458b = b3;
        }
        canvas.drawText(cArr2, i5, i11, f6, f7, paint2);
    }

    @Override
    public ru.zdevs.zarchiver.ui.editor.b getEditable() {
        return this.f1816e;
    }

    @Override
    public c1.b getInputConnection() {
        return this.f1818g;
    }

    public KeyListener getKeyListener() {
        return this.f1819h;
    }

    @Override
    public int getLineHeight() {
        return this.f1822k.c();
    }

    public String getSelectedText() {
        if (!j()) {
            return null;
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        return String.valueOf(selectionStart > selectionEnd ? bVar.subSequence(selectionEnd, selectionStart) : bVar.subSequence(selectionStart, selectionEnd));
    }

    @Override
    public int getSelectionEnd() {
        return Selection.getSelectionEnd(this.f1816e);
    }

    @Override
    public int getSelectionStart() {
        return Selection.getSelectionStart(this.f1816e);
    }

    public int getSyntax() {
        d1.b bVar = this.f1816e.f1866l;
        if (bVar == null) {
            return 0;
        }
        return bVar.c();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007b  */
    /* JADX WARN: Code duplicated, block: B:34:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00a5 A[LOOP:1: B:31:0x0083->B:42:0x00a5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a8 A[PHI: r1 r9
      0x00a8: PHI (r1v7 int) = (r1v6 int), (r1v11 int) binds: [B:24:0x006a, B:29:0x0079] A[DONT_GENERATE, DONT_INLINE]
      0x00a8: PHI (r9v2 int) = (r9v1 int), (r9v5 int) binds: [B:24:0x006a, B:29:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:74:0x0091 A[EDGE_INSN: B:74:0x0091->B:36:0x0091 BREAK  A[LOOP:1: B:31:0x0083->B:42:0x00a5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x008d A[SYNTHETIC] */
    public final int h(float f2, float f3) {
        int i2;
        int iA;
        int iC;
        int iB;
        int iA2;
        int iH;
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        int[] iArr = this.f1814c;
        int iG = bVar.g((int) f3, iArr);
        int iA3 = 0;
        int i3 = iArr[0];
        ru.zdevs.zarchiver.ui.editor.b.d dVarD = bVar.d(iG);
        if (dVarD == null) {
            ru.zdevs.zarchiver.ui.editor.b.d dVarD2 = bVar.d(bVar.f1856b.size() - 1);
            if (dVarD2 == null) {
                return 0;
            }
            return (dVarD2.f1878a + dVarD2.f1881d) - (dVarD2.f1879b & 1);
        }
        if (dVarD.f1881d < (dVarD.f1879b & 1) + 1) {
            return dVarD.f1878a;
        }
        int lineNumberWidth = getLineNumberWidth();
        if (this.f1830s) {
            float f4 = lineNumberWidth;
            f2 = f2 > f4 ? f2 - f4 : 0.0f;
        }
        int i4 = dVarD.f1884g - 1;
        boolean z2 = this.f1829r;
        c1.e eVar = this.f1822k;
        if (!z2) {
            int i5 = 0;
            int i6 = 0;
            while (i5 < i4) {
                int iG2 = dVarD.g(eVar, i5);
                float f5 = i6;
                if ((f5 <= f2 && f2 < i6 + iG2) || (i2 = i5 + 1) == i4) {
                    int[] iArr2 = dVarD.f1885h;
                    iA3 = dVarD.a(eVar, iArr2[i5] & 8388607, iArr2[i5 + 1] & 8388607, f2 - f5);
                    break;
                }
                i6 += iG2;
                i5 = i2;
            }
        } else {
            int iC2 = eVar.c();
            int width = getWidth() - lineNumberWidth;
            int i7 = 0;
            int iA4 = 0;
            int i8 = 0;
            while (true) {
                if (i7 < i4) {
                    int iG3 = dVarD.g(eVar, i7);
                    if (i8 + iG3 > width) {
                        if (i8 != 0) {
                            if (i3 >= iC2) {
                                i3 -= iC2;
                                i8 = 0;
                                if (iG3 > width) {
                                    if (i3 >= iC2) {
                                        i8 += iG3;
                                        i7++;
                                    } else {
                                        i8 += iG3;
                                        i7++;
                                    }
                                    int[] iArr3 = dVarD.f1885h;
                                    iA = dVarD.a(eVar, iArr3[i7] & 8388607, iArr3[i7 + 1] & 8388607, f2 - i8);
                                    break;
                                }
                                iC = dVarD.c(i7);
                                iB = dVarD.b(i7);
                                while (true) {
                                    iA2 = dVarD.a(eVar, iC, iB, width);
                                    if (iA2 < iB) {
                                        break;
                                        break;
                                    }
                                    if (i3 < iC2) {
                                        iA4 = dVarD.a(eVar, iC, iA2, f2);
                                        break;
                                    }
                                    i3 -= iC2;
                                    iC = iA2;
                                }
                                iH = dVarD.h(eVar, iC, iB - iC);
                                if (i3 >= iC2) {
                                }
                                i8 = iH;
                                i7++;
                            } else {
                                iA = dVarD.b(i7 - 1);
                                break;
                            }
                        } else {
                            if (iG3 > width) {
                                if (i3 >= iC2) {
                                    i8 += iG3;
                                    i7++;
                                } else {
                                    i8 += iG3;
                                    i7++;
                                }
                                int[] iArr4 = dVarD.f1885h;
                                iA = dVarD.a(eVar, iArr4[i7] & 8388607, iArr4[i7 + 1] & 8388607, f2 - i8);
                                break;
                            }
                            iC = dVarD.c(i7);
                            iB = dVarD.b(i7);
                            while (true) {
                                iA2 = dVarD.a(eVar, iC, iB, width);
                                if (iA2 < iB) {
                                    break;
                                }
                                if (i3 < iC2) {
                                    iA4 = dVarD.a(eVar, iC, iA2, f2);
                                    break;
                                }
                                i3 -= iC2;
                                iC = iA2;
                            }
                            iH = dVarD.h(eVar, iC, iB - iC);
                            if (i3 >= iC2 && f2 < iH) {
                                iA = dVarD.a(eVar, iC, iB, f2);
                                break;
                            }
                            i8 = iH;
                            i7++;
                        }
                    } else {
                        if ((i3 >= iC2 && i8 <= f2 && f2 < i8 + iG3) || i7 + 1 == i4) {
                            int[] iArr5 = dVarD.f1885h;
                            iA = dVarD.a(eVar, iArr5[i7] & 8388607, iArr5[i7 + 1] & 8388607, f2 - i8);
                            break;
                        }
                        i8 += iG3;
                        i7++;
                    }
                } else {
                    iA3 = iA4;
                }
            }
            iA3 = iA;
        }
        return dVarD.f1878a + iA3;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a3 A[PHI: r4 r13
      0x00a3: PHI (r4v5 int) = (r4v4 int), (r4v7 int) binds: [B:33:0x0085, B:36:0x008b] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r13v2 int) = (r13v1 int), (r13v5 int) binds: [B:33:0x0085, B:36:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    public final int[] i(int i2, int[] iArr) {
        ru.zdevs.zarchiver.ui.editor.b.d dVar;
        int iB;
        int iG;
        int[] iArr2 = iArr == null ? new int[2] : iArr;
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        synchronized (bVar) {
            Iterator it = bVar.f1856b.iterator();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    dVar = null;
                    break;
                }
                dVar = (ru.zdevs.zarchiver.ui.editor.b.d) it.next();
                if (dVar.d(i2)) {
                    iArr2[0] = i3;
                    iArr2[1] = i4;
                    break;
                }
                i3++;
                i4 += dVar.f1882e;
            }
        }
        if (dVar == null) {
            return null;
        }
        int i5 = i2 - dVar.f1878a;
        int lineNumberWidth = getLineNumberWidth();
        int i6 = iArr2[1];
        int i7 = dVar.f1884g - 1;
        if (this.f1829r) {
            int iC = this.f1822k.c();
            int width = getWidth() - lineNumberWidth;
            boolean zE = false;
            int iH = 0;
            for (int i8 = 0; i8 < i7 && !zE; i8++) {
                zE = dVar.e(i5, i8);
                int iC2 = dVar.c(i8);
                if (zE) {
                    iG = dVar.h(this.f1822k, iC2, i5 - iC2);
                    iB = i5;
                } else {
                    iB = dVar.b(i8);
                    iG = dVar.g(this.f1822k, i8);
                }
                if (iH + iG <= width) {
                    iH += iG;
                } else {
                    if (iH > 0) {
                        i6 += iC;
                        iH = 0;
                    }
                    if (iG > width) {
                        while (true) {
                            int iA = dVar.a(this.f1822k, iC2, iB, width);
                            if (iA >= iB) {
                                break;
                            }
                            i6 += iC;
                            iC2 = iA;
                        }
                        iH = dVar.h(this.f1822k, iC2, iB - iC2) + iH;
                    } else {
                        iH += iG;
                    }
                }
            }
            lineNumberWidth += iH;
        } else {
            for (int i9 = 0; i9 < i7; i9++) {
                if (dVar.e(i5, i9)) {
                    int iC3 = dVar.c(i9);
                    lineNumberWidth += dVar.h(this.f1822k, iC3, i5 - iC3);
                    break;
                }
                lineNumberWidth += dVar.g(this.f1822k, i9);
            }
        }
        iArr2[0] = lineNumberWidth;
        iArr2[1] = i6;
        return iArr2;
    }

    public final boolean j() {
        int[] iArr = this.f1816e.f1861g;
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (i3 == i2) {
            i3 = -1;
        }
        return i2 >= 0 && i3 > 0 && i2 != i3;
    }

    public final void k(int i2) {
        ActionMode actionMode;
        if (Build.VERSION.SDK_INT < 23 || (actionMode = this.f1824m) == null) {
            return;
        }
        if (i2 == -3) {
            actionMode.invalidateContentRect();
            return;
        }
        if (i2 == -2) {
            actionMode.onWindowFocusChanged(false);
        } else if (i2 != -1) {
            actionMode.hide(i2);
        } else {
            actionMode.onWindowFocusChanged(true);
            this.f1824m.invalidateContentRect();
        }
    }

    public final void l() {
        if (Build.VERSION.SDK_INT >= 33) {
            this.f1821j.invalidateInput(this);
        }
        this.f1817f.e();
        this.f1816e.r(false, this.f1829r, false);
        n(4);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004a A[PHI: r6 r7
      0x004a: PHI (r6v2 int) = (r6v1 int), (r6v4 int) binds: [B:11:0x002a, B:14:0x0030] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r7v2 int) = (r7v1 int), (r7v5 int) binds: [B:11:0x002a, B:14:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
    public final void m(ru.zdevs.zarchiver.ui.editor.b.d dVar) {
        int iG;
        int i2 = dVar.f1884g - 1;
        c1.e eVar = this.f1822k;
        int iC = eVar.c();
        if (this.f1829r) {
            iG = getMeasuredWidth() - getLineNumberWidth();
            if (iG <= 0) {
                dVar.f1883f = 0;
                dVar.f1882e = 0;
                return;
            }
            int i3 = 0;
            int iH = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                int iG2 = dVar.g(eVar, i4);
                if (iH + iG2 <= iG) {
                    iH += iG2;
                } else {
                    if (iH != 0) {
                        i3 += iC;
                        iH = 0;
                    }
                    if (iG2 > iG) {
                        int iC2 = dVar.c(i4);
                        int iB = dVar.b(i4);
                        while (true) {
                            int iA = dVar.a(eVar, iC2, iB, iG);
                            if (iA >= iB) {
                                break;
                            }
                            i3 += iC;
                            iC2 = iA;
                        }
                        iH = dVar.h(eVar, iC2, iB - iC2);
                    } else {
                        iH += iG2;
                    }
                }
            }
            iC += i3;
        } else {
            iG = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                iG += dVar.g(eVar, i5);
            }
        }
        dVar.f1883f = iG;
        dVar.f1882e = iC;
    }

    public final void n(int i2) {
        f fVar;
        if ((((this.f1829r ? 0 : 2) | 4) & i2) != 0) {
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
            int[] iArr = this.f1814c;
            synchronized (bVar) {
                int i3 = 0;
                int i4 = 0;
                for (ru.zdevs.zarchiver.ui.editor.b.d dVar : bVar.f1856b) {
                    i4 += dVar.f1882e;
                    int i5 = dVar.f1883f;
                    if (i5 > i3) {
                        i3 = i5;
                    }
                }
                iArr[0] = i3;
                iArr[1] = i4;
            }
            int[] iArr2 = this.f1814c;
            iArr2[0] = iArr2[0] - getWidth();
            int[] iArr3 = this.f1814c;
            iArr3[0] = iArr3[0] + getLineNumberWidth();
            int[] iArr4 = this.f1814c;
            if (iArr4[0] < 0) {
                iArr4[0] = 0;
            }
            iArr4[1] = iArr4[1] - getHeight();
            int[] iArr5 = this.f1814c;
            iArr5[1] = (this.f1822k.c() / 2) + iArr5[1];
            int[] iArr6 = this.f1814c;
            if (iArr6[1] < 0) {
                iArr6[1] = 0;
            }
            ru.zdevs.zarchiver.ui.editor.c cVar = this.f1817f;
            cVar.getClass();
            cVar.f1897g = iArr6[0];
            cVar.f1898h = iArr6[1];
            if (cVar.c() > cVar.f1898h) {
                cVar.f1895e.startScroll(cVar.b(), cVar.c(), 0, cVar.f1898h - cVar.c(), 0);
                cVar.f1891a.invalidate();
            }
        }
        if ((i2 & 64) != 0) {
            u();
            this.f1817f.g(3);
        }
        if ((i2 & 256) != 0) {
            int[] iArr7 = this.f1816e.f1861g;
            int i6 = iArr7[0];
            int i7 = iArr7[1];
            if (i7 == i6) {
                i7 = -1;
            }
            int[] iArrI = (i7 == -1 || (i2 & 512) == 0) ? i(i6, this.f1814c) : i(i7, this.f1814c);
            if (iArrI != null) {
                int iC = this.f1822k.c() * 2;
                int lineNumberWidth = getLineNumberWidth();
                int iB = this.f1817f.b();
                int width = getWidth();
                int iC2 = this.f1817f.c();
                int height = getHeight();
                int i8 = iArrI[0];
                int i9 = i8 - iC;
                int i10 = i9 < iB + lineNumberWidth ? i9 - lineNumberWidth : i8 + iC > iB + width ? (i8 - width) + iC : iB;
                int i11 = iArrI[1];
                int i12 = i11 - iC;
                if (i12 >= iC2) {
                    i12 = i11 + iC > iC2 + height ? (i11 - height) + iC : iC2;
                }
                if (iC2 != i12 || iB != i10) {
                    this.f1817f.f(i10, i12, false);
                }
            }
        }
        if ((i2 & 7) != 0) {
            this.f1831t = (i2 & 1) != 0;
            postInvalidate();
        }
        if ((i2 & 1) != 0) {
            int spanStart = this.f1816e.getSpanStart(Selection.SELECTION_START);
            int spanStart2 = this.f1816e.getSpanStart(Selection.SELECTION_END);
            this.f1821j.updateSelection(this, spanStart, spanStart2, BaseInputConnection.getComposingSpanStart(this.f1816e), BaseInputConnection.getComposingSpanEnd(this.f1816e));
            if (spanStart == spanStart2) {
                if (this.f1824m != null && this.f1825n == 0) {
                    u();
                }
            }
        }
        if ((i2 & 16) != 0 && j()) {
            t(0);
        }
        if ((i2 & 2) == 0 || (fVar = this.f1832u) == null) {
            return;
        }
        ZTextEditor zTextEditor = (ZTextEditor) fVar;
        if (zTextEditor.f1499d) {
            return;
        }
        zTextEditor.h(true);
    }

    public final boolean o(int i2) {
        int iMax;
        ClipData primaryClip;
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        int iMax2 = bVar.f1857c;
        boolean z2 = false;
        if (isFocused()) {
            int selectionStart = getSelectionStart();
            int selectionEnd = getSelectionEnd();
            iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
            iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        } else {
            iMax = 0;
        }
        if (i2 == 16908341) {
            String selectedText = getSelectedText();
            if (selectedText != null && !selectedText.isEmpty()) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                if (selectedText.length() > 100000) {
                    selectedText = selectedText.substring(0, 100000);
                }
                intent.putExtra("android.intent.extra.TEXT", selectedText);
                getContext().startActivity(Intent.createChooser(intent, null));
                Selection.setSelection(bVar, getSelectionEnd());
            }
            return true;
        }
        switch (i2) {
            case R.id.selectAll:
                k(500);
                Selection.setSelection(bVar, 0, bVar.f1857c);
                return true;
            case R.id.cut:
                ClipData clipDataNewPlainText = ClipData.newPlainText(null, bVar.subSequence(iMax, iMax2));
                try {
                    ClipboardManager clipboardManager = getClipboardManager();
                    if (clipboardManager != null) {
                        clipboardManager.setPrimaryClip(clipDataNewPlainText);
                        z2 = true;
                    }
                } catch (Throwable unused) {
                }
                if (z2) {
                    bVar.delete(iMax, iMax2);
                }
                u();
                return true;
            case R.id.copy:
                int selectionStart2 = getSelectionStart();
                int selectionEnd2 = getSelectionEnd();
                ClipData clipDataNewPlainText2 = ClipData.newPlainText(null, bVar.subSequence(Math.max(0, Math.min(selectionStart2, selectionEnd2)), Math.max(0, Math.max(selectionStart2, selectionEnd2))));
                try {
                    ClipboardManager clipboardManager2 = getClipboardManager();
                    if (clipboardManager2 != null) {
                        clipboardManager2.setPrimaryClip(clipDataNewPlainText2);
                        z2 = true;
                    }
                } catch (Throwable unused2) {
                }
                if (z2) {
                    u();
                }
                return true;
            case R.id.paste:
                ClipboardManager clipboardManager3 = getClipboardManager();
                if (clipboardManager3 != null && (primaryClip = clipboardManager3.getPrimaryClip()) != null) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        performReceiveContent(new ContentInfo.Builder(primaryClip, 1).build());
                    } else {
                        p(primaryClip);
                    }
                }
                u();
                return true;
            default:
                return false;
        }
    }

    @Override
    public final void onCreateContextMenu(ContextMenu contextMenu) {
        e(contextMenu);
    }

    @Override
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        Object obj = Selection.SELECTION_START;
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        editorInfo.initialSelStart = bVar.getSpanStart(obj);
        editorInfo.initialSelEnd = bVar.getSpanStart(Selection.SELECTION_END);
        editorInfo.inputType = 131073;
        editorInfo.imeOptions |= 1073741825;
        return this.f1818g;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    @Override
    public final boolean onDragEvent(DragEvent dragEvent) {
        e eVar;
        int action = dragEvent.getAction();
        if (action == 2) {
            int iH = h(dragEvent.getX(), dragEvent.getY());
            r(iH, iH);
            return true;
        }
        if (action != 3) {
            if (action != 5) {
                return true;
            }
            requestFocus();
            return true;
        }
        int iH2 = h(dragEvent.getX(), dragEvent.getY());
        Object localState = dragEvent.getLocalState();
        if (localState instanceof e) {
            eVar = (e) localState;
            if (eVar.f1845a != this) {
                eVar = null;
            } else if (iH2 >= eVar.f1846b && iH2 <= eVar.f1847c) {
                return true;
            }
        } else {
            eVar = null;
        }
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        int i2 = bVar.f1857c;
        if (iH2 > i2) {
            iH2 = i2;
        }
        c1.b bVar2 = this.f1818g;
        bVar2.beginBatchEdit();
        r(iH2, iH2);
        int iP = p(dragEvent.getClipData());
        if (eVar != null) {
            int i3 = eVar.f1847c;
            if (iH2 >= i3) {
                iP = 0;
            }
            bVar.delete(eVar.f1846b + iP, i3 + iP);
        }
        bVar2.endBatchEdit();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:104:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:125:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:126:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:132:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:134:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:135:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:138:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:140:0x0423  */
    /* JADX WARN: Code duplicated, block: B:143:0x0434  */
    /* JADX WARN: Code duplicated, block: B:145:0x045c  */
    /* JADX WARN: Code duplicated, block: B:148:0x0465  */
    /* JADX WARN: Code duplicated, block: B:151:0x046c  */
    /* JADX WARN: Code duplicated, block: B:159:0x047f  */
    /* JADX WARN: Code duplicated, block: B:166:0x049a  */
    /* JADX WARN: Code duplicated, block: B:168:0x049d  */
    /* JADX WARN: Code duplicated, block: B:182:0x034d A[EDGE_INSN: B:182:0x034d->B:108:0x034d BREAK  A[LOOP:2: B:61:0x016a->B:106:0x031f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x034d A[EDGE_INSN: B:183:0x034d->B:108:0x034d BREAK  A[LOOP:2: B:61:0x016a->B:106:0x031f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x033c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x0210 A[EDGE_INSN: B:187:0x0210->B:87:0x0210 BREAK  A[LOOP:3: B:85:0x0209->B:88:0x0243], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x0144  */
    /* JADX WARN: Code duplicated, block: B:52:0x0148  */
    /* JADX WARN: Code duplicated, block: B:54:0x014c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0151  */
    /* JADX WARN: Code duplicated, block: B:62:0x016c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0178  */
    /* JADX WARN: Code duplicated, block: B:66:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0188  */
    /* JADX WARN: Code duplicated, block: B:79:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:84:0x0207  */
    /* JADX WARN: Code duplicated, block: B:88:0x0243 A[LOOP:3: B:85:0x0209->B:88:0x0243, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:89:0x0285  */
    /* JADX WARN: Code duplicated, block: B:90:0x0294  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:96:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:97:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:98:0x02d9 A[PHI: r12 r13 r17 r23 r27 r30 r32 r33 r34 r35 r36 r37 r39 r40
      0x02d9: PHI (r12v12 int) = (r12v10 int), (r12v15 int), (r12v16 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r13v10 ru.zdevs.zarchiver.ui.editor.b$d) = 
      (r13v8 ru.zdevs.zarchiver.ui.editor.b$d)
      (r13v14 ru.zdevs.zarchiver.ui.editor.b$d)
      (r13v14 ru.zdevs.zarchiver.ui.editor.b$d)
     binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r17v2 int) = (r17v0 int), (r17v5 int), (r17v5 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r23v3 int) = (r23v1 int), (r23v6 int), (r23v7 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r27v7 int) = (r27v5 int), (r27v11 int), (r27v11 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r30v7 int) = (r30v4 int), (r30v10 int), (r30v10 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r32v1 int) = (r32v0 int), (r32v3 int), (r32v3 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r33v2 int) = (r33v0 int), (r6v6 int), (r6v6 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r34v4 int) = (r34v2 int), (r34v7 int), (r34v7 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r35v5 int) = (r35v3 int), (r35v8 int), (r35v8 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r36v4 int) = (r36v2 int), (r7v9 int), (r7v9 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r37v5 int) = (r37v3 int), (r8v5 int), (r8v5 int) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r39v5 ru.zdevs.zarchiver.ui.editor.b) = (r39v3 ru.zdevs.zarchiver.ui.editor.b), (r24v0 ru.zdevs.zarchiver.ui.editor.b), (r24v0 ru.zdevs.zarchiver.ui.editor.b) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]
      0x02d9: PHI (r40v5 c1.e) = (r40v3 c1.e), (r10v9 c1.e), (r10v9 c1.e) binds: [B:103:0x02fd, B:97:0x02d6, B:96:0x02bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x02dc  */
    @Override
    public final void onDraw(Canvas canvas) {
        int i2;
        int i3;
        c1.e eVar;
        EditableView editableView;
        c1.e eVar2;
        ru.zdevs.zarchiver.ui.editor.c.a aVar;
        int height;
        ru.zdevs.zarchiver.ui.editor.d dVar;
        ru.zdevs.zarchiver.ui.editor.d.b bVar;
        int i4;
        Canvas canvas2;
        int iComputeHorizontalScrollRange;
        int iComputeHorizontalScrollOffset;
        int i5;
        int iComputeVerticalScrollRange;
        int iComputeVerticalScrollOffset;
        c1.d dVar2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        ActionMode actionMode;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        ru.zdevs.zarchiver.ui.editor.b bVar2;
        int iG;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int iC;
        int iB;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int iA;
        int i31;
        boolean z2;
        int i32;
        int i33;
        int i34;
        int i35;
        EditableView editableView2 = this;
        super.onDraw(canvas);
        int width = getWidth();
        if (width <= 0) {
            return;
        }
        ru.zdevs.zarchiver.ui.editor.c cVar = editableView2.f1817f;
        int iB2 = cVar.b();
        int iC2 = cVar.c();
        ru.zdevs.zarchiver.ui.editor.b bVar3 = editableView2.f1816e;
        int[] iArr = editableView2.f1814c;
        int iG2 = bVar3.g(iC2, iArr);
        int i36 = -iArr[0];
        int size = bVar3.f1856b.size();
        int lineNumberWidth = getLineNumberWidth();
        c1.e eVar3 = editableView2.f1822k;
        int iC3 = eVar3.c();
        int[] iArr2 = bVar3.f1861g;
        int i37 = iArr2[0];
        int i38 = iArr2[1];
        if (i38 == i37) {
            i38 = -1;
        }
        d dVar3 = editableView2.f1828q;
        if (i38 != -1) {
            dVar3.a();
        }
        int[] iArr3 = editableView2.f1815d;
        Arrays.fill(iArr3, -1);
        if (editableView2.f1830s) {
            canvas.save();
            Paint paint = editableView2.f1823l;
            int i39 = i38;
            paint.setColor(eVar3.b((byte) 9));
            paint.setAlpha(50);
            int i40 = editableView2.f1812a * 4;
            i2 = i39;
            i3 = iC3;
            eVar = eVar3;
            canvas.drawRect(0.0f, 0.0f, lineNumberWidth - i40, getHeight(), paint);
            paint.setAlpha(0);
            paint.setColor(eVar.b((byte) 0));
            int i41 = iG2;
            int i42 = i36;
            while (i41 < size) {
                ru.zdevs.zarchiver.ui.editor.b.d dVarD = bVar3.d(i41);
                if (dVarD == null || i42 >= getHeight()) {
                    break;
                }
                int i43 = i41 + 1;
                canvas.drawText(String.valueOf(i43), i40, i42 + i3, paint);
                i42 += dVarD.f1882e;
                i41 = i43;
            }
            canvas.clipRect(lineNumberWidth - 1, 0, getWidth(), getHeight());
        } else {
            i2 = i38;
            i3 = iC3;
            eVar = eVar3;
        }
        int i44 = i36 + i3;
        int i45 = iG2;
        int i46 = i44;
        while (i45 < size && i46 < getHeight() + i3) {
            ru.zdevs.zarchiver.ui.editor.b.d dVarD2 = bVar3.d(i45);
            if (dVarD2 == null) {
                break;
            }
            int i47 = i37;
            if (i47 != -1) {
                i2 = i2;
                if (i2 != -1) {
                    boolean zD = dVarD2.d(i47);
                    int i48 = dVarD2.f1878a;
                    if (i2 >= i48) {
                        i46 = i46;
                        z2 = i2 < (dVarD2.f1881d + i48) + (dVarD2.f1879b & 1);
                        if (!zD || z2 || (i47 < i48 && i48 < i2)) {
                            if (zD) {
                                i32 = i47 - i48;
                                i33 = 1;
                            } else {
                                i32 = 0;
                                i33 = 0;
                            }
                            if (z2) {
                                i34 = i2 - i48;
                                i35 = i33 | 2;
                            } else {
                                i34 = dVarD2.f1881d;
                                i35 = i33;
                            }
                            i12 = i34;
                            i13 = i35;
                            i11 = i32;
                        } else {
                            i11 = -1;
                            i12 = -1;
                            i13 = 0;
                        }
                    } else {
                        i46 = i46;
                    }
                    if (zD) {
                    }
                    if (zD) {
                        i32 = i47 - i48;
                        i33 = 1;
                    } else {
                        i32 = 0;
                        i33 = 0;
                    }
                    if (z2) {
                        i34 = i2 - i48;
                        i35 = i33 | 2;
                    } else {
                        i34 = dVarD2.f1881d;
                        i35 = i33;
                    }
                    i12 = i34;
                    i13 = i35;
                    i11 = i32;
                } else if (dVarD2.d(i47)) {
                    i11 = i47 - dVarD2.f1878a;
                    i46 = i46;
                    i13 = 1;
                    i12 = i11;
                }
                i14 = dVarD2.f1884g - 1;
                i15 = lineNumberWidth;
                i16 = i46;
                i17 = 0;
                while (true) {
                    if (i17 < i14) {
                        i2 = i2;
                        i18 = i47;
                        dVarD2 = dVarD2;
                        i45 = i45;
                        lineNumberWidth = lineNumberWidth;
                        size = size;
                        eVar = eVar;
                        bVar2 = bVar3;
                        break;
                    }
                    bVar2 = bVar3;
                    iG = dVarD2.g(eVar, i17);
                    int i49 = i14;
                    if (editableView2.f1829r) {
                        iC = dVarD2.c(i17);
                        iB = dVarD2.b(i17);
                        i19 = i17;
                        if (i15 + iG > width) {
                            if (i15 > lineNumberWidth) {
                                if (i11 < iC || i12 < iC) {
                                    i26 = iC;
                                    i31 = i47;
                                    i20 = i11;
                                } else {
                                    float f2 = i15;
                                    if (eVar.f459c == 0) {
                                        eVar.c();
                                    }
                                    float f3 = eVar.f459c + i16;
                                    i31 = i47;
                                    float f4 = width;
                                    if (eVar.f459c == 0) {
                                        eVar.c();
                                    }
                                    float f5 = eVar.f460d + i16;
                                    byte b2 = eVar.f458b;
                                    int i50 = i11;
                                    Paint paint2 = eVar.f457a;
                                    if (9 != b2) {
                                        paint2.setColor(eVar.b((byte) 9));
                                        eVar.f458b = (byte) 9;
                                    }
                                    i26 = iC;
                                    i20 = i50;
                                    canvas.drawRect(f2, f3, f4, f5, paint2);
                                }
                                i16 += i3;
                                i28 = i31;
                                i22 = lineNumberWidth;
                            } else {
                                i26 = iC;
                                i20 = i11;
                                size = size;
                                i22 = i15;
                                i19 = i19;
                                i2 = i2;
                                i28 = i47;
                                dVarD2 = dVarD2;
                            }
                            i29 = width - lineNumberWidth;
                            if (iG > i29) {
                                i30 = i26;
                                while (true) {
                                    iA = dVarD2.a(eVar, i30, iB, i29);
                                    if (iA >= iB) {
                                        break;
                                    }
                                    int i51 = i12;
                                    g(canvas, dVarD2, i19, i22, i16, i30, iA, i20, i51, i13, width);
                                    i16 += i3;
                                    i30 = iA;
                                    i29 = i29;
                                    i12 = i51;
                                    i28 = i28;
                                    i45 = i45;
                                    lineNumberWidth = lineNumberWidth;
                                    bVar2 = bVar2;
                                    eVar = eVar;
                                }
                                int iH = dVarD2.h(eVar, i30, iB - i30);
                                i18 = i28;
                                i12 = i12;
                                i45 = i45;
                                lineNumberWidth = lineNumberWidth;
                                bVar2 = bVar2;
                                g(canvas, dVarD2, i19, lineNumberWidth, i16, i30, iB, i20, i12, i13, iH);
                                i25 = i22 + iH;
                                eVar = eVar;
                                i24 = i19;
                            } else {
                                i18 = i28;
                            }
                            i17 = i24 + 1;
                            editableView2 = this;
                            dVarD2 = dVarD2;
                            i11 = i20;
                            i14 = i49;
                            i2 = i2;
                            i15 = i25;
                            i12 = i12;
                            size = size;
                            i47 = i18;
                            i45 = i45;
                            lineNumberWidth = lineNumberWidth;
                            bVar3 = bVar2;
                            eVar = eVar;
                        } else {
                            i26 = iC;
                            i18 = i47;
                            i20 = i11;
                            size = size;
                            i22 = i15;
                            i19 = i19;
                            i2 = i2;
                            dVarD2 = dVarD2;
                        }
                        i27 = i16;
                        if (i27 > (-i3)) {
                            i16 = i27;
                            i21 = iG;
                        } else {
                            if (i27 > getHeight()) {
                                break;
                            }
                            i16 = i27;
                            i21 = iG;
                            g(canvas, dVarD2, i19, i22, i27, i26, iB, i20, i12, i13, iG);
                        }
                        i24 = i19;
                    } else {
                        i19 = i17;
                        i2 = i2;
                        i18 = i47;
                        i20 = i11;
                        i12 = i12;
                        i45 = i45;
                        lineNumberWidth = lineNumberWidth;
                        size = size;
                        eVar = eVar;
                        i21 = iG;
                        i22 = i15;
                        bVar2 = bVar2;
                        dVarD2 = dVarD2;
                        i23 = i22 - iB2;
                        if (i23 >= width) {
                            break;
                        }
                        if (i23 + i21 > 0) {
                            i24 = i19;
                            g(canvas, dVarD2, i19, i23, i16, dVarD2.c(i19), dVarD2.b(i19), i20, i12, i13, i21);
                        } else {
                            i24 = i19;
                        }
                    }
                    i25 = i22 + i21;
                    i17 = i24 + 1;
                    editableView2 = this;
                    dVarD2 = dVarD2;
                    i11 = i20;
                    i14 = i49;
                    i2 = i2;
                    i15 = i25;
                    i12 = i12;
                    size = size;
                    i47 = i18;
                    i45 = i45;
                    lineNumberWidth = lineNumberWidth;
                    bVar3 = bVar2;
                    eVar = eVar;
                }
                i46 += dVarD2.f1882e;
                i45++;
                editableView2 = this;
                size = size;
                i37 = i18;
                lineNumberWidth = lineNumberWidth;
                bVar3 = bVar2;
                eVar = eVar;
            } else {
                i2 = i2;
            }
            i11 = -1;
            i12 = -1;
            i13 = 0;
            i14 = dVarD2.f1884g - 1;
            i15 = lineNumberWidth;
            i16 = i46;
            i17 = 0;
            while (true) {
                if (i17 < i14) {
                    i2 = i2;
                    i18 = i47;
                    dVarD2 = dVarD2;
                    i45 = i45;
                    lineNumberWidth = lineNumberWidth;
                    size = size;
                    eVar = eVar;
                    bVar2 = bVar3;
                    break;
                    break;
                }
                bVar2 = bVar3;
                iG = dVarD2.g(eVar, i17);
                int i410 = i14;
                if (editableView2.f1829r) {
                    iC = dVarD2.c(i17);
                    iB = dVarD2.b(i17);
                    i19 = i17;
                    if (i15 + iG > width) {
                        if (i15 > lineNumberWidth) {
                            if (i11 < iC) {
                                i26 = iC;
                                i31 = i47;
                                i20 = i11;
                            } else {
                                i26 = iC;
                                i31 = i47;
                                i20 = i11;
                            }
                            i16 += i3;
                            i28 = i31;
                            i22 = lineNumberWidth;
                        } else {
                            i26 = iC;
                            i20 = i11;
                            size = size;
                            i22 = i15;
                            i19 = i19;
                            i2 = i2;
                            i28 = i47;
                            dVarD2 = dVarD2;
                        }
                        i29 = width - lineNumberWidth;
                        if (iG > i29) {
                            i30 = i26;
                            while (true) {
                                iA = dVarD2.a(eVar, i30, iB, i29);
                                if (iA >= iB) {
                                    break;
                                    break;
                                }
                                int i52 = i12;
                                g(canvas, dVarD2, i19, i22, i16, i30, iA, i20, i52, i13, width);
                                i16 += i3;
                                i30 = iA;
                                i29 = i29;
                                i12 = i52;
                                i28 = i28;
                                i45 = i45;
                                lineNumberWidth = lineNumberWidth;
                                bVar2 = bVar2;
                                eVar = eVar;
                            }
                            int iH2 = dVarD2.h(eVar, i30, iB - i30);
                            i18 = i28;
                            i12 = i12;
                            i45 = i45;
                            lineNumberWidth = lineNumberWidth;
                            bVar2 = bVar2;
                            g(canvas, dVarD2, i19, lineNumberWidth, i16, i30, iB, i20, i12, i13, iH2);
                            i25 = i22 + iH2;
                            eVar = eVar;
                            i24 = i19;
                        } else {
                            i18 = i28;
                        }
                        i17 = i24 + 1;
                        editableView2 = this;
                        dVarD2 = dVarD2;
                        i11 = i20;
                        i14 = i410;
                        i2 = i2;
                        i15 = i25;
                        i12 = i12;
                        size = size;
                        i47 = i18;
                        i45 = i45;
                        lineNumberWidth = lineNumberWidth;
                        bVar3 = bVar2;
                        eVar = eVar;
                    } else {
                        i26 = iC;
                        i18 = i47;
                        i20 = i11;
                        size = size;
                        i22 = i15;
                        i19 = i19;
                        i2 = i2;
                        dVarD2 = dVarD2;
                    }
                    i27 = i16;
                    if (i27 > (-i3)) {
                        i16 = i27;
                        i21 = iG;
                    } else if (i27 > getHeight()) {
                        break;
                        break;
                    } else {
                        i16 = i27;
                        i21 = iG;
                        g(canvas, dVarD2, i19, i22, i27, i26, iB, i20, i12, i13, iG);
                    }
                    i24 = i19;
                } else {
                    i19 = i17;
                    i2 = i2;
                    i18 = i47;
                    i20 = i11;
                    i12 = i12;
                    i45 = i45;
                    lineNumberWidth = lineNumberWidth;
                    size = size;
                    eVar = eVar;
                    i21 = iG;
                    i22 = i15;
                    bVar2 = bVar2;
                    dVarD2 = dVarD2;
                    i23 = i22 - iB2;
                    if (i23 >= width) {
                        break;
                        break;
                    } else if (i23 + i21 > 0) {
                        i24 = i19;
                        g(canvas, dVarD2, i19, i23, i16, dVarD2.c(i19), dVarD2.b(i19), i20, i12, i13, i21);
                    } else {
                        i24 = i19;
                    }
                }
                i25 = i22 + i21;
                i17 = i24 + 1;
                editableView2 = this;
                dVarD2 = dVarD2;
                i11 = i20;
                i14 = i410;
                i2 = i2;
                i15 = i25;
                i12 = i12;
                size = size;
                i47 = i18;
                i45 = i45;
                lineNumberWidth = lineNumberWidth;
                bVar3 = bVar2;
                eVar = eVar;
            }
            i46 += dVarD2.f1882e;
            i45++;
            editableView2 = this;
            size = size;
            i37 = i18;
            lineNumberWidth = lineNumberWidth;
            bVar3 = bVar2;
            eVar = eVar;
        }
        int i53 = i46;
        int i54 = lineNumberWidth;
        c1.e eVar4 = eVar;
        ru.zdevs.zarchiver.ui.editor.b bVar4 = bVar3;
        int i55 = i37;
        if (iArr3[0] == -1 || iArr3[1] == -1) {
            if (bVar4.f1857c == i55) {
                iArr3[0] = i54;
                int iC4 = i53 - eVar4.c();
                eVar2 = eVar4;
                if (eVar2.f459c == 0) {
                    eVar2.c();
                }
                iArr3[1] = eVar2.f460d + iC4;
                f(canvas);
            } else {
                editableView = this;
                eVar2 = eVar4;
                editableView.f1827p.set(-1, -1, -1, -1);
                dVar3.a();
            }
            aVar = cVar.f1892b;
            if (aVar != null) {
                aVar.c(canvas, iArr3[0], iArr3[1], iArr3[2], iArr3[3]);
            }
            height = getHeight();
            dVar = editableView.f1826o;
            if (dVar.f1922m == 0 || dVar.f1924o.isRunning()) {
                bVar = (ru.zdevs.zarchiver.ui.editor.d.b) dVar.f1910a;
                i4 = dVar.f1921l;
                if (i4 != 0) {
                    canvas2 = canvas;
                    canvas2.translate(0.0f, i4);
                } else {
                    canvas2 = canvas;
                }
                iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
                iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
                i5 = dVar.f1915f;
                if (iComputeHorizontalScrollRange > 0) {
                    int iA2 = bVar.a();
                    int i56 = height - i5;
                    Drawable drawable = dVar.f1912c;
                    drawable.setBounds(iA2, i56, width, height);
                    drawable.draw(canvas2);
                    int i57 = dVar.f1914e;
                    int i58 = ((((width - i57) - iA2) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iA2;
                    Drawable drawable2 = dVar.f1913d;
                    drawable2.setBounds(i58, i56, i57 + i58, height);
                    drawable2.draw(canvas2);
                }
                if (i4 != 0) {
                    canvas2.translate(i4, -i4);
                }
                iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
                iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
                if (iComputeVerticalScrollRange > 0) {
                    int i59 = width - dVar.f1918i;
                    Drawable drawable3 = dVar.f1916g;
                    drawable3.setBounds(i59, 0, width, height - i5);
                    drawable3.draw(canvas2);
                    int i60 = dVar.f1919j;
                    int i61 = (((height - i60) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                    int i62 = i61 + i60;
                    Drawable drawable4 = dVar.f1917h;
                    drawable4.setBounds(i59, i61, width, i62);
                    drawable4.draw(canvas2);
                    dVar.f1920k.set(width - i60, i61, width, i62);
                }
                if (i4 != 0) {
                    canvas2.translate(-i4, 0.0f);
                }
            }
            if (editableView.f1830s) {
                canvas.restore();
            }
            if (editableView.f1831t) {
                if (Build.VERSION.SDK_INT >= 23 && (actionMode = editableView.f1824m) != null) {
                    actionMode.invalidateContentRect();
                }
                editableView.f1831t = false;
            }
            dVar2 = editableView.f1834w;
            if (dVar2 != null) {
                i6 = editableView.f1833v;
                if (i6 != 1 && (i9 = iArr3[0]) != -1 && (i10 = iArr3[1]) != -1) {
                    dVar2.b(i9, i10 - (eVar2.c() / 2));
                } else if (i6 == 2 && (i7 = iArr3[2]) != -1 && (i8 = iArr3[3]) != -1) {
                    dVar2.b(i7, i8 - (eVar2.c() / 2));
                }
                editableView.post(editableView.f1835x);
            }
        }
        eVar2 = eVar4;
        editableView = this;
        aVar = cVar.f1892b;
        if (aVar != null) {
            aVar.c(canvas, iArr3[0], iArr3[1], iArr3[2], iArr3[3]);
        }
        height = getHeight();
        dVar = editableView.f1826o;
        if (dVar.f1922m == 0) {
            bVar = (ru.zdevs.zarchiver.ui.editor.d.b) dVar.f1910a;
            i4 = dVar.f1921l;
            if (i4 != 0) {
                canvas2 = canvas;
                canvas2.translate(0.0f, i4);
            } else {
                canvas2 = canvas;
            }
            iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
            iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
            i5 = dVar.f1915f;
            if (iComputeHorizontalScrollRange > 0) {
                int iA3 = bVar.a();
                int i510 = height - i5;
                Drawable drawable5 = dVar.f1912c;
                drawable5.setBounds(iA3, i510, width, height);
                drawable5.draw(canvas2);
                int i511 = dVar.f1914e;
                int i512 = ((((width - i511) - iA3) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iA3;
                Drawable drawable6 = dVar.f1913d;
                drawable6.setBounds(i512, i510, i511 + i512, height);
                drawable6.draw(canvas2);
            }
            if (i4 != 0) {
                canvas2.translate(i4, -i4);
            }
            iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
            iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
            if (iComputeVerticalScrollRange > 0) {
                int i513 = width - dVar.f1918i;
                Drawable drawable7 = dVar.f1916g;
                drawable7.setBounds(i513, 0, width, height - i5);
                drawable7.draw(canvas2);
                int i63 = dVar.f1919j;
                int i64 = (((height - i63) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                int i65 = i64 + i63;
                Drawable drawable8 = dVar.f1917h;
                drawable8.setBounds(i513, i64, width, i65);
                drawable8.draw(canvas2);
                dVar.f1920k.set(width - i63, i64, width, i65);
            }
            if (i4 != 0) {
                canvas2.translate(-i4, 0.0f);
            }
        } else {
            bVar = (ru.zdevs.zarchiver.ui.editor.d.b) dVar.f1910a;
            i4 = dVar.f1921l;
            if (i4 != 0) {
                canvas2 = canvas;
                canvas2.translate(0.0f, i4);
            } else {
                canvas2 = canvas;
            }
            iComputeHorizontalScrollRange = bVar.computeHorizontalScrollRange() - width;
            iComputeHorizontalScrollOffset = bVar.computeHorizontalScrollOffset();
            i5 = dVar.f1915f;
            if (iComputeHorizontalScrollRange > 0) {
                int iA4 = bVar.a();
                int i514 = height - i5;
                Drawable drawable9 = dVar.f1912c;
                drawable9.setBounds(iA4, i514, width, height);
                drawable9.draw(canvas2);
                int i515 = dVar.f1914e;
                int i516 = ((((width - i515) - iA4) * iComputeHorizontalScrollOffset) / iComputeHorizontalScrollRange) + iA4;
                Drawable drawable10 = dVar.f1913d;
                drawable10.setBounds(i516, i514, i515 + i516, height);
                drawable10.draw(canvas2);
            }
            if (i4 != 0) {
                canvas2.translate(i4, -i4);
            }
            iComputeVerticalScrollRange = bVar.computeVerticalScrollRange() - height;
            iComputeVerticalScrollOffset = bVar.computeVerticalScrollOffset();
            if (iComputeVerticalScrollRange > 0) {
                int i517 = width - dVar.f1918i;
                Drawable drawable11 = dVar.f1916g;
                drawable11.setBounds(i517, 0, width, height - i5);
                drawable11.draw(canvas2);
                int i66 = dVar.f1919j;
                int i67 = (((height - i66) - i5) * iComputeVerticalScrollOffset) / iComputeVerticalScrollRange;
                int i68 = i67 + i66;
                Drawable drawable12 = dVar.f1917h;
                drawable12.setBounds(i517, i67, width, i68);
                drawable12.draw(canvas2);
                dVar.f1920k.set(width - i66, i67, width, i68);
            }
            if (i4 != 0) {
                canvas2.translate(-i4, 0.0f);
            }
        }
        if (editableView.f1830s) {
            canvas.restore();
        }
        if (editableView.f1831t) {
            if (Build.VERSION.SDK_INT >= 23) {
                actionMode.invalidateContentRect();
            }
            editableView.f1831t = false;
        }
        dVar2 = editableView.f1834w;
        if (dVar2 != null) {
            i6 = editableView.f1833v;
            if (i6 != 1) {
                if (i6 == 2) {
                    dVar2.b(i7, i8 - (eVar2.c() / 2));
                }
            } else if (i6 == 2) {
                dVar2.b(i7, i8 - (eVar2.c() / 2));
            }
            editableView.post(editableView.f1835x);
        }
    }

    @Override
    public final void onFocusChanged(boolean z2, int i2, Rect rect) {
        d dVar = this.f1828q;
        if (z2) {
            dVar.run();
        } else {
            dVar.a();
        }
        if (z2) {
            dVar.run();
            MetaKeyKeyListener.resetMetaState(this.f1816e);
        } else {
            dVar.a();
        }
        super.onFocusChanged(z2, i2, rect);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00de  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e3  */
    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        ru.zdevs.zarchiver.ui.editor.b bVar;
        boolean zOnKeyDown;
        boolean z2;
        boolean z3 = false;
        if (isEnabled()) {
            if (i2 != 4) {
                if (i2 != 61) {
                    if (i2 != 112) {
                        if (i2 != 124) {
                            switch (i2) {
                                case 277:
                                    if (!keyEvent.hasNoModifiers() || !c() || !o(R.id.cut)) {
                                        c1.b bVar2 = this.f1818g;
                                        bVar2.beginBatchEdit();
                                        TextKeyListener textKeyListener = this.f1819h;
                                        bVar = this.f1816e;
                                        zOnKeyDown = textKeyListener.onKeyDown(this, bVar, i2, keyEvent);
                                        bVar2.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1820i.getClass();
                                            if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                                n(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                case 278:
                                    if (!keyEvent.hasNoModifiers() || !c() || !o(R.id.copy)) {
                                        c1.b bVar3 = this.f1818g;
                                        bVar3.beginBatchEdit();
                                        TextKeyListener textKeyListener2 = this.f1819h;
                                        bVar = this.f1816e;
                                        zOnKeyDown = textKeyListener2.onKeyDown(this, bVar, i2, keyEvent);
                                        bVar3.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1820i.getClass();
                                            if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                                n(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                case 279:
                                    if (!keyEvent.hasNoModifiers() || !d() || !o(R.id.paste)) {
                                        c1.b bVar4 = this.f1818g;
                                        bVar4.beginBatchEdit();
                                        TextKeyListener textKeyListener3 = this.f1819h;
                                        bVar = this.f1816e;
                                        zOnKeyDown = textKeyListener3.onKeyDown(this, bVar, i2, keyEvent);
                                        bVar4.endBatchEdit();
                                        if (zOnKeyDown) {
                                            this.f1820i.getClass();
                                            if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                                n(257);
                                                break;
                                            } else if (keyEvent.getSource() == 257) {
                                                switch (i2) {
                                                    case 19:
                                                    case 20:
                                                    case 21:
                                                    case 22:
                                                        z2 = true;
                                                        break;
                                                    default:
                                                        z2 = false;
                                                        break;
                                                }
                                                if (z2) {
                                                }
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    c1.b bVar5 = this.f1818g;
                                    bVar5.beginBatchEdit();
                                    TextKeyListener textKeyListener4 = this.f1819h;
                                    bVar = this.f1816e;
                                    zOnKeyDown = textKeyListener4.onKeyDown(this, bVar, i2, keyEvent);
                                    bVar5.endBatchEdit();
                                    if (zOnKeyDown) {
                                        this.f1820i.getClass();
                                        if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                            n(257);
                                            break;
                                        } else if (keyEvent.getSource() == 257) {
                                            switch (i2) {
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                    z2 = true;
                                                    break;
                                                default:
                                                    z2 = false;
                                                    break;
                                            }
                                            if (z2) {
                                            }
                                        }
                                    }
                                    break;
                            }
                        } else if (!keyEvent.hasModifiers(4096) || !c() ? !keyEvent.hasModifiers(1) || !d() || !o(R.id.paste) : !o(R.id.copy)) {
                            c1.b bVar6 = this.f1818g;
                            bVar6.beginBatchEdit();
                            TextKeyListener textKeyListener5 = this.f1819h;
                            bVar = this.f1816e;
                            zOnKeyDown = textKeyListener5.onKeyDown(this, bVar, i2, keyEvent);
                            bVar6.endBatchEdit();
                            if (zOnKeyDown) {
                                this.f1820i.getClass();
                                if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                    n(257);
                                } else if (keyEvent.getSource() == 257) {
                                    switch (i2) {
                                        case 19:
                                        case 20:
                                        case 21:
                                        case 22:
                                            z2 = true;
                                            break;
                                        default:
                                            z2 = false;
                                            break;
                                    }
                                    if (z2) {
                                    }
                                }
                            }
                        }
                    } else if (!keyEvent.hasModifiers(1) || !c() || !o(R.id.cut)) {
                        c1.b bVar7 = this.f1818g;
                        bVar7.beginBatchEdit();
                        TextKeyListener textKeyListener6 = this.f1819h;
                        bVar = this.f1816e;
                        zOnKeyDown = textKeyListener6.onKeyDown(this, bVar, i2, keyEvent);
                        bVar7.endBatchEdit();
                        if (zOnKeyDown) {
                            this.f1820i.getClass();
                            if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                                n(257);
                            } else if (keyEvent.getSource() == 257) {
                                switch (i2) {
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                        z2 = true;
                                        break;
                                    default:
                                        z2 = false;
                                        break;
                                }
                                if (z2) {
                                }
                            }
                        }
                    }
                } else if (!keyEvent.hasNoModifiers() && !keyEvent.hasModifiers(1)) {
                    c1.b bVar8 = this.f1818g;
                    bVar8.beginBatchEdit();
                    TextKeyListener textKeyListener7 = this.f1819h;
                    bVar = this.f1816e;
                    zOnKeyDown = textKeyListener7.onKeyDown(this, bVar, i2, keyEvent);
                    bVar8.endBatchEdit();
                    if (zOnKeyDown) {
                        this.f1820i.getClass();
                        if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                            n(257);
                        } else if (keyEvent.getSource() == 257) {
                            switch (i2) {
                                case 19:
                                case 20:
                                case 21:
                                case 22:
                                    z2 = true;
                                    break;
                                default:
                                    z2 = false;
                                    break;
                            }
                            if (z2) {
                            }
                        }
                    }
                }
            } else if (this.f1824m != null) {
                u();
            } else {
                c1.b bVar9 = this.f1818g;
                bVar9.beginBatchEdit();
                TextKeyListener textKeyListener8 = this.f1819h;
                bVar = this.f1816e;
                zOnKeyDown = textKeyListener8.onKeyDown(this, bVar, i2, keyEvent);
                bVar9.endBatchEdit();
                if (zOnKeyDown) {
                    this.f1820i.getClass();
                    if (ru.zdevs.zarchiver.ui.editor.f.f(this, bVar, i2, keyEvent)) {
                        n(257);
                    } else if (keyEvent.getSource() == 257) {
                        switch (i2) {
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                z2 = true;
                                break;
                            default:
                                z2 = false;
                                break;
                        }
                        if (z2) {
                        }
                    }
                }
            }
            z3 = true;
        }
        if (z3) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override
    public final boolean onKeyPreIme(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || this.f1824m == null) {
            return super.onKeyPreIme(i2, keyEvent);
        }
        u();
        return true;
    }

    @Override
    public final boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (isEnabled() && this.f1819h.onKeyUp(this, this.f1816e, i2, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return o(menuItem.getItemId());
    }

    @Override
    public final ContentInfo onReceiveContent(ContentInfo contentInfo) {
        a0.b.e(contentInfo);
        int source = contentInfo.getSource();
        if (source == 2 || source == 4) {
            return contentInfo;
        }
        p(contentInfo.getClip());
        return null;
    }

    @Override
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.getSuperState());
        ru.zdevs.zarchiver.ui.editor.b.a aVar = gVar.f1849b;
        if (aVar != null) {
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
            synchronized (bVar) {
                bVar.f1856b.clear();
                bVar.f1856b.addAll(aVar.f1868a);
                bVar.f1857c = aVar.f1870c;
                int[] iArr = bVar.f1861g;
                int[] iArr2 = aVar.f1869b;
                iArr[0] = iArr2[0];
                iArr[1] = iArr2[1];
                bVar.r(false, false, false);
            }
            this.f1817f.h(gVar.f1850c, gVar.f1851d, true);
        }
    }

    @Override
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        int i2 = bVar.f1857c;
        if (i2 != 0) {
            if (i2 < 1047552) {
                g gVar = new g(parcelableOnSaveInstanceState);
                ru.zdevs.zarchiver.ui.editor.c cVar = this.f1817f;
                gVar.f1850c = cVar.b();
                gVar.f1851d = cVar.c();
                gVar.f1848a = bVar;
                return gVar;
            }
        }
        return parcelableOnSaveInstanceState;
    }

    @Override
    public final void onScreenStateChanged(int i2) {
        super.onScreenStateChanged(i2);
        d dVar = this.f1828q;
        if (i2 == 0) {
            dVar.a();
        } else {
            if (i2 != 1) {
                return;
            }
            dVar.run();
        }
    }

    @Override
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 && this.f1829r) {
            this.f1816e.r(false, true, false);
        }
        n((i5 <= i3 || this.f1827p.top <= i3) ? 4 : 260);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (!isEnabled()) {
            return false;
        }
        ru.zdevs.zarchiver.ui.editor.d dVar = this.f1826o;
        if (dVar.f1922m == 0) {
            z2 = false;
        } else {
            View view = dVar.f1910a;
            ru.zdevs.zarchiver.ui.editor.d.b bVar = (ru.zdevs.zarchiver.ui.editor.d.b) view;
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    if (dVar.f1922m == 2) {
                        dVar.a(1);
                    }
                } else if (action != 2) {
                    if (action == 3) {
                        if (dVar.f1922m == 2) {
                            dVar.a(1);
                        }
                    }
                } else if (dVar.f1922m == 2) {
                    if (Math.abs(dVar.f1923n - y2) > dVar.f1911b) {
                        view.setScrollY((int) (((bVar.computeVerticalScrollRange() - view.getHeight()) * y2) / (view.getHeight() - dVar.f1919j)));
                        dVar.f1923n = y2;
                    }
                }
                z2 = false;
            } else {
                if (dVar.f1920k.contains((int) x2, (int) y2)) {
                    dVar.f1923n = y2;
                    dVar.a(2);
                }
            }
            if (dVar.f1922m == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2) {
            return true;
        }
        ru.zdevs.zarchiver.ui.editor.c cVar = this.f1817f;
        ru.zdevs.zarchiver.ui.editor.c.a aVar = cVar.f1892b;
        if (aVar != null && aVar.onTouchEvent(motionEvent)) {
            return true;
        }
        if (cVar.f1899i && motionEvent.getActionMasked() == 1) {
            ((EditableView) cVar.f1891a).k(-3);
            cVar.f1899i = false;
        }
        return cVar.f1896f.onTouchEvent(motionEvent);
    }

    @Override
    public final void onWindowFocusChanged(boolean z2) {
        d dVar = this.f1828q;
        if (z2) {
            dVar.run();
        } else {
            dVar.a();
        }
        super.onWindowFocusChanged(z2);
    }

    public final int p(ClipData clipData) {
        Context context = getContext();
        c1.b bVar = this.f1818g;
        bVar.beginBatchEdit();
        int length = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
            try {
                CharSequence charSequenceCoerceToText = clipData.getItemAt(i2).coerceToText(context);
                if (charSequenceCoerceToText instanceof Spanned) {
                    charSequenceCoerceToText = charSequenceCoerceToText.toString();
                }
                if (charSequenceCoerceToText != null) {
                    ru.zdevs.zarchiver.ui.editor.b bVar2 = this.f1816e;
                    if (z2) {
                        int selectionStart = getSelectionStart();
                        int selectionEnd = getSelectionEnd();
                        int iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
                        int iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
                        Selection.setSelection(bVar2, iMax2);
                        bVar2.replace(iMax, iMax2, charSequenceCoerceToText);
                        length += charSequenceCoerceToText.length() - (iMax2 - iMax);
                        z2 = false;
                    } else {
                        bVar2.insert(getSelectionStart(), "\n");
                        bVar2.insert(getSelectionStart(), charSequenceCoerceToText);
                        length += charSequenceCoerceToText.length() + 1;
                    }
                }
            } catch (Throwable th) {
                String message = th.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    ZApp.j(message);
                }
            }
        }
        bVar.endBatchEdit();
        return length;
    }

    @Override
    public final void postInvalidate() {
        super.postInvalidate();
        awakenScrollBars();
    }

    public final void q(int i2, boolean z2) {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        if (z2) {
            if (this.f1834w == null) {
                this.f1834w = new c1.d(this, getLineHeight());
            }
            this.f1833v = i2;
        } else {
            c1.d dVar = this.f1834w;
            if (dVar != null) {
                dVar.a();
                this.f1834w = null;
            }
        }
    }

    public final void r(int i2, int i3) {
        int[] iArr = this.f1816e.f1861g;
        if (i2 == iArr[0] && i3 == iArr[1]) {
            return;
        }
        this.f1818g.setSelection(i2, i3);
    }

    public final void s(int i2, int i3, int i4) {
        ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
        int[] iArr = bVar.f1861g;
        if (i2 == iArr[0] && i3 == iArr[1]) {
            return;
        }
        c1.b bVar2 = this.f1818g;
        bVar2.beginBatchEdit();
        r(i2, i3);
        bVar.n((i4 == 1 ? 512 : 0) | 256);
        bVar2.endBatchEdit();
    }

    @Override
    public void setCursorBlink(boolean z2) {
        d dVar = this.f1828q;
        dVar.f1842b = z2;
        dVar.f1843c = true;
        if (z2 && dVar.f1841a && z2) {
            dVar.f1843c = true;
            dVar.f1841a = false;
            EditableView.this.postDelayed(dVar, 500L);
        }
    }

    public void setFont(int i2) {
        Typeface typefaceCreate;
        if (i2 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i2 == 2) {
            typefaceCreate = Typeface.MONOSPACE;
        } else if (i2 != 3) {
            typefaceCreate = i2 != 4 ? Typeface.SERIF : Typeface.create("sans-serif-condensed", 0);
        } else {
            typefaceCreate = Typeface.create("sans-serif-light", 0);
        }
        c1.e eVar = this.f1822k;
        eVar.f457a.setTypeface(typefaceCreate);
        eVar.f459c = 0;
        eVar.f461e = 0;
        this.f1823l.setTypeface(typefaceCreate);
        this.f1816e.r(false, false, true);
        n(4);
    }

    public void setFontSize(float f2) {
        float fApplyDimension = TypedValue.applyDimension(2, f2, getDisplayMetricsOrSystem());
        c1.e eVar = this.f1822k;
        eVar.f457a.setTextSize(fApplyDimension);
        eVar.f459c = 0;
        eVar.f461e = 0;
        this.f1823l.setTextSize(fApplyDimension);
        this.f1816e.r(false, false, true);
        n(4);
    }

    public void setLineNumber(boolean z2) {
        if (z2 != this.f1830s) {
            this.f1830s = z2;
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
            if (bVar.f1857c != 0) {
                if (this.f1829r) {
                    bVar.r(false, true, false);
                }
                n(4);
            }
        }
    }

    public void setOnTextChangeChange(f fVar) {
        this.f1832u = fVar;
    }

    @Override
    public void setScrollY(int i2) {
        ru.zdevs.zarchiver.ui.editor.c cVar = this.f1817f;
        cVar.f(cVar.b(), i2, true);
        postInvalidate();
    }

    public void setSyntax(int i2) {
        if (this.f1816e.p(i2)) {
            postInvalidate();
        }
    }

    public void setWordWrap(boolean z2) {
        if (z2 != this.f1829r) {
            this.f1829r = z2;
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
            if (bVar.f1857c != 0) {
                bVar.r(false, true, false);
                n(4);
            }
        }
    }

    public final void t(int i2) {
        if (this.f1824m != null) {
            u();
        }
        if (i2 != 2) {
            this.f1825n = i2;
            int i3 = Build.VERSION.SDK_INT;
            if (i3 < 23) {
                this.f1824m = startActionMode(new b(i2));
                return;
            } else if (i3 < 26 || !j()) {
                this.f1824m = startActionMode(new c(i2, null), 1);
                return;
            } else {
                new c1.f(getContext(), this).execute(new Void[0]);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            int selectionStart = getSelectionStart();
            int selectionEnd = getSelectionEnd();
            if (selectionStart == -1 || selectionEnd == -1 || selectionEnd == selectionStart) {
                return;
            }
            if (selectionStart <= selectionEnd) {
                selectionEnd = selectionStart;
                selectionStart = selectionEnd;
            }
            if (selectionStart - selectionEnd > 1047552) {
                return;
            }
            ru.zdevs.zarchiver.ui.editor.b bVar = this.f1816e;
            String strValueOf = String.valueOf(bVar.subSequence(selectionEnd, selectionStart));
            CharSequence charSequenceSubSequence = strValueOf.length() > 20 ? bVar.subSequence(selectionEnd, bVar.j(selectionEnd + 20)[1]) : strValueOf;
            TextView textView = new TextView(getContext());
            textView.setText(charSequenceSubSequence);
            textView.setTextAppearance(R.style.TextAppearance.Large);
            textView.setGravity(17);
            textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            textView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
            textView.postInvalidate();
            try {
                startDragAndDrop(ClipData.newPlainText(null, strValueOf), new View.DragShadowBuilder(textView), new e(this, selectionEnd, selectionStart), 256);
                u();
            } catch (Exception unused) {
            }
        }
    }

    public final void u() {
        ActionMode actionMode = this.f1824m;
        if (actionMode != null) {
            actionMode.finish();
        }
    }
}
