package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

class AlertController {
    NestedScrollView A;
    private Drawable C;
    private ImageView D;
    private TextView E;
    private TextView F;
    private View G;
    ListAdapter H;
    private int J;
    private int K;
    int L;
    int M;
    int N;
    int O;
    private boolean P;
    Handler R;

    private final Context f636a;

    final w f637b;

    private final Window f638c;

    private final int f639d;

    private CharSequence f640e;

    private CharSequence f641f;

    ListView f642g;

    private View f643h;

    private int f644i;

    private int f645j;

    private int f646k;

    private int f647l;

    private int f648m;

    Button f650o;

    private CharSequence f651p;

    Message f652q;

    private Drawable f653r;

    Button f654s;

    private CharSequence f655t;

    Message f656u;

    private Drawable f657v;

    Button f658w;

    private CharSequence f659x;

    Message f660y;

    private Drawable f661z;

    private boolean f649n = false;
    private int B = 0;
    int I = -1;
    private int Q = 0;
    private final View.OnClickListener S = new a();

    class AnonymousClass3 implements Runnable {
        final View val$bottom;
        final View val$top;

        AnonymousClass3(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        @Override
        public void run() {
            AlertController.f(AlertController.this.A, this.val$top, this.val$bottom);
        }
    }

    class AnonymousClass5 implements Runnable {
        final View val$bottom;
        final View val$top;

        AnonymousClass5(View view, View view2) {
            this.val$top = view;
            this.val$bottom = view2;
        }

        @Override
        public void run() {
            AlertController.f(AlertController.this.f642g, this.val$top, this.val$bottom);
        }
    }

    public static class RecycleListView extends ListView {

        private final int f662a;

        private final int f663b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public void setHasDecor(boolean z10, boolean z11) {
            if (z11 && z10) {
                return;
            }
            setPadding(getPaddingLeft(), z10 ? getPaddingTop() : this.f662a, getPaddingRight(), z11 ? getPaddingBottom() : this.f663b);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecycleListView);
            this.f663b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f662a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override
        public void onClick(View view) {
            Message messageObtain;
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            if (view == alertController.f650o && (message3 = alertController.f652q) != null) {
                messageObtain = Message.obtain(message3);
            } else if (view != alertController.f654s || (message2 = alertController.f656u) == null) {
                messageObtain = (view != alertController.f658w || (message = alertController.f660y) == null) ? null : Message.obtain(message);
            } else {
                messageObtain = Message.obtain(message2);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f637b).sendToTarget();
        }
    }

    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;

        public final Context f665a;

        public final LayoutInflater f666b;

        public Drawable f668d;

        public CharSequence f670f;

        public View f671g;

        public CharSequence f672h;

        public CharSequence f673i;

        public Drawable f674j;

        public DialogInterface.OnClickListener f675k;

        public CharSequence f676l;

        public Drawable f677m;

        public DialogInterface.OnClickListener f678n;

        public CharSequence f679o;

        public Drawable f680p;

        public DialogInterface.OnClickListener f681q;

        public DialogInterface.OnCancelListener f683s;

        public DialogInterface.OnDismissListener f684t;

        public DialogInterface.OnKeyListener f685u;

        public CharSequence[] f686v;

        public ListAdapter f687w;

        public DialogInterface.OnClickListener f688x;

        public int f689y;

        public View f690z;

        public int f667c = 0;

        public int f669e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean O = true;

        public boolean f682r = true;

        class a extends ArrayAdapter {

            final RecycleListView f691a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Context context, int i10, int i11, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i10, i11, charSequenceArr);
                this.f691a = recycleListView;
            }

            @Override
            public View getView(int i10, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i10, view, viewGroup);
                boolean[] zArr = b.this.F;
                if (zArr != null && zArr[i10]) {
                    this.f691a.setItemChecked(i10, true);
                }
                return view2;
            }
        }

        class C0012b extends CursorAdapter {

            private final int f693a;

            private final int f694b;

            final RecycleListView f695c;

            final AlertController f696d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0012b(Context context, Cursor cursor, boolean z10, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z10);
                this.f695c = recycleListView;
                this.f696d = alertController;
                Cursor cursor2 = getCursor();
                this.f693a = cursor2.getColumnIndexOrThrow(b.this.L);
                this.f694b = cursor2.getColumnIndexOrThrow(b.this.M);
            }

            @Override
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f693a));
                this.f695c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f694b) == 1);
            }

            @Override
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return b.this.f666b.inflate(this.f696d.M, viewGroup, false);
            }
        }

        class c implements AdapterView.OnItemClickListener {

            final AlertController f698a;

            c(AlertController alertController) {
                this.f698a = alertController;
            }

            @Override
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                b.this.f688x.onClick(this.f698a.f637b, i10);
                if (b.this.H) {
                    return;
                }
                this.f698a.f637b.dismiss();
            }
        }

        class d implements AdapterView.OnItemClickListener {

            final RecycleListView f700a;

            final AlertController f701b;

            d(RecycleListView recycleListView, AlertController alertController) {
                this.f700a = recycleListView;
                this.f701b = alertController;
            }

            @Override
            public void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
                boolean[] zArr = b.this.F;
                if (zArr != null) {
                    zArr[i10] = this.f700a.isItemChecked(i10);
                }
                b.this.J.onClick(this.f701b.f637b, i10, this.f700a.isItemChecked(i10));
            }
        }

        public b(Context context) {
            this.f665a = context;
            this.f666b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        private void b(AlertController alertController) {
            ListAdapter dVar;
            RecycleListView recycleListView = (RecycleListView) this.f666b.inflate(alertController.L, (ViewGroup) null);
            if (this.G) {
                dVar = this.K == null ? new a(this.f665a, alertController.M, R.id.text1, this.f686v, recycleListView) : new C0012b(this.f665a, this.K, false, recycleListView, alertController);
            } else {
                int i10 = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    dVar = new SimpleCursorAdapter(this.f665a, i10, this.K, new String[]{this.L}, new int[]{R.id.text1});
                } else {
                    dVar = this.f687w;
                    if (dVar == null) {
                        dVar = new d(this.f665a, i10, R.id.text1, this.f686v);
                    }
                }
            }
            alertController.H = dVar;
            alertController.I = this.I;
            if (this.f688x != null) {
                recycleListView.setOnItemClickListener(new c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f642g = recycleListView;
        }

        public void a(AlertController alertController) {
            View view = this.f671g;
            if (view != null) {
                alertController.l(view);
            } else {
                CharSequence charSequence = this.f670f;
                if (charSequence != null) {
                    alertController.q(charSequence);
                }
                Drawable drawable = this.f668d;
                if (drawable != null) {
                    alertController.n(drawable);
                }
                int i10 = this.f667c;
                if (i10 != 0) {
                    alertController.m(i10);
                }
                int i11 = this.f669e;
                if (i11 != 0) {
                    alertController.m(alertController.c(i11));
                }
            }
            CharSequence charSequence2 = this.f672h;
            if (charSequence2 != null) {
                alertController.o(charSequence2);
            }
            CharSequence charSequence3 = this.f673i;
            if (charSequence3 != null || this.f674j != null) {
                alertController.k(-1, charSequence3, this.f675k, null, this.f674j);
            }
            CharSequence charSequence4 = this.f676l;
            if (charSequence4 != null || this.f677m != null) {
                alertController.k(-2, charSequence4, this.f678n, null, this.f677m);
            }
            CharSequence charSequence5 = this.f679o;
            if (charSequence5 != null || this.f680p != null) {
                alertController.k(-3, charSequence5, this.f681q, null, this.f680p);
            }
            if (this.f686v != null || this.K != null || this.f687w != null) {
                b(alertController);
            }
            View view2 = this.f690z;
            if (view2 != null) {
                if (this.E) {
                    alertController.t(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.s(view2);
                    return;
                }
            }
            int i12 = this.f689y;
            if (i12 != 0) {
                alertController.r(i12);
            }
        }
    }

    private static final class c extends Handler {

        private WeakReference f703a;

        public c(DialogInterface dialogInterface) {
            this.f703a = new WeakReference(dialogInterface);
        }

        @Override
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == -3 || i10 == -2 || i10 == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f703a.get(), message.what);
            } else {
                if (i10 != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    private static class d extends ArrayAdapter {
        public d(Context context, int i10, int i11, CharSequence[] charSequenceArr) {
            super(context, i10, i11, charSequenceArr);
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, w wVar, Window window) {
        this.f636a = context;
        this.f637b = wVar;
        this.f638c = window;
        this.R = new c(wVar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.AlertDialog, R$attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(R$styleable.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.AlertDialog_showTitle, true);
        this.f639d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        wVar.supportRequestWindowFeature(1);
    }

    static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    private void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    static void f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    private ViewGroup i(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    private int j() {
        int i10 = this.K;
        if (i10 == 0) {
            return this.J;
        }
        return this.Q == 1 ? i10 : this.J;
    }

    private void p(ViewGroup viewGroup, View view, int i10, int i11) {
        View viewFindViewById = this.f638c.findViewById(R$id.scrollIndicatorUp);
        View viewFindViewById2 = this.f638c.findViewById(R$id.scrollIndicatorDown);
        ViewCompat.setScrollIndicators(view, i10, i11);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    private void u(ViewGroup viewGroup) {
        int i10;
        Button button = (Button) viewGroup.findViewById(R.id.button1);
        this.f650o = button;
        button.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f651p) && this.f653r == null) {
            this.f650o.setVisibility(8);
            i10 = 0;
        } else {
            this.f650o.setText(this.f651p);
            Drawable drawable = this.f653r;
            if (drawable != null) {
                int i11 = this.f639d;
                drawable.setBounds(0, 0, i11, i11);
                this.f650o.setCompoundDrawables(this.f653r, null, null, null);
            }
            this.f650o.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroup.findViewById(R.id.button2);
        this.f654s = button2;
        button2.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f655t) && this.f657v == null) {
            this.f654s.setVisibility(8);
        } else {
            this.f654s.setText(this.f655t);
            Drawable drawable2 = this.f657v;
            if (drawable2 != null) {
                int i12 = this.f639d;
                drawable2.setBounds(0, 0, i12, i12);
                this.f654s.setCompoundDrawables(this.f657v, null, null, null);
            }
            this.f654s.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroup.findViewById(R.id.button3);
        this.f658w = button3;
        button3.setOnClickListener(this.S);
        if (TextUtils.isEmpty(this.f659x) && this.f661z == null) {
            this.f658w.setVisibility(8);
        } else {
            this.f658w.setText(this.f659x);
            Drawable drawable3 = this.f661z;
            if (drawable3 != null) {
                int i13 = this.f639d;
                drawable3.setBounds(0, 0, i13, i13);
                this.f658w.setCompoundDrawables(this.f661z, null, null, null);
            }
            this.f658w.setVisibility(0);
            i10 |= 4;
        }
        if (z(this.f636a)) {
            if (i10 == 1) {
                b(this.f650o);
            } else if (i10 == 2) {
                b(this.f654s);
            } else if (i10 == 4) {
                b(this.f658w);
            }
        }
        if (i10 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    private void v(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f638c.findViewById(R$id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f641f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f642g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f642g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    private void w(ViewGroup viewGroup) {
        View viewInflate = this.f643h;
        if (viewInflate == null) {
            viewInflate = this.f644i != 0 ? LayoutInflater.from(this.f636a).inflate(this.f644i, viewGroup, false) : null;
        }
        boolean z10 = viewInflate != null;
        if (!z10 || !a(viewInflate)) {
            this.f638c.setFlags(131072, 131072);
        }
        if (!z10) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f638c.findViewById(R$id.custom);
        frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f649n) {
            frameLayout.setPadding(this.f645j, this.f646k, this.f647l, this.f648m);
        }
        if (this.f642g != null) {
            ((LinearLayout.LayoutParams) ((LinearLayoutCompat.a) viewGroup.getLayoutParams())).weight = 0.0f;
        }
    }

    private void x(ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f638c.findViewById(R$id.title_template).setVisibility(8);
            return;
        }
        this.D = (ImageView) this.f638c.findViewById(R.id.icon);
        if (TextUtils.isEmpty(this.f640e) || !this.P) {
            this.f638c.findViewById(R$id.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f638c.findViewById(R$id.alertTitle);
        this.E = textView;
        textView.setText(this.f640e);
        int i10 = this.B;
        if (i10 != 0) {
            this.D.setImageResource(i10);
            return;
        }
        Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void y() {
        View viewFindViewById;
        ListAdapter listAdapter;
        View viewFindViewById2;
        View viewFindViewById3 = this.f638c.findViewById(R$id.parentPanel);
        View viewFindViewById4 = viewFindViewById3.findViewById(R$id.topPanel);
        View viewFindViewById5 = viewFindViewById3.findViewById(R$id.contentPanel);
        View viewFindViewById6 = viewFindViewById3.findViewById(R$id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById3.findViewById(R$id.customPanel);
        w(viewGroup);
        View viewFindViewById7 = viewGroup.findViewById(R$id.topPanel);
        View viewFindViewById8 = viewGroup.findViewById(R$id.contentPanel);
        View viewFindViewById9 = viewGroup.findViewById(R$id.buttonPanel);
        ViewGroup viewGroupI = i(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupI2 = i(viewFindViewById8, viewFindViewById5);
        ViewGroup viewGroupI3 = i(viewFindViewById9, viewFindViewById6);
        v(viewGroupI2);
        u(viewGroupI3);
        x(viewGroupI);
        boolean z10 = viewGroup.getVisibility() != 8;
        boolean z11 = (viewGroupI == null || viewGroupI.getVisibility() == 8) ? 0 : 1;
        boolean z12 = (viewGroupI3 == null || viewGroupI3.getVisibility() == 8) ? false : true;
        if (!z12 && viewGroupI2 != null && (viewFindViewById2 = viewGroupI2.findViewById(R$id.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z11 != 0) {
            NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View viewFindViewById10 = (this.f641f == null && this.f642g == null) ? null : viewGroupI.findViewById(R$id.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupI2 != null && (viewFindViewById = viewGroupI2.findViewById(R$id.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ListView listView = this.f642g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z11, z12);
        }
        if (!z10) {
            View view = this.f642g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                p(viewGroupI2, view, z11 | (z12 ? 2 : 0), 3);
            }
        }
        ListView listView2 = this.f642g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i10 = this.I;
        if (i10 > -1) {
            listView2.setItemChecked(i10, true);
            listView2.setSelection(i10);
        }
    }

    private static boolean z(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public int c(int i10) {
        TypedValue typedValue = new TypedValue();
        this.f636a.getTheme().resolveAttribute(i10, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView d() {
        return this.f642g;
    }

    public void e() {
        this.f637b.setContentView(j());
        y();
    }

    public boolean g(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public boolean h(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent);
    }

    public void k(int i10, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i10, onClickListener);
        }
        if (i10 == -3) {
            this.f659x = charSequence;
            this.f660y = message;
            this.f661z = drawable;
        } else if (i10 == -2) {
            this.f655t = charSequence;
            this.f656u = message;
            this.f657v = drawable;
        } else {
            if (i10 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f651p = charSequence;
            this.f652q = message;
            this.f653r = drawable;
        }
    }

    public void l(View view) {
        this.G = view;
    }

    public void m(int i10) {
        this.C = null;
        this.B = i10;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (i10 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void n(Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void o(CharSequence charSequence) {
        this.f641f = charSequence;
        TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void q(CharSequence charSequence) {
        this.f640e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void r(int i10) {
        this.f643h = null;
        this.f644i = i10;
        this.f649n = false;
    }

    public void s(View view) {
        this.f643h = view;
        this.f644i = 0;
        this.f649n = false;
    }

    public void t(View view, int i10, int i11, int i12, int i13) {
        this.f643h = view;
        this.f644i = 0;
        this.f649n = true;
        this.f645j = i10;
        this.f646k = i11;
        this.f647l = i12;
        this.f648m = i13;
    }
}
