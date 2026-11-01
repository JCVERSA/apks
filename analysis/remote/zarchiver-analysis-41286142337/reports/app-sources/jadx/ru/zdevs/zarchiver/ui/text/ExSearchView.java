package ru.zdevs.zarchiver.ui.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.SearchView;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import v0.h;

public class ExSearchView extends SearchView implements View.OnFocusChangeListener, SearchView.OnQueryTextListener, SearchView.OnCloseListener {

    public static final ru.zdevs.zarchiver.ui.layout.a.C0039a[] f1983i = {new ru.zdevs.zarchiver.ui.layout.a.C0039a("[SF]", R.drawable.ic_subfolder, R.drawable.ic_subfolder_off, 0, -769226), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[APK]", R.drawable.ic_app, 0, R.string.SC_APK, -31433), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[ARC]", R.drawable.ic_archive, 0, R.string.SC_ARCHIVE, -684283), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[MP3]", R.drawable.ic_music, 0, R.string.SC_AUDIO, -2817799), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[DOC]", R.drawable.ic_document_file, 0, R.string.SC_DOCUMENT, -14059009), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[IMG]", R.drawable.ic_picture, 0, R.string.SC_IMAGE, -13130933), new ru.zdevs.zarchiver.ui.layout.a.C0039a("[VID]", R.drawable.ic_video, 0, R.string.SC_VIDEO, -10149889)};

    public EditText f1984a;

    public SearchView.OnCloseListener f1985b;

    public c f1986c;

    public String[] f1987d;

    public String f1988e;

    public PopupWindow f1989f;

    public ru.zdevs.zarchiver.ui.layout.a f1990g;

    public final b f1991h;

    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override
        public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
            ExSearchView exSearchView = ExSearchView.this;
            if (!ExSearchView.a(exSearchView)) {
                return true;
            }
            exSearchView.clearFocus();
            return true;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            boolean z2;
            int i2;
            ExSearchView exSearchView = ExSearchView.this;
            EditText editText = exSearchView.f1984a;
            if (editText == null) {
                return;
            }
            if (exSearchView.f1987d == null) {
                editText.setText(exSearchView.f1988e);
                return;
            }
            ru.zdevs.zarchiver.ui.layout.a.C0039a[] c0039aArr = ExSearchView.f1983i;
            String string = null;
            int i3 = 0;
            for (int i4 = 0; i4 < 7; i4++) {
                ru.zdevs.zarchiver.ui.layout.a.C0039a c0039a = c0039aArr[i4];
                String[] strArr = exSearchView.f1987d;
                String str = c0039a.f1933a;
                if (strArr == null) {
                    z2 = false;
                    break;
                }
                int length = strArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        z2 = false;
                        break;
                    } else {
                        if (h.f(strArr[i5], str)) {
                            z2 = true;
                            break;
                        }
                        i5++;
                    }
                }
                if (z2 && (i2 = c0039a.f1936d) != 0) {
                    i3++;
                    string = i3 > 1 ? "... " + i3 : exSearchView.getResources().getString(i2);
                }
            }
            if (string == null) {
                exSearchView.f1984a.setText(exSearchView.f1988e);
                return;
            }
            g1.a aVar = new g1.a(z0.c.c(exSearchView.getContext(), R.attr.colorPrimaryDark));
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) string).append(' ').append((CharSequence) exSearchView.f1988e).setSpan(aVar, 0, string.length(), 33);
            exSearchView.f1984a.setText(spannableStringBuilder);
        }
    }

    public interface c {
        void a(String str, String[] strArr);
    }

    public ExSearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a();
        this.f1991h = new b();
        EditText editTextC = c(this);
        this.f1984a = editTextC;
        if (editTextC != null) {
            editTextC.setOnFocusChangeListener(this);
            this.f1984a.setOnEditorActionListener(aVar);
            this.f1984a.setImeOptions(268435456);
        }
        if (Build.VERSION.SDK_INT >= 21 && v0.b.h() && !z0.c.b(getContext(), R.attr.isLightTheme)) {
            EditText editText = this.f1984a;
            if (editText != null) {
                editText.setTextColor(-1);
            }
            ImageView imageViewD = d(this);
            if (imageViewD != null) {
                imageViewD.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
            }
        }
        setOnQueryTextListener(this);
    }

    public static boolean a(ExSearchView exSearchView) {
        Editable text = exSearchView.f1984a.getText();
        String[] chips = exSearchView.getChips();
        if ((text == null || TextUtils.getTrimmedLength(text) <= 0) && (chips == null || (chips.length <= 1 && (chips.length != 1 || "[SF]".equals(chips[0]))))) {
            return false;
        }
        c cVar = exSearchView.f1986c;
        if (cVar == null) {
            return true;
        }
        cVar.a(text == null ? "" : text.toString(), chips);
        return true;
    }

    public static EditText c(LinearLayout linearLayout) {
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof EditText) {
                return (EditText) childAt;
            }
            if (childAt instanceof LinearLayout) {
                return c((LinearLayout) childAt);
            }
        }
        return null;
    }

    public static ImageView d(LinearLayout linearLayout) {
        int childCount = linearLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = linearLayout.getChildAt(i2);
            if (childAt instanceof ImageView) {
                return (ImageView) childAt;
            }
            if (childAt instanceof LinearLayout) {
                return d((LinearLayout) childAt);
            }
        }
        return null;
    }

    private synchronized String[] getChips() {
        ru.zdevs.zarchiver.ui.layout.a aVar = this.f1990g;
        if (aVar != null) {
            this.f1987d = aVar.getChips();
        }
        return this.f1987d;
    }

    public final void b() {
        super.setOnCloseListener(null);
        synchronized (this) {
            PopupWindow popupWindow = this.f1989f;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f1989f = null;
                this.f1990g = null;
            }
        }
        this.f1987d = null;
        EditText editText = this.f1984a;
        if (editText != null) {
            this.f1988e = "";
            editText.setText("");
            setIconified(true);
        } else {
            for (int i2 = 0; !isIconified() && i2 < 5; i2++) {
                setIconified(true);
            }
        }
        super.setOnCloseListener(this);
    }

    public final void e(String str, String[] strArr) {
        if (this.f1984a == null) {
            this.f1984a = c(this);
        }
        EditText editText = this.f1984a;
        if (editText != null) {
            editText.setVisibility(4);
            this.f1984a.setEnabled(false);
            this.f1984a.setOnFocusChangeListener(null);
        }
        this.f1987d = strArr;
        this.f1988e = str;
        setIconified(false);
        clearFocus();
        if (this.f1984a == null) {
            setQuery(str, false);
            return;
        }
        this.f1991h.run();
        this.f1984a.setVisibility(0);
        this.f1984a.setEnabled(true);
        this.f1984a.setOnFocusChangeListener(this);
    }

    @Override
    public final boolean onClose() {
        synchronized (this) {
            PopupWindow popupWindow = this.f1989f;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f1989f = null;
                this.f1990g = null;
            }
        }
        this.f1987d = null;
        SearchView.OnCloseListener onCloseListener = this.f1985b;
        if (onCloseListener != null) {
            return onCloseListener.onClose();
        }
        return false;
    }

    @Override
    public final void onFocusChange(View view, boolean z2) {
        FrameLayout frameLayout;
        Drawable drawable;
        Handler handler = getHandler();
        synchronized (this) {
            try {
                if (z2) {
                    if (handler != null) {
                        handler.removeCallbacks(this.f1991h);
                    }
                    if (this.f1989f == null) {
                        ru.zdevs.zarchiver.ui.layout.a aVar = new ru.zdevs.zarchiver.ui.layout.a(getContext());
                        this.f1990g = aVar;
                        aVar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                        this.f1990g.a(f1983i, this.f1987d);
                        HorizontalScrollView horizontalScrollView = new HorizontalScrollView(getContext());
                        horizontalScrollView.setHorizontalScrollBarEnabled(false);
                        horizontalScrollView.addView(this.f1990g);
                        if (Build.VERSION.SDK_INT < 21 || t0.b.k(1536)) {
                            horizontalScrollView.setBackgroundDrawable(new ColorDrawable(t0.b.k(768) ? getContext().getResources().getColor(R.color.background_holo_dark) : z0.c.c(getContext(), android.R.attr.colorBackground)));
                            frameLayout = horizontalScrollView;
                        } else {
                            Context context = getContext();
                            try {
                                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.actionBarStyle});
                                int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                                typedArrayObtainStyledAttributes.recycle();
                                TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, new int[]{android.R.attr.background});
                                drawable = typedArrayObtainStyledAttributes2.getDrawable(0);
                                typedArrayObtainStyledAttributes2.recycle();
                            } catch (Exception unused) {
                                drawable = null;
                            }
                            horizontalScrollView.setBackground(drawable);
                            FrameLayout frameLayout2 = new FrameLayout(getContext());
                            frameLayout2.addView(horizontalScrollView);
                            frameLayout2.setMinimumHeight(((int) getResources().getDimension(R.dimen.chips_item_height)) + 50);
                            horizontalScrollView.setElevation(25.0f);
                            frameLayout = frameLayout2;
                        }
                        PopupWindow popupWindow = new PopupWindow(frameLayout, -1, -2);
                        this.f1989f = popupWindow;
                        popupWindow.setBackgroundDrawable(null);
                        if (Build.VERSION.SDK_INT >= 23) {
                            this.f1989f.setWindowLayoutType(1002);
                        }
                        try {
                            this.f1989f.showAsDropDown(this, 0, 0);
                        } catch (WindowManager.BadTokenException unused2) {
                        }
                    }
                    if (!h.e(this.f1984a.getText().toString())) {
                        this.f1984a.setText(this.f1988e);
                    }
                } else {
                    if (this.f1989f != null) {
                        this.f1987d = this.f1990g.getChips();
                        this.f1989f.dismiss();
                        this.f1989f = null;
                        this.f1990g = null;
                    }
                    CharSequence query = getQuery();
                    this.f1988e = query == null ? "" : query.toString();
                    if (handler != null) {
                        handler.postDelayed(this.f1991h, 20L);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public final boolean onQueryTextChange(String str) {
        return false;
    }

    @Override
    public final boolean onQueryTextSubmit(String str) {
        c cVar = this.f1986c;
        if (cVar == null) {
            return false;
        }
        cVar.a(str, getChips());
        return true;
    }

    @Override
    public void setOnCloseListener(SearchView.OnCloseListener onCloseListener) {
        this.f1985b = onCloseListener;
        super.setOnCloseListener(onCloseListener);
    }

    public void setOnQueryListener(c cVar) {
        this.f1986c = cVar;
    }
}
