package androidx.appcompat.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.tn.lib.view.FlowLayout;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.mvel2.ast.ASTNode;

public class SearchView extends LinearLayoutCompat implements androidx.appcompat.view.c {
    static final m V;
    private boolean A;
    private CharSequence B;
    private boolean C;
    private boolean D;
    private int E;
    private boolean F;
    private CharSequence G;
    private CharSequence H;
    private boolean I;
    private int J;
    SearchableInfo K;
    private Bundle L;
    private final Runnable M;
    private Runnable N;
    private final WeakHashMap O;
    private final View.OnClickListener P;
    View.OnKeyListener Q;
    private final TextView.OnEditorActionListener R;
    private final AdapterView.OnItemClickListener S;
    private final AdapterView.OnItemSelectedListener T;
    private TextWatcher U;

    final SearchAutoComplete f1529a;

    private final View f1530b;

    private final View f1531c;

    private final View f1532d;

    final ImageView f1533e;

    final ImageView f1534f;

    final ImageView f1535g;

    final ImageView f1536h;

    private final View f1537i;

    private n f1538j;

    private Rect f1539k;

    private Rect f1540l;

    private int[] f1541m;

    private int[] f1542n;

    private final ImageView f1543o;

    private final Drawable f1544p;

    private final int f1545q;

    private final int f1546r;

    private final Intent f1547s;

    private final Intent f1548t;

    private final CharSequence f1549u;

    View.OnFocusChangeListener f1550v;

    private View.OnClickListener f1551w;

    private boolean f1552x;

    private boolean f1553y;

    g1.a f1554z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        boolean f1555a;

        class a implements Parcelable.ClassLoaderCreator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1555a + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeValue(Boolean.valueOf(this.f1555a));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1555a = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        private int f1556e;

        private SearchView f1557f;

        private boolean f1558g;

        final Runnable f1559h;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 >= 600) {
                return PsExtractor.AUDIO_STREAM;
            }
            if (i10 < 640 || i11 < 480) {
                return 160;
            }
            return PsExtractor.AUDIO_STREAM;
        }

        void b() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.V.c(this);
                return;
            }
            i.b(this, 1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        boolean c() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void d() {
            if (this.f1558g) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1558g = false;
            }
        }

        @Override
        public boolean enoughToFilter() {
            return this.f1556e <= 0 || super.enoughToFilter();
        }

        @Override
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1558g) {
                removeCallbacks(this.f1559h);
                post(this.f1559h);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override
        protected void onFocusChanged(boolean z10, int i10, Rect rect) {
            super.onFocusChanged(z10, i10, rect);
            this.f1557f.A();
        }

        @Override
        public boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1557f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override
        public void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f1557f.hasFocus() && getVisibility() == 0) {
                this.f1558g = true;
                if (SearchView.n(getContext())) {
                    b();
                }
            }
        }

        void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f1558g = false;
                removeCallbacks(this.f1559h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1558g = true;
                    return;
                }
                this.f1558g = false;
                removeCallbacks(this.f1559h);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1557f = searchView;
        }

        @Override
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f1556e = i10;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R$attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10);
            this.f1559h = new Runnable() {
                @Override
                public void run() {
                    SearchAutoComplete.this.d();
                }
            };
            this.f1556e = getThreshold();
        }

        @Override
        public void performCompletion() {
        }

        @Override
        protected void replaceText(CharSequence charSequence) {
        }
    }

    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override
        public void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f1550v;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    class c implements View.OnLayoutChangeListener {
        c() {
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            SearchView.this.d();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1533e) {
                searchView.w();
                return;
            }
            if (view == searchView.f1535g) {
                searchView.s();
                return;
            }
            if (view == searchView.f1534f) {
                searchView.x();
            } else if (view == searchView.f1536h) {
                searchView.B();
            } else if (view == searchView.f1529a) {
                searchView.j();
            }
        }
    }

    class e implements View.OnKeyListener {
        e() {
        }

        @Override
        public boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.K == null) {
                return false;
            }
            if (searchView.f1529a.isPopupShowing() && SearchView.this.f1529a.getListSelection() != -1) {
                return SearchView.this.y(view, i10, keyEvent);
            }
            if (SearchView.this.f1529a.c() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i10 != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.q(0, null, searchView2.f1529a.getText().toString());
            return true;
        }
    }

    class f implements TextView.OnEditorActionListener {
        f() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            SearchView.this.x();
            return true;
        }
    }

    class g implements AdapterView.OnItemClickListener {
        g() {
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            SearchView.this.t(i10, 0, null);
        }
    }

    static class i {
        static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        static void b(SearchAutoComplete searchAutoComplete, int i10) {
            searchAutoComplete.setInputMethodMode(i10);
        }
    }

    public interface j {
    }

    public interface k {
    }

    public interface l {
    }

    private static class m {

        private Method f1568a;

        private Method f1569b;

        private Method f1570c;

        m() {
            this.f1568a = null;
            this.f1569b = null;
            this.f1570c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
                this.f1568a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
                this.f1569b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1570c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1569b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, null);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1568a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, null);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f1570c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    private static class n extends TouchDelegate {

        private final View f1571a;

        private final Rect f1572b;

        private final Rect f1573c;

        private final Rect f1574d;

        private final int f1575e;

        private boolean f1576f;

        public n(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1575e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1572b = new Rect();
            this.f1574d = new Rect();
            this.f1573c = new Rect();
            a(rect, rect2);
            this.f1571a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.f1572b.set(rect);
            this.f1574d.set(rect);
            Rect rect3 = this.f1574d;
            int i10 = this.f1575e;
            rect3.inset(-i10, -i10);
            this.f1573c.set(rect2);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003e  */
        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z11 = this.f1576f;
                    if (z11 && !this.f1574d.contains(x10, y10)) {
                        z12 = z11;
                        z10 = false;
                    }
                } else if (action != 3) {
                    z10 = true;
                    z12 = false;
                } else {
                    z11 = this.f1576f;
                    this.f1576f = false;
                }
                z12 = z11;
                z10 = true;
            } else if (this.f1572b.contains(x10, y10)) {
                this.f1576f = true;
                z10 = true;
            } else {
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (!z10 || this.f1573c.contains(x10, y10)) {
                Rect rect = this.f1573c;
                motionEvent.setLocation(x10 - rect.left, y10 - rect.top);
            } else {
                motionEvent.setLocation(this.f1571a.getWidth() / 2, this.f1571a.getHeight() / 2);
            }
            return this.f1571a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        V = Build.VERSION.SDK_INT < 29 ? new m() : null;
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    private void C() {
        post(this.M);
    }

    private void D(int i10) {
        Editable text = this.f1529a.getText();
        Cursor cursorD = this.f1554z.d();
        if (cursorD == null) {
            return;
        }
        if (!cursorD.moveToPosition(i10)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceB = this.f1554z.b(cursorD);
        if (charSequenceB != null) {
            setQuery(charSequenceB);
        } else {
            setQuery(text);
        }
    }

    private void E() {
        boolean zIsEmpty = TextUtils.isEmpty(this.f1529a.getText());
        this.f1535g.setVisibility(!zIsEmpty || (this.f1552x && !this.I) ? 0 : 8);
        Drawable drawable = this.f1535g.getDrawable();
        if (drawable != null) {
            drawable.setState(!zIsEmpty ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void G() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1529a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(l(queryHint));
    }

    private void H() {
        this.f1529a.setThreshold(this.K.getSuggestThreshold());
        this.f1529a.setImeOptions(this.K.getImeOptions());
        int inputType = this.K.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= FlowLayout.SPACING_ALIGN;
            if (this.K.getSuggestAuthority() != null) {
                inputType |= 589824;
            }
        }
        this.f1529a.setInputType(inputType);
        g1.a aVar = this.f1554z;
        if (aVar != null) {
            aVar.a(null);
        }
        if (this.K.getSuggestAuthority() != null) {
            e0 e0Var = new e0(getContext(), this, this.K, this.O);
            this.f1554z = e0Var;
            this.f1529a.setAdapter(e0Var);
            ((e0) this.f1554z).x(this.C ? 2 : 1);
        }
    }

    private void I() {
        this.f1532d.setVisibility((o() && (this.f1534f.getVisibility() == 0 || this.f1536h.getVisibility() == 0)) ? 0 : 8);
    }

    private void J(boolean z10) {
        this.f1534f.setVisibility((this.A && o() && hasFocus() && (z10 || !this.F)) ? 0 : 8);
    }

    private void K(boolean z10) {
        this.f1553y = z10;
        int i10 = 8;
        int i11 = z10 ? 0 : 8;
        boolean zIsEmpty = TextUtils.isEmpty(this.f1529a.getText());
        this.f1533e.setVisibility(i11);
        J(!zIsEmpty);
        this.f1530b.setVisibility(z10 ? 8 : 0);
        if (this.f1543o.getDrawable() != null && !this.f1552x) {
            i10 = 0;
        }
        this.f1543o.setVisibility(i10);
        E();
        L(zIsEmpty);
        I();
    }

    private void L(boolean z10) {
        int i10 = 8;
        if (this.F && !isIconified() && z10) {
            this.f1534f.setVisibility(8);
            i10 = 0;
        }
        this.f1536h.setVisibility(i10);
    }

    private Intent e(String str, Uri uri, String str2, String str3, int i10, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(ASTNode.DEOP);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.H);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.L;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i10 != 0) {
            intent.putExtra("action_key", i10);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.K.getSearchActivity());
        return intent;
    }

    private Intent f(Cursor cursor, int i10, String str) {
        int position;
        String strO;
        try {
            String strO2 = e0.o(cursor, "suggest_intent_action");
            if (strO2 == null) {
                strO2 = this.K.getSuggestIntentAction();
            }
            if (strO2 == null) {
                strO2 = "android.intent.action.SEARCH";
            }
            String str2 = strO2;
            String strO3 = e0.o(cursor, "suggest_intent_data");
            if (strO3 == null) {
                strO3 = this.K.getSuggestIntentData();
            }
            if (strO3 != null && (strO = e0.o(cursor, "suggest_intent_data_id")) != null) {
                strO3 = strO3 + "/" + Uri.encode(strO);
            }
            return e(str2, strO3 == null ? null : Uri.parse(strO3), e0.o(cursor, "suggest_intent_extra_data"), e0.o(cursor, "suggest_intent_query"), i10, str);
        } catch (RuntimeException e10) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e10);
            return null;
        }
    }

    private Intent g(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.L;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R$dimen.abc_search_view_preferred_width);
    }

    private Intent h(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void i() {
        this.f1529a.dismissDropDown();
    }

    private void k(View view, Rect rect) {
        view.getLocationInWindow(this.f1541m);
        getLocationInWindow(this.f1542n);
        int[] iArr = this.f1541m;
        int i10 = iArr[1];
        int[] iArr2 = this.f1542n;
        int i11 = i10 - iArr2[1];
        int i12 = iArr[0] - iArr2[0];
        rect.set(i12, i11, view.getWidth() + i12, view.getHeight() + i11);
    }

    private CharSequence l(CharSequence charSequence) {
        if (!this.f1552x || this.f1544p == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f1529a.getTextSize()) * 1.25d);
        this.f1544p.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1544p), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean m() {
        Intent intent;
        SearchableInfo searchableInfo = this.K;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        if (this.K.getVoiceSearchLaunchWebSearch()) {
            intent = this.f1547s;
        } else {
            intent = this.K.getVoiceSearchLaunchRecognizer() ? this.f1548t : null;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    static boolean n(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean o() {
        return (this.A || this.F) && !isIconified();
    }

    private void p(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e10) {
            Log.e("SearchView", "Failed launch activity: " + intent, e10);
        }
    }

    private boolean r(int i10, int i11, String str) {
        Cursor cursorD = this.f1554z.d();
        if (cursorD == null || !cursorD.moveToPosition(i10)) {
            return false;
        }
        p(f(cursorD, i11, str));
        return true;
    }

    void A() {
        K(isIconified());
        C();
        if (this.f1529a.hasFocus()) {
            j();
        }
    }

    void B() {
        SearchableInfo searchableInfo = this.K;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(h(this.f1547s, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(g(this.f1548t, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    void F() {
        int[] iArr = this.f1529a.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1531c.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1532d.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override
    public void clearFocus() {
        this.D = true;
        super.clearFocus();
        this.f1529a.clearFocus();
        this.f1529a.setImeVisibility(false);
        this.D = false;
    }

    void d() {
        if (this.f1537i.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1531c.getPaddingLeft();
            Rect rect = new Rect();
            boolean zB = u0.b(this);
            int dimensionPixelSize = this.f1552x ? resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R$dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f1529a.getDropDownBackground().getPadding(rect);
            this.f1529a.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1529a.setDropDownWidth((((this.f1537i.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public int getImeOptions() {
        return this.f1529a.getImeOptions();
    }

    public int getInputType() {
        return this.f1529a.getInputType();
    }

    public int getMaxWidth() {
        return this.E;
    }

    public CharSequence getQuery() {
        return this.f1529a.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.B;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.K;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1549u : getContext().getText(this.K.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.f1546r;
    }

    int getSuggestionRowLayout() {
        return this.f1545q;
    }

    public g1.a getSuggestionsAdapter() {
        return this.f1554z;
    }

    public boolean isIconfiedByDefault() {
        return this.f1552x;
    }

    public boolean isIconified() {
        return this.f1553y;
    }

    public boolean isQueryRefinementEnabled() {
        return this.C;
    }

    public boolean isSubmitButtonEnabled() {
        return this.A;
    }

    void j() {
        if (Build.VERSION.SDK_INT >= 29) {
            i.a(this.f1529a);
            return;
        }
        m mVar = V;
        mVar.b(this.f1529a);
        mVar.a(this.f1529a);
    }

    @Override
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        K(true);
        this.f1529a.setImeOptions(this.J);
        this.I = false;
    }

    @Override
    public void onActionViewExpanded() {
        if (this.I) {
            return;
        }
        this.I = true;
        int imeOptions = this.f1529a.getImeOptions();
        this.J = imeOptions;
        this.f1529a.setImeOptions(imeOptions | ASTNode.PCTX_STORED);
        this.f1529a.setText("");
        setIconified(false);
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(this.M);
        post(this.N);
        super.onDetachedFromWindow();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            k(this.f1529a, this.f1539k);
            Rect rect = this.f1540l;
            Rect rect2 = this.f1539k;
            rect.set(rect2.left, 0, rect2.right, i13 - i11);
            n nVar = this.f1538j;
            if (nVar != null) {
                nVar.a(this.f1540l, this.f1539k);
                return;
            }
            n nVar2 = new n(this.f1540l, this.f1539k, this.f1529a);
            this.f1538j = nVar2;
            setTouchDelegate(nVar2);
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int i12;
        if (isIconified()) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            int i13 = this.E;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.E;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i12 = this.E) > 0) {
            size = Math.min(i12, size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        K(savedState.f1555a);
        requestLayout();
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1555a = isIconified();
        return savedState;
    }

    @Override
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        C();
    }

    void q(int i10, String str, String str2) {
        getContext().startActivity(e("android.intent.action.SEARCH", null, null, str2, i10, str));
    }

    @Override
    public boolean requestFocus(int i10, Rect rect) {
        if (this.D || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i10, rect);
        }
        boolean zRequestFocus = this.f1529a.requestFocus(i10, rect);
        if (zRequestFocus) {
            K(false);
        }
        return zRequestFocus;
    }

    void s() {
        if (!TextUtils.isEmpty(this.f1529a.getText())) {
            this.f1529a.setText("");
            this.f1529a.requestFocus();
            this.f1529a.setImeVisibility(true);
        } else if (this.f1552x) {
            clearFocus();
            K(true);
        }
    }

    public void setAppSearchData(Bundle bundle) {
        this.L = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            s();
        } else {
            w();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.f1552x == z10) {
            return;
        }
        this.f1552x = z10;
        K(z10);
        G();
    }

    public void setImeOptions(int i10) {
        this.f1529a.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.f1529a.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.E = i10;
        requestLayout();
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1550v = onFocusChangeListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1551w = onClickListener;
    }

    public void setQuery(CharSequence charSequence, boolean z10) {
        this.f1529a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1529a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.H = charSequence;
        }
        if (!z10 || TextUtils.isEmpty(charSequence)) {
            return;
        }
        x();
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.B = charSequence;
        G();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        this.C = z10;
        g1.a aVar = this.f1554z;
        if (aVar instanceof e0) {
            ((e0) aVar).x(z10 ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.K = searchableInfo;
        if (searchableInfo != null) {
            H();
            G();
        }
        boolean zM = m();
        this.F = zM;
        if (zM) {
            this.f1529a.setPrivateImeOptions("nm");
        }
        K(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.A = z10;
        K(isIconified());
    }

    public void setSuggestionsAdapter(g1.a aVar) {
        this.f1554z = aVar;
        this.f1529a.setAdapter(aVar);
    }

    boolean t(int i10, int i11, String str) {
        r(i10, 0, null);
        this.f1529a.setImeVisibility(false);
        i();
        return true;
    }

    boolean u(int i10) {
        D(i10);
        return true;
    }

    protected void v(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void w() {
        K(false);
        this.f1529a.requestFocus();
        this.f1529a.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1551w;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void x() {
        Editable text = this.f1529a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.K != null) {
            q(0, null, text.toString());
        }
        this.f1529a.setImeVisibility(false);
        i();
    }

    boolean y(View view, int i10, KeyEvent keyEvent) {
        if (this.K != null && this.f1554z != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i10 == 66 || i10 == 84 || i10 == 61) {
                return t(this.f1529a.getListSelection(), 0, null);
            }
            if (i10 == 21 || i10 == 22) {
                this.f1529a.setSelection(i10 == 21 ? 0 : this.f1529a.length());
                this.f1529a.setListSelection(0);
                this.f1529a.clearListSelection();
                this.f1529a.b();
                return true;
            }
            if (i10 == 19) {
                this.f1529a.getListSelection();
                return false;
            }
        }
        return false;
    }

    void z(CharSequence charSequence) {
        Editable text = this.f1529a.getText();
        this.H = text;
        boolean zIsEmpty = TextUtils.isEmpty(text);
        J(!zIsEmpty);
        L(zIsEmpty);
        E();
        I();
        this.G = charSequence.toString();
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1539k = new Rect();
        this.f1540l = new Rect();
        this.f1541m = new int[2];
        this.f1542n = new int[2];
        this.M = new Runnable() {
            @Override
            public void run() {
                SearchView.this.F();
            }
        };
        this.N = new Runnable() {
            @Override
            public void run() {
                g1.a aVar = SearchView.this.f1554z;
                if (aVar instanceof e0) {
                    aVar.a(null);
                }
            }
        };
        this.O = new WeakHashMap();
        d dVar = new d();
        this.P = dVar;
        this.Q = new e();
        f fVar = new f();
        this.R = fVar;
        g gVar = new g();
        this.S = gVar;
        h hVar = new h();
        this.T = hVar;
        this.U = new a();
        j0 j0VarV = j0.v(context, attributeSet, R$styleable.SearchView, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.SearchView, attributeSet, j0VarV.r(), i10, 0);
        LayoutInflater.from(context).inflate(j0VarV.n(R$styleable.SearchView_layout, R$layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R$id.search_src_text);
        this.f1529a = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1530b = findViewById(R$id.search_edit_frame);
        View viewFindViewById = findViewById(R$id.search_plate);
        this.f1531c = viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.submit_area);
        this.f1532d = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R$id.search_button);
        this.f1533e = imageView;
        ImageView imageView2 = (ImageView) findViewById(R$id.search_go_btn);
        this.f1534f = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R$id.search_close_btn);
        this.f1535g = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R$id.search_voice_btn);
        this.f1536h = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R$id.search_mag_icon);
        this.f1543o = imageView5;
        ViewCompat.setBackground(viewFindViewById, j0VarV.g(R$styleable.SearchView_queryBackground));
        ViewCompat.setBackground(viewFindViewById2, j0VarV.g(R$styleable.SearchView_submitBackground));
        imageView.setImageDrawable(j0VarV.g(R$styleable.SearchView_searchIcon));
        imageView2.setImageDrawable(j0VarV.g(R$styleable.SearchView_goIcon));
        imageView3.setImageDrawable(j0VarV.g(R$styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(j0VarV.g(R$styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(j0VarV.g(R$styleable.SearchView_searchIcon));
        this.f1544p = j0VarV.g(R$styleable.SearchView_searchHintIcon);
        o0.a(imageView, getResources().getString(R$string.abc_searchview_description_search));
        this.f1545q = j0VarV.n(R$styleable.SearchView_suggestionRowLayout, R$layout.abc_search_dropdown_item_icons_2line);
        this.f1546r = j0VarV.n(R$styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(dVar);
        imageView3.setOnClickListener(dVar);
        imageView2.setOnClickListener(dVar);
        imageView4.setOnClickListener(dVar);
        searchAutoComplete.setOnClickListener(dVar);
        searchAutoComplete.addTextChangedListener(this.U);
        searchAutoComplete.setOnEditorActionListener(fVar);
        searchAutoComplete.setOnItemClickListener(gVar);
        searchAutoComplete.setOnItemSelectedListener(hVar);
        searchAutoComplete.setOnKeyListener(this.Q);
        searchAutoComplete.setOnFocusChangeListener(new b());
        setIconifiedByDefault(j0VarV.a(R$styleable.SearchView_iconifiedByDefault, true));
        int iF = j0VarV.f(R$styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.f1549u = j0VarV.p(R$styleable.SearchView_defaultQueryHint);
        this.B = j0VarV.p(R$styleable.SearchView_queryHint);
        int iK = j0VarV.k(R$styleable.SearchView_android_imeOptions, -1);
        if (iK != -1) {
            setImeOptions(iK);
        }
        int iK2 = j0VarV.k(R$styleable.SearchView_android_inputType, -1);
        if (iK2 != -1) {
            setInputType(iK2);
        }
        setFocusable(j0VarV.a(R$styleable.SearchView_android_focusable, true));
        j0VarV.x();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1547s = intent;
        intent.addFlags(ASTNode.DEOP);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1548t = intent2;
        intent2.addFlags(ASTNode.DEOP);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1537i = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new c());
        }
        K(this.f1552x);
        G();
    }

    private void setQuery(CharSequence charSequence) {
        this.f1529a.setText(charSequence);
        this.f1529a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    class a implements TextWatcher {
        a() {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView.this.z(charSequence);
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    class h implements AdapterView.OnItemSelectedListener {
        h() {
        }

        @Override
        public void onItemSelected(AdapterView adapterView, View view, int i10, long j10) {
            SearchView.this.u(i10);
        }

        @Override
        public void onNothingSelected(AdapterView adapterView) {
        }
    }

    public void setOnCloseListener(j jVar) {
    }

    public void setOnQueryTextListener(k kVar) {
    }

    public void setOnSuggestionListener(l lVar) {
    }
}
