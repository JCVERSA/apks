package androidx.fragment.app;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;

@Deprecated
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    private final ArrayList f9068a;

    private FrameLayout f9069b;

    private Context f9070c;

    private FragmentManager f9071d;

    private int f9072e;

    private TabHost.OnTabChangeListener f9073f;

    private b f9074g;

    private boolean f9075h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        String f9076a;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
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
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f9076a + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeString(this.f9076a);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f9076a = parcel.readString();
        }
    }

    static class a implements TabHost.TabContentFactory {

        private final Context f9077a;

        public a(Context context) {
            this.f9077a = context;
        }

        @Override
        public View createTabContent(String str) {
            View view = new View(this.f9077a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    static final class b {

        final String f9078a;

        final Class f9079b;

        final Bundle f9080c;

        Fragment f9081d;

        b(String str, Class cls, Bundle bundle) {
            this.f9078a = str;
            this.f9079b = cls;
            this.f9080c = bundle;
        }
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        this.f9068a = new ArrayList();
        e(context, null);
    }

    private w a(String str, w wVar) {
        Fragment fragment;
        b bVarD = d(str);
        if (this.f9074g != bVarD) {
            if (wVar == null) {
                wVar = this.f9071d.p();
            }
            b bVar = this.f9074g;
            if (bVar != null && (fragment = bVar.f9081d) != null) {
                wVar.m(fragment);
            }
            if (bVarD != null) {
                Fragment fragment2 = bVarD.f9081d;
                if (fragment2 == null) {
                    Fragment fragmentInstantiate = this.f9071d.w0().instantiate(this.f9070c.getClassLoader(), bVarD.f9079b.getName());
                    bVarD.f9081d = fragmentInstantiate;
                    fragmentInstantiate.setArguments(bVarD.f9080c);
                    wVar.c(this.f9072e, bVarD.f9081d, bVarD.f9078a);
                } else {
                    wVar.h(fragment2);
                }
            }
            this.f9074g = bVarD;
        }
        return wVar;
    }

    private void b() {
        if (this.f9069b == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f9072e);
            this.f9069b = frameLayout;
            if (frameLayout != null) {
                return;
            }
            throw new IllegalStateException("No tab content FrameLayout found for id " + this.f9072e);
        }
    }

    private void c(Context context) {
        if (findViewById(R.id.tabs) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(R.id.tabs);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(R.id.tabcontent);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f9069b = frameLayout2;
            frameLayout2.setId(this.f9072e);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    private b d(String str) {
        int size = this.f9068a.size();
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f9068a.get(i10);
            if (bVar.f9078a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    private void e(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.inflatedId}, 0, 0);
        this.f9072e = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Deprecated
    public void addTab(@NonNull TabHost.TabSpec tabSpec, @NonNull Class<?> cls, @Nullable Bundle bundle) {
        tabSpec.setContent(new a(this.f9070c));
        String tag = tabSpec.getTag();
        b bVar = new b(tag, cls, bundle);
        if (this.f9075h) {
            Fragment fragmentK0 = this.f9071d.k0(tag);
            bVar.f9081d = fragmentK0;
            if (fragmentK0 != null && !fragmentK0.isDetached()) {
                w wVarP = this.f9071d.p();
                wVarP.m(bVar.f9081d);
                wVarP.i();
            }
        }
        this.f9068a.add(bVar);
        addTab(tabSpec);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f9068a.size();
        w wVarP = null;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar = (b) this.f9068a.get(i10);
            Fragment fragmentK0 = this.f9071d.k0(bVar.f9078a);
            bVar.f9081d = fragmentK0;
            if (fragmentK0 != null && !fragmentK0.isDetached()) {
                if (bVar.f9078a.equals(currentTabTag)) {
                    this.f9074g = bVar;
                } else {
                    if (wVarP == null) {
                        wVarP = this.f9071d.p();
                    }
                    wVarP.m(bVar.f9081d);
                }
            }
        }
        this.f9075h = true;
        w wVarA = a(currentTabTag, wVarP);
        if (wVarA != null) {
            wVarA.i();
            this.f9071d.g0();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9075h = false;
    }

    @Override
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f9076a);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f9076a = getCurrentTabTag();
        return savedState;
    }

    @Override
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        w wVarA;
        if (this.f9075h && (wVarA = a(str, null)) != null) {
            wVarA.i();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f9073f;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f9073f = onTabChangeListener;
    }

    @Override
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        c(context);
        super.setup();
        this.f9070c = context;
        this.f9071d = fragmentManager;
        b();
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9068a = new ArrayList();
        e(context, attributeSet);
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i10) {
        c(context);
        super.setup();
        this.f9070c = context;
        this.f9071d = fragmentManager;
        this.f9072e = i10;
        b();
        this.f9069b.setId(i10);
        if (getId() == -1) {
            setId(R.id.tabhost);
        }
    }
}
