package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$dimen;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$string;
import androidx.appcompat.R$styleable;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

public class ActivityChooserView extends ViewGroup {

    final f f1339a;

    private final g f1340b;

    private final View f1341c;

    private final Drawable f1342d;

    final FrameLayout f1343e;

    private final ImageView f1344f;

    final FrameLayout f1345g;

    private final ImageView f1346h;

    private final int f1347i;

    ActionProvider f1348j;

    final DataSetObserver f1349k;

    private final ViewTreeObserver.OnGlobalLayoutListener f1350l;

    private ListPopupWindow f1351m;

    PopupWindow.OnDismissListener f1352n;

    boolean f1353o;

    int f1354p;

    private boolean f1355q;

    private int f1356r;

    public static class InnerLayout extends LinearLayout {

        private static final int[] f1357a = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            j0 j0VarU = j0.u(context, attributeSet, f1357a);
            setBackgroundDrawable(j0VarU.g(0));
            j0VarU.x();
        }
    }

    class a extends DataSetObserver {
        a() {
        }

        @Override
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f1339a.notifyDataSetChanged();
        }

        @Override
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f1339a.notifyDataSetInvalidated();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override
        public void onGlobalLayout() {
            if (ActivityChooserView.this.isShowingPopup()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                ActionProvider actionProvider = ActivityChooserView.this.f1348j;
                if (actionProvider != null) {
                    actionProvider.subUiVisibilityChanged(true);
                }
            }
        }
    }

    class c extends View.AccessibilityDelegate {
        c() {
        }

        @Override
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
        }
    }

    class d extends ForwardingListener {
        d(View view) {
            super(view);
        }

        @Override
        public androidx.appcompat.view.menu.o b() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override
        protected boolean c() {
            ActivityChooserView.this.showPopup();
            return true;
        }

        @Override
        protected boolean d() {
            ActivityChooserView.this.dismissPopup();
            return true;
        }
    }

    class e extends DataSetObserver {
        e() {
        }

        @Override
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.b();
        }
    }

    private class f extends BaseAdapter {

        private int f1363a = 4;

        private boolean f1364b;

        private boolean f1365c;

        private boolean f1366d;

        f() {
        }

        public int a() {
            throw null;
        }

        public androidx.appcompat.widget.b b() {
            return null;
        }

        public ResolveInfo c() {
            throw null;
        }

        public int d() {
            throw null;
        }

        public boolean e() {
            return this.f1364b;
        }

        public void f(androidx.appcompat.widget.b bVar) {
            ActivityChooserView.this.f1339a.b();
            notifyDataSetChanged();
        }

        @Override
        public int getCount() {
            throw null;
        }

        @Override
        public Object getItem(int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (this.f1364b) {
                throw null;
            }
            throw null;
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public int getItemViewType(int i10) {
            return (this.f1366d && i10 == getCount() - 1) ? 1 : 0;
        }

        @Override
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View viewInflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
                viewInflate.setId(1);
                ((TextView) viewInflate.findViewById(R$id.title)).setText(ActivityChooserView.this.getContext().getString(R$string.abc_activity_chooser_view_see_all));
                return viewInflate;
            }
            if (view == null || view.getId() != R$id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R$layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(R$id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i10);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(R$id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f1364b && i10 == 0 && this.f1365c) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override
        public int getViewTypeCount() {
            return 3;
        }
    }

    private class g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        g() {
        }

        private void a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f1352n;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view == activityChooserView.f1345g) {
                activityChooserView.dismissPopup();
                ActivityChooserView.this.f1339a.c();
                ActivityChooserView.this.f1339a.b();
                throw null;
            }
            if (view != activityChooserView.f1343e) {
                throw new IllegalArgumentException();
            }
            activityChooserView.f1353o = false;
            activityChooserView.a(activityChooserView.f1354p);
        }

        @Override
        public void onDismiss() {
            a();
            ActionProvider actionProvider = ActivityChooserView.this.f1348j;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(false);
            }
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
            int itemViewType = ((f) adapterView.getAdapter()).getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.a(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.dismissPopup();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (!activityChooserView.f1353o) {
                activityChooserView.f1339a.e();
                ActivityChooserView.this.f1339a.b();
                throw null;
            }
            if (i10 <= 0) {
                return;
            }
            activityChooserView.f1339a.b();
            throw null;
        }

        @Override
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f1345g) {
                throw new IllegalArgumentException();
            }
            if (activityChooserView.f1339a.getCount() > 0) {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f1353o = true;
                activityChooserView2.a(activityChooserView2.f1354p);
            }
            return true;
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    void a(int i10) {
        this.f1339a.b();
        throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }

    void b() {
        if (this.f1339a.getCount() > 0) {
            this.f1343e.setEnabled(true);
        } else {
            this.f1343e.setEnabled(false);
        }
        int iA = this.f1339a.a();
        int iD = this.f1339a.d();
        if (iA == 1 || (iA > 1 && iD > 0)) {
            this.f1345g.setVisibility(0);
            ResolveInfo resolveInfoC = this.f1339a.c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f1346h.setImageDrawable(resolveInfoC.loadIcon(packageManager));
            if (this.f1356r != 0) {
                this.f1345g.setContentDescription(getContext().getString(this.f1356r, resolveInfoC.loadLabel(packageManager)));
            }
        } else {
            this.f1345g.setVisibility(8);
        }
        if (this.f1345g.getVisibility() == 0) {
            this.f1341c.setBackgroundDrawable(this.f1342d);
        } else {
            this.f1341c.setBackgroundDrawable(null);
        }
    }

    public boolean dismissPopup() {
        if (!isShowingPopup()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f1350l);
        return true;
    }

    public androidx.appcompat.widget.b getDataModel() {
        this.f1339a.b();
        return null;
    }

    ListPopupWindow getListPopupWindow() {
        if (this.f1351m == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f1351m = listPopupWindow;
            listPopupWindow.m(this.f1339a);
            this.f1351m.C(this);
            this.f1351m.I(true);
            this.f1351m.K(this.f1340b);
            this.f1351m.J(this.f1340b);
        }
        return this.f1351m;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().a();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1339a.b();
        this.f1355q = true;
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1339a.b();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1350l);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.f1355q = false;
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.f1341c.layout(0, 0, i12 - i10, i13 - i11);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        View view = this.f1341c;
        if (this.f1345g.getVisibility() != 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i11), 1073741824);
        }
        measureChild(view, i10, i11);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(androidx.appcompat.widget.b bVar) {
        this.f1339a.f(bVar);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i10) {
        this.f1356r = i10;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i10) {
        this.f1344f.setContentDescription(getContext().getString(i10));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1344f.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i10) {
        this.f1354p = i10;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f1352n = onDismissListener;
    }

    public void setProvider(ActionProvider actionProvider) {
        this.f1348j = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.f1355q) {
            return false;
        }
        this.f1353o = false;
        a(this.f1354p);
        return true;
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1349k = new a();
        this.f1350l = new b();
        this.f1354p = 4;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActivityChooserView, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.ActivityChooserView, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        this.f1354p = typedArrayObtainStyledAttributes.getInt(R$styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(R$layout.abc_activity_chooser_view, (ViewGroup) this, true);
        g gVar = new g();
        this.f1340b = gVar;
        View viewFindViewById = findViewById(R$id.activity_chooser_view_content);
        this.f1341c = viewFindViewById;
        this.f1342d = viewFindViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.default_activity_button);
        this.f1345g = frameLayout;
        frameLayout.setOnClickListener(gVar);
        frameLayout.setOnLongClickListener(gVar);
        this.f1346h = (ImageView) frameLayout.findViewById(R$id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.expand_activities_button);
        frameLayout2.setOnClickListener(gVar);
        frameLayout2.setAccessibilityDelegate(new c());
        frameLayout2.setOnTouchListener(new d(frameLayout2));
        this.f1343e = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(R$id.image);
        this.f1344f = imageView;
        imageView.setImageDrawable(drawable);
        f fVar = new f();
        this.f1339a = fVar;
        fVar.registerDataSetObserver(new e());
        Resources resources = context.getResources();
        this.f1347i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R$dimen.abc_config_prefDialogWidth));
    }
}
