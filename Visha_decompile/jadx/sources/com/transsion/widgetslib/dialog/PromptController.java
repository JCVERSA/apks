package com.transsion.widgetslib.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.effectengine.bounceeffect.IOverScrollDecor;
import com.transsion.effectengine.bounceeffect.IOverScrollListener;
import com.transsion.effectengine.bounceeffect.OverScrollDecorHelper;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.adapter.RecyclerAdapter;
import com.transsion.widgetslib.view.OverBoundNestedScrollView;
import com.transsion.widgetslib.view.damping.DampingLayout;
import com.transsion.widgetslib.view.damping.OSScrollbarLayout;
import com.transsion.widgetslib.view.liquid.effect.OSLiquidContainerRootLayoutInner;
import com.transsion.widgetslib.view.liquid.vfx.drag.ElasticTypeConfig;
import com.transsion.widgetslib.view.liquid.vfx.light.LightTypeConfig;
import defpackage.d57;
import defpackage.ha7;
import defpackage.m97;
import defpackage.olb;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class PromptController {
    public Button A;
    public Message C;
    public boolean D;
    public Button E;
    public Message G;
    public Drawable H;
    public int M;
    public int N;
    public boolean O;
    public boolean P;
    public int R;
    public final Context a;
    public final DialogInterface b;
    public final Window c;
    public final LayoutInflater d;
    public final Handler e;
    public final OSLiquidContainerRootLayoutInner f;
    public final ConstraintLayout g;
    public final LinearLayout h;
    public LinearLayout i;
    public FrameLayout j;
    public FrameLayout k;
    public View l;
    public View m;
    public View n;
    public CheckedTextView o;
    public m p;
    public boolean[] r;
    public boolean t;
    public boolean u;
    public Button w;
    public Message y;
    public boolean z;
    public int q = -1;
    public boolean s = false;
    public boolean v = true;
    public CharSequence x = null;
    public CharSequence B = null;
    public CharSequence F = null;
    public boolean I = true;
    public boolean J = false;
    public boolean K = false;
    public boolean L = false;
    public boolean Q = false;
    public final View.OnClickListener S = new c();

    public class a implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnClickListener b;

        public a(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, i);
                PromptController.this.b.dismiss();
            }
        }
    }

    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        public final Button b;

        public b(Button button) {
            this.b = button;
        }

        @Override
        public void onGlobalLayout() {
            this.b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (this.b.getLayout() == null || this.b.getLayout().getEllipsisCount(0) <= 0) {
                return;
            }
            this.b.setTextSize(0, PromptController.this.a.getResources().getDimensionPixelSize(R.dimen.os_fontsize_h3));
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            Message messageObtain;
            if (view == PromptController.this.w && PromptController.this.y != null) {
                messageObtain = Message.obtain(PromptController.this.y);
            } else if (view != PromptController.this.A || PromptController.this.C == null) {
                messageObtain = (view != PromptController.this.E || PromptController.this.G == null) ? null : Message.obtain(PromptController.this.G);
            } else {
                messageObtain = Message.obtain(PromptController.this.C);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            if (PromptController.this.I) {
                PromptController.this.e.obtainMessage(1, PromptController.this.b).sendToTarget();
            }
        }
    }

    public class d implements View.OnTouchListener {
        public final Context b;

        public d(Context context) {
            this.b = context;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (PromptController.this.O && PromptController.this.P && PromptController.this.i0(this.b, motionEvent)) {
                PromptController.this.e.obtainMessage(1, PromptController.this.b).sendToTarget();
            }
            return true;
        }
    }

    public class e implements View.OnClickListener {
        public final DialogInterface.OnClickListener b;

        public e(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onClick(View view) {
            PromptController.this.o.setChecked(!PromptController.this.o.isChecked());
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, 0);
            }
        }
    }

    public class f implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnClickListener b;

        public f(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, i);
                PromptController.this.b.dismiss();
            }
        }
    }

    public class g implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnClickListener b;

        public g(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, i);
                PromptController.this.b.dismiss();
            }
        }
    }

    public class h implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnClickListener b;

        public h(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, i);
            }
            if (PromptController.this.p != null) {
                PromptController.this.p.setSelectedPst(i);
            }
            PromptController.this.V();
        }
    }

    public class i implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnMultiChoiceClickListener b;

        public i(DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.b = onMultiChoiceClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            if (this.b == null || PromptController.this.l == null || PromptController.this.p == null) {
                return;
            }
            PromptController promptController = PromptController.this;
            if (promptController.r != null) {
                promptController.p.setSelectedPst(i);
            }
            PromptController.this.V();
            this.b.onClick(PromptController.this.b, i, PromptController.this.p.r(i));
        }
    }

    public class j implements IOverScrollListener {
        public final OSScrollbarLayout a;

        public j(OSScrollbarLayout oSScrollbarLayout) {
            this.a = oSScrollbarLayout;
        }

        @Override
        public void onOverScrollUpdated(float f) {
            this.a.onOverScrollUpdated(f);
        }
    }

    public class k implements AdapterView.OnItemClickListener {
        public final DialogInterface.OnClickListener b;

        public k(DialogInterface.OnClickListener onClickListener) {
            this.b = onClickListener;
        }

        @Override
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            DialogInterface.OnClickListener onClickListener = this.b;
            if (onClickListener != null) {
                onClickListener.onClick(PromptController.this.b, i);
            }
            PromptController.this.V();
        }
    }

    public static final class l extends Handler {
        public final WeakReference a;

        public l(DialogInterface dialogInterface) {
            this.a = new WeakReference(dialogInterface);
        }

        @Override
        public void handleMessage(Message message) {
            try {
                int i = message.what;
                if (i == -3 || i == -2 || i == -1) {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.a.get(), message.what);
                } else if (i == 1) {
                    ((DialogInterface) message.obj).dismiss();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static final class m extends RecyclerAdapter {
        public WeakReference q;
        public final int r;

        public m(List list) {
            this(list, 0);
        }

        public int getCheckedItemCount() {
            WeakReference weakReference = this.q;
            if (weakReference == null || weakReference.get() == null || ((PromptController) this.q.get()).r == null) {
                return 0;
            }
            int i = 0;
            for (boolean z : ((PromptController) this.q.get()).r) {
                if (z) {
                    i++;
                }
            }
            return i;
        }

        public boolean r(int i) {
            WeakReference weakReference = this.q;
            if (weakReference == null || weakReference.get() == null || ((PromptController) this.q.get()).r == null) {
                return false;
            }
            boolean[] zArr = ((PromptController) this.q.get()).r;
            return i >= 0 && i < zArr.length && zArr[i];
        }

        @Override
        public void c(n nVar, int i, CharSequence charSequence) {
            nVar.r.setText((CharSequence) this.o.get(i));
            WeakReference weakReference = this.q;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            int i2 = this.r;
            z = false;
            boolean z = false;
            if (i2 == 1) {
                nVar.r.setChecked(((PromptController) this.q.get()).q == i);
                return;
            }
            if (i2 != 2) {
                if (i2 != 6 || nVar.s == null) {
                    return;
                }
                nVar.s.setVisibility(i == this.o.size() - 1 ? 8 : 0);
                return;
            }
            boolean[] zArr = ((PromptController) this.q.get()).r;
            CheckedTextView checkedTextView = nVar.r;
            if (zArr != null && zArr[i]) {
                z = true;
            }
            checkedTextView.setChecked(z);
        }

        public void setSelectedPst(int i) {
            boolean[] zArr;
            WeakReference weakReference = this.q;
            if (weakReference == null || weakReference.get() == null || i < 0) {
                return;
            }
            int itemCount = getItemCount();
            int i2 = this.r;
            if (i2 != 1) {
                if (i2 != 2 || (zArr = ((PromptController) this.q.get()).r) == null || zArr.length > itemCount) {
                    return;
                }
                zArr[i] = !zArr[i];
                notifyItemChanged(i, i < this.o.size() ? this.o.get(i) : null);
                return;
            }
            int i3 = ((PromptController) this.q.get()).q;
            if (i3 >= 0 && i3 < itemCount) {
                notifyItemChanged(i3, i < this.o.size() ? this.o.get(i) : null);
            }
            if (i < itemCount) {
                ((PromptController) this.q.get()).q = i;
                notifyItemChanged(((PromptController) this.q.get()).q, i < this.o.size() ? this.o.get(i) : null);
            }
        }

        public void setWeakReference(PromptController promptController) {
            this.q = new WeakReference(promptController);
        }

        @Override
        public n onCreateViewHolder(ViewGroup viewGroup, int i) {
            n nVar;
            if (this.r == 6) {
                nVar = olb.Z(viewGroup.getContext()) ? new n(viewGroup, R.layout.os_ultra_small_prompt_dialog_list_button_item) : new n(viewGroup, R.layout.os_prompt_dialog_list_button_item);
            } else {
                nVar = new n(viewGroup, R.layout.os_prompt_dialog_list_item_compat);
            }
            nVar.setSetOnClickListener(this.p != null);
            nVar.setChoiceMode(this.r);
            return nVar;
        }

        public m(List list, int i) {
            super(list);
            this.r = i;
        }
    }

    public static final class n extends RecyclerAdapter.Holder {
        public final CheckedTextView r;
        public final View s;
        public final Context t;

        public n(ViewGroup viewGroup, int i) {
            super(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
            this.t = viewGroup.getContext();
            this.r = (CheckedTextView) this.itemView.findViewById(R.id.text_list_item_compat);
            this.s = this.itemView.findViewById(R.id.view_divider);
        }

        public void setChoiceMode(int i) {
            Drawable drawableB;
            if (i == 1) {
                drawableB = ha7.a(this.t);
            } else {
                drawableB = i == 2 ? d57.b(this.t) : null;
            }
            if (drawableB != null) {
                this.r.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, drawableB, (Drawable) null);
            }
        }
    }

    public PromptController(Context context, DialogInterface dialogInterface, Window window) {
        this.a = context;
        this.b = dialogInterface;
        this.c = window;
        this.e = new l(dialogInterface);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.d = layoutInflaterFrom;
        window.requestFeature(1);
        window.setGravity(80);
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = (OSLiquidContainerRootLayoutInner) layoutInflaterFrom.inflate(R.layout.os_prompt_dialog_container, (ViewGroup) null);
        this.f = oSLiquidContainerRootLayoutInner;
        oSLiquidContainerRootLayoutInner.setOnUnionRenderFrameAvailableListener();
        oSLiquidContainerRootLayoutInner.setElasticTypeConfig(ElasticTypeConfig.DIALOG);
        oSLiquidContainerRootLayoutInner.setLightTypeConfig(LightTypeConfig.DIALOG_AUTO);
        oSLiquidContainerRootLayoutInner.setShowShadow(false);
        oSLiquidContainerRootLayoutInner.setOnTouchListener(new d(context));
        this.g = (ConstraintLayout) oSLiquidContainerRootLayoutInner.findViewById(R.id.mContainer);
        this.h = (LinearLayout) oSLiquidContainerRootLayoutInner.findViewById(R.id.btnLayout);
    }

    public static boolean v(View view) {
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
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && v(childAt)) {
                return true;
            }
        }
        return false;
    }

    public final RecyclerView A(RecyclerView.Adapter adapter, AdapterView.OnItemClickListener onItemClickListener) {
        View viewInflate = this.d.inflate(R.layout.os_prompt_dialog_list, (ViewGroup) this.g, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.os_damp_list_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.a, 1, false));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        if (adapter instanceof RecyclerAdapter) {
            ((RecyclerAdapter) adapter).setOnItemClickListener(onItemClickListener);
            if (adapter instanceof m) {
                m mVar = (m) adapter;
                this.p = mVar;
                mVar.setWeakReference(this);
            }
        }
        recyclerView.setAdapter(adapter);
        if (!olb.E) {
            IOverScrollDecor upOverScroll = OverScrollDecorHelper.setUpOverScroll(recyclerView, 0, false);
            View viewFindViewById = viewInflate.findViewById(R.id.os_damp_list_view_parent);
            if (upOverScroll != null) {
                upOverScroll.setVibrateEnable(false);
            }
            if ((viewFindViewById instanceof OSScrollbarLayout) && upOverScroll != null) {
                OSScrollbarLayout oSScrollbarLayout = (OSScrollbarLayout) viewFindViewById;
                oSScrollbarLayout.setOverScrollView(recyclerView);
                upOverScroll.setOverScrollListener(new j(oSScrollbarLayout));
            }
        }
        return recyclerView;
    }

    public Button B(int i2) {
        if (i2 == -3) {
            return this.E;
        }
        if (i2 == -2) {
            return this.A;
        }
        if (i2 != -1) {
            return null;
        }
        return this.w;
    }

    public final ConstraintLayout.LayoutParams C() {
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, -2);
        layoutParams.topToBottom = R.id.os_module_dialog_damping_layout_title;
        return layoutParams;
    }

    public final ConstraintLayout.LayoutParams D() {
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, -2);
        layoutParams.topToTop = R.id.mContainer;
        return layoutParams;
    }

    public boolean E() {
        ConstraintLayout constraintLayout;
        FrameLayout frameLayout;
        return this.J || ((constraintLayout = this.g) != null && v(constraintLayout)) || ((frameLayout = this.k) != null && v(frameLayout));
    }

    public void F() {
        this.c.setContentView(this.f);
        h0();
    }

    public final boolean G() {
        return this.J && this.R == 1;
    }

    public boolean H() {
        return this.O;
    }

    public boolean I() {
        return this.P;
    }

    public final boolean J(Context context, MotionEvent motionEvent, View view) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(context).getScaledWindowTouchSlop();
        int i2 = -scaledWindowTouchSlop;
        return x < i2 || y < i2 || x > view.getWidth() + scaledWindowTouchSlop || y > view.getHeight() + scaledWindowTouchSlop;
    }

    public final void K() {
        ((ViewGroup.MarginLayoutParams) this.g.getLayoutParams()).setMargins(0, 0, 0, this.M);
    }

    public final void L() {
        int dimension;
        float dimension2;
        if (this.u) {
            this.w.setText(this.x);
            M(this.w);
            this.w.setOnClickListener(this.S);
            this.w.setEnabled(this.v);
            if (this.t) {
                this.w.setTextColor(ContextCompat.getColor(this.a, R.color.os_dialog_positive_btn_alert_color));
            }
        } else {
            this.w.setVisibility(8);
        }
        if (this.z) {
            this.A.setText(this.B);
            M(this.A);
            this.A.setOnClickListener(this.S);
        } else {
            this.A.setVisibility(8);
        }
        if (this.D) {
            this.E.setText(this.F);
            M(this.E);
            this.E.setOnClickListener(this.S);
        } else {
            this.E.setVisibility(8);
        }
        if (this.s && this.u && this.z && this.D) {
            this.A.setTextColor(ContextCompat.getColorStateList(this.a, R.color.os_dialog_negative_btn_text_color));
        }
        this.h.addView(this.m);
        s();
        if (this.g != null) {
            Resources resources = this.a.getResources();
            int i2 = R.dimen.os_dialog_button_margin_bottom;
            int dimensionPixelSize = resources.getDimensionPixelSize(i2);
            int dimensionPixelSize2 = this.a.getResources().getDimensionPixelSize(i2);
            if (olb.Z(this.a)) {
                dimension = (int) this.a.getResources().getDimension(R.dimen.os_ultra_small_dialog_button_height);
                dimension2 = this.a.getResources().getDimension(R.dimen.os_ultra_small_space150);
            } else {
                dimension = (int) this.a.getResources().getDimension(R.dimen.os_dialog_button_height);
                dimension2 = this.a.getResources().getDimension(R.dimen.os_space150);
            }
            int i3 = (int) dimension2;
            if (this.s) {
                int i4 = (this.u ? 1 : 0) * dimension;
                int i5 = dimension + i3;
                dimension = (i5 * (this.D ? 1 : 0)) + i4 + ((this.z ? 1 : 0) * i5);
            }
            int i6 = dimensionPixelSize + dimensionPixelSize2;
            if (!this.K) {
                dimensionPixelSize2 = i6;
            }
            ((ViewGroup.MarginLayoutParams) this.g.getLayoutParams()).setMargins(0, 0, 0, dimension + dimensionPixelSize2);
        }
    }

    public final void M(Button button) {
        button.getViewTreeObserver().addOnGlobalLayoutListener(new b(button));
    }

    public void N(int i2, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        if (message == null && onClickListener != null) {
            message = this.e.obtainMessage(i2, onClickListener);
        }
        if (i2 == -3) {
            this.F = charSequence;
            this.G = message;
            this.D = true;
        } else if (i2 == -2) {
            this.B = charSequence;
            this.C = message;
            this.z = true;
        } else {
            if (i2 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.x = charSequence;
            this.y = message;
            this.u = true;
        }
    }

    public void O(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        ArrayList arrayList = new ArrayList(Arrays.asList(charSequenceArr));
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = this.f;
        if (oSLiquidContainerRootLayoutInner != null) {
            View viewFindViewById = oSLiquidContainerRootLayoutInner.findViewById(R.id.os_prompt_dialog_layout);
            if (this.i == null) {
                viewFindViewById.setPadding(0, 0, 0, 0);
            }
        }
        this.l = y(new m(arrayList, 6), new g(onClickListener));
    }

    public void P() {
        if (olb.P) {
            ViewParent parent = this.f.getParent();
            View decorView = this.c.getDecorView();
            while (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
                viewGroup.setClipToOutline(false);
                if (viewGroup == decorView) {
                    break;
                } else {
                    parent = viewGroup.getParent();
                }
            }
            decorView.setPadding(Math.max(40, decorView.getPaddingLeft()), Math.max(50, decorView.getPaddingTop()), Math.max(40, decorView.getPaddingRight()), Math.max(40, decorView.getPaddingBottom()));
        }
    }

    public final void Q(Drawable drawable) {
        ImageView imageView = (ImageView) this.i.findViewById(R.id.iconImg);
        if (olb.Z(this.a)) {
            int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_space200);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, dimensionPixelSize);
            imageView.setLayoutParams(layoutParams);
        }
        if (imageView != null) {
            imageView.setVisibility(0);
            imageView.setImageDrawable(drawable);
        }
    }

    public void R(Cursor cursor, String str, DialogInterface.OnClickListener onClickListener) {
        try {
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                arrayList.add(cursor.getString(cursor.getColumnIndex(str)));
            }
            T(new m(arrayList), onClickListener);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void S(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        this.l = z(listAdapter, new a(onClickListener));
    }

    public void T(RecyclerView.Adapter adapter, DialogInterface.OnClickListener onClickListener) {
        this.l = A(adapter, new f(onClickListener));
    }

    public void U(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        T(new m(Arrays.asList(charSequenceArr)), onClickListener);
    }

    public final void V() {
        Button button;
        View view;
        if (this.v || (button = this.w) == null || (view = this.l) == null) {
            return;
        }
        m mVar = this.p;
        if (mVar != null) {
            button.setEnabled(mVar.getCheckedItemCount() > 0);
        } else if (view instanceof ListView) {
            button.setEnabled(((ListView) view).getCheckedItemCount() > 0);
        }
    }

    public void W(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        try {
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                arrayList.add(cursor.getString(cursor.getColumnIndex(str)));
            }
            X(new m(arrayList, 2), onMultiChoiceClickListener);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void X(RecyclerView.Adapter adapter, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        this.l = A(adapter, new i(onMultiChoiceClickListener));
    }

    public void Y(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        x(charSequenceArr, zArr);
        X(new m(Arrays.asList(charSequenceArr), 2), onMultiChoiceClickListener);
    }

    public void Z(CharSequence charSequence, boolean z, DialogInterface.OnClickListener onClickListener) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        if (olb.Z(this.a)) {
            f0(R.layout.os_ultra_small_prompt_dialog_singlechecked, null);
        } else {
            f0(R.layout.os_prompt_dialog_singlechecked, null);
        }
        FrameLayout frameLayout = this.k;
        if (frameLayout != null) {
            CheckedTextView checkedTextView = (CheckedTextView) frameLayout.findViewById(R.id.text_choice);
            this.o = checkedTextView;
            checkedTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(d57.b(this.a), (Drawable) null, (Drawable) null, (Drawable) null);
            CheckedTextView checkedTextView2 = this.o;
            if (checkedTextView2 != null) {
                checkedTextView2.setText(charSequence);
                this.o.setChecked(z);
                this.o.setOnClickListener(new e(onClickListener));
            }
        }
    }

    public void a0(Cursor cursor, String str, DialogInterface.OnClickListener onClickListener) {
        try {
            ArrayList arrayList = new ArrayList();
            while (cursor.moveToNext()) {
                arrayList.add(cursor.getString(cursor.getColumnIndex(str)));
            }
            c0(new m(arrayList, 1), onClickListener);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b0(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        View viewZ = z(listAdapter, new k(onClickListener));
        this.l = viewZ;
        if (viewZ instanceof ListView) {
            ((ListView) viewZ).setChoiceMode(1);
        }
    }

    public void c0(RecyclerView.Adapter adapter, DialogInterface.OnClickListener onClickListener) {
        this.l = A(adapter, new h(onClickListener));
    }

    public void d0(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        c0(new m(Arrays.asList(charSequenceArr), 1), onClickListener);
    }

    public void e0() {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            TextView textView = (TextView) linearLayout.findViewById(R.id.text_title);
            textView.setSingleLine();
            textView.setEllipsize(TextUtils.TruncateAt.END);
        } else {
            LinearLayout linearLayout2 = (LinearLayout) this.d.inflate(R.layout.os_prompt_dialog_title, (ViewGroup) this.g, false);
            this.i = linearLayout2;
            TextView textView2 = (TextView) linearLayout2.findViewById(R.id.text_title);
            textView2.setSingleLine();
            textView2.setEllipsize(TextUtils.TruncateAt.END);
        }
    }

    public void f0(int i2, View view) {
        if (i2 == 0 && view == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.d.inflate(R.layout.os_prompt_dialog_view, (ViewGroup) this.g, false);
        this.k = frameLayout;
        frameLayout.removeAllViews();
        if (i2 != 0) {
            FrameLayout frameLayout2 = this.k;
            frameLayout2.addView(this.d.inflate(i2, (ViewGroup) frameLayout2, false));
        } else {
            this.k.addView(view);
        }
        int measuredHeight = this.k.getMeasuredHeight();
        this.N = measuredHeight;
        if (measuredHeight == 0) {
            this.k.measure(0, 0);
            this.N = this.k.getMeasuredHeight();
        }
    }

    public final void g0(boolean z) {
        if (!this.u && !this.z && !this.D) {
            K();
            return;
        }
        if (olb.q0(this.a)) {
            this.s = true;
        }
        CharSequence charSequence = this.x;
        String string = charSequence != null ? charSequence.toString() : "";
        CharSequence charSequence2 = this.B;
        String string2 = charSequence2 != null ? charSequence2.toString() : "";
        CharSequence charSequence3 = this.F;
        u(string, string2, charSequence3 != null ? charSequence3.toString() : "");
    }

    public CheckedTextView getCheckedView() {
        return this.o;
    }

    public boolean getIsAppDialogFragment() {
        return this.L;
    }

    public OSLiquidContainerRootLayoutInner getLiquidContainerView() {
        return this.f;
    }

    public View getListView() {
        return this.l;
    }

    public TextView getMessageTextView() {
        FrameLayout frameLayout = this.j;
        if (frameLayout == null) {
            return null;
        }
        return (TextView) frameLayout.findViewById(R.id.text_message);
    }

    public int getNoBtnBottomInsets() {
        return this.M;
    }

    public TextView getTitleView() {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            return (TextView) linearLayout.findViewById(R.id.text_title);
        }
        return null;
    }

    public final void h0() {
        TextView titleView;
        this.g.removeAllViews();
        this.h.removeAllViews();
        LinearLayout linearLayout = this.i;
        final boolean z = linearLayout != null;
        boolean z2 = this.j != null;
        boolean z3 = this.k != null;
        boolean z4 = this.l != null;
        if (z) {
            linearLayout.setId(R.id.os_module_dialog_damping_layout_title);
        }
        if (z2 && !G()) {
            if (z) {
                this.j.setPadding(0, (int) this.a.getResources().getDimension(R.dimen.os_dialog_message_padding_top), 0, 0);
            } else if (z3) {
                this.j.setPadding(0, 0, 0, (int) this.a.getResources().getDimension(R.dimen.os_dialog_message_padding_bottom));
            } else {
                this.j.setPadding(0, 0, 0, 0);
            }
            this.j.setId(R.id.os_module_dialog_damping_layout_content);
            if (z) {
                ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-1, 0);
                layoutParams.topToBottom = R.id.os_module_dialog_damping_layout_title;
                layoutParams.bottomToBottom = 0;
                layoutParams.matchConstraintDefaultHeight = 1;
                layoutParams.verticalBias = 0.0f;
                this.g.addView(this.j, layoutParams);
            } else {
                ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(-1, 0);
                layoutParams2.topToTop = 0;
                layoutParams2.bottomToBottom = 0;
                layoutParams2.matchConstraintDefaultHeight = 1;
                layoutParams2.verticalBias = 0.0f;
                this.g.addView(this.j, layoutParams2);
            }
        }
        if (z4 && !z2) {
            View view = this.l;
            ViewGroup viewGroup = view instanceof ListView ? (ViewGroup) view.getParent().getParent() : (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (z) {
                    ConstraintLayout.LayoutParams layoutParams3 = new ConstraintLayout.LayoutParams(-1, 0);
                    layoutParams3.topToBottom = R.id.os_module_dialog_damping_layout_title;
                    layoutParams3.bottomToBottom = 0;
                    layoutParams3.matchConstraintDefaultHeight = 1;
                    layoutParams3.verticalBias = 0.0f;
                    this.g.addView(viewGroup, layoutParams3);
                } else {
                    ConstraintLayout.LayoutParams layoutParams4 = new ConstraintLayout.LayoutParams(-1, 0);
                    layoutParams4.topToTop = 0;
                    layoutParams4.bottomToBottom = 0;
                    layoutParams4.matchConstraintDefaultHeight = 1;
                    layoutParams4.verticalBias = 0.0f;
                    this.g.addView(viewGroup, layoutParams4);
                }
            }
        }
        if (z4 && z && (titleView = getTitleView()) != null) {
            titleView.setPaddingRelative(0, 0, 0, (int) this.a.getResources().getDimension(R.dimen.os_dialog_title_padding_bottom));
            if (!this.u && !this.z && !this.D) {
                this.g.setPadding(0, 0, 0, (int) this.a.getResources().getDimension(R.dimen.os_list_dialog_margin_bottom));
            }
        }
        if (z4 && !z) {
            this.g.setPadding(0, 0, 0, 0);
        }
        if (z3) {
            if (z2) {
                ViewGroup.LayoutParams layoutParams5 = this.j.getLayoutParams();
                if (layoutParams5 instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams6 = (ConstraintLayout.LayoutParams) layoutParams5;
                    if (((ViewGroup.MarginLayoutParams) layoutParams6).height != -2) {
                        ((ViewGroup.MarginLayoutParams) layoutParams6).height = -2;
                        this.j.setLayoutParams(layoutParams6);
                    }
                }
            } else if (z4) {
                View view2 = this.l;
                ViewGroup viewGroup2 = view2 instanceof ListView ? (ViewGroup) view2.getParent().getParent() : (ViewGroup) view2.getParent();
                ConstraintLayout.LayoutParams layoutParams7 = (ConstraintLayout.LayoutParams) this.k.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams7).height = -2;
                layoutParams7.bottomToBottom = 0;
                this.k.setLayoutParams(layoutParams7);
                FrameLayout frameLayout = this.k;
                int i2 = R.id.os_module_dialog_custom_view;
                frameLayout.setId(i2);
                if (this.k.getParent() != null) {
                    ((ViewGroup) this.k.getParent()).removeView(this.k);
                }
                this.g.addView(this.k, layoutParams7);
                ConstraintLayout.LayoutParams layoutParams8 = (ConstraintLayout.LayoutParams) viewGroup2.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams8).height = 0;
                layoutParams8.matchConstraintDefaultHeight = 1;
                if (z) {
                    layoutParams8.topToBottom = R.id.os_module_dialog_damping_layout_title;
                } else {
                    layoutParams8.topToTop = 0;
                }
                layoutParams8.bottomToTop = i2;
                layoutParams8.verticalBias = 0.0f;
                viewGroup2.setLayoutParams(layoutParams8);
            }
            if (z2) {
                if (G()) {
                    FrameLayout frameLayout2 = this.k;
                    int i3 = R.id.os_module_dialog_custom_view;
                    frameLayout2.setId(i3);
                    this.g.addView(this.k, C());
                    this.j.setId(R.id.os_module_dialog_damping_layout_content);
                    ConstraintLayout.LayoutParams layoutParams9 = new ConstraintLayout.LayoutParams(-1, 0);
                    layoutParams9.topToBottom = i3;
                    layoutParams9.bottomToBottom = 0;
                    ((ViewGroup.MarginLayoutParams) layoutParams9).topMargin = this.a.getResources().getDimensionPixelOffset(R.dimen.os_dialog_input_message_margin_top);
                    ((ViewGroup.MarginLayoutParams) layoutParams9).bottomMargin = this.a.getResources().getDimensionPixelOffset(R.dimen.os_dialog_input_message_margin_bottom);
                    layoutParams9.matchConstraintDefaultHeight = 1;
                    layoutParams9.verticalBias = 0.0f;
                    this.g.addView(this.j, layoutParams9);
                    this.j.setElevation(-1.0f);
                } else {
                    FrameLayout frameLayout3 = this.k;
                    int i4 = R.id.os_module_dialog_custom_view;
                    frameLayout3.setId(i4);
                    ConstraintLayout.LayoutParams layoutParams10 = new ConstraintLayout.LayoutParams(-1, -2);
                    layoutParams10.topToBottom = R.id.os_module_dialog_damping_layout_content;
                    layoutParams10.bottomToBottom = 0;
                    this.g.addView(this.k, layoutParams10);
                    ConstraintLayout.LayoutParams layoutParams11 = (ConstraintLayout.LayoutParams) this.j.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams11).height = 0;
                    layoutParams11.bottomToTop = i4;
                    layoutParams11.matchConstraintDefaultHeight = 1;
                    layoutParams11.verticalBias = 0.0f;
                    this.j.setLayoutParams(layoutParams11);
                    this.j.setElevation(-1.0f);
                }
            } else if (z4) {
                View view3 = this.l;
                final ViewGroup viewGroup3 = view3 instanceof ListView ? (ViewGroup) view3.getParent().getParent() : (ViewGroup) view3.getParent();
                viewGroup3.post(new Runnable() {
                    @Override
                    public void run() {
                        ConstraintLayout.LayoutParams layoutParams12 = (ConstraintLayout.LayoutParams) PromptController.this.k.getLayoutParams();
                        layoutParams12.bottomToBottom = 0;
                        PromptController.this.k.setLayoutParams(layoutParams12);
                        ConstraintLayout.LayoutParams layoutParams13 = (ConstraintLayout.LayoutParams) viewGroup3.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams13).height = 0;
                        layoutParams13.matchConstraintDefaultHeight = 1;
                        if (z) {
                            layoutParams13.topToBottom = R.id.os_module_dialog_damping_layout_title;
                        } else {
                            layoutParams13.topToTop = 0;
                        }
                        layoutParams13.bottomToTop = R.id.os_module_dialog_custom_view;
                        layoutParams13.verticalBias = 0.0f;
                        viewGroup3.setLayoutParams(layoutParams13);
                    }
                });
            } else {
                this.k.setId(R.id.os_module_dialog_custom_view);
                if (z) {
                    ConstraintLayout.LayoutParams layoutParams12 = new ConstraintLayout.LayoutParams(-1, 0);
                    layoutParams12.topToBottom = R.id.os_module_dialog_damping_layout_title;
                    layoutParams12.bottomToBottom = 0;
                    layoutParams12.matchConstraintDefaultHeight = 1;
                    layoutParams12.verticalBias = 0.0f;
                    this.g.addView(this.k, layoutParams12);
                } else {
                    ConstraintLayout.LayoutParams layoutParams13 = new ConstraintLayout.LayoutParams(-1, 0);
                    layoutParams13.topToTop = 0;
                    layoutParams13.bottomToBottom = 0;
                    layoutParams13.matchConstraintDefaultHeight = 1;
                    layoutParams13.verticalBias = 0.0f;
                    this.g.addView(this.k, layoutParams13);
                }
            }
        }
        if (z && this.g.indexOfChild(this.i) == -1) {
            this.g.addView(this.i, D());
        }
        g0(z3);
    }

    public boolean i0(Context context, MotionEvent motionEvent) {
        return (J(context, motionEvent, this.c.getDecorView()) && (motionEvent.getAction() == 1)) || (motionEvent.getAction() == 4);
    }

    public void onPrepareListView(com.transsion.widgetslib.dialog.e.a aVar) {
        View view = this.l;
        if (view instanceof ListView) {
            aVar.onPrepareListView((ListView) view);
        }
    }

    public final void r(Button button, int i2, float f2) {
        if (button == null || button.getVisibility() != 0) {
            return;
        }
        new com.transsion.widgetsmotionlibrary.b().d(button, 1.0f, i2, 200L, 200L, new m97(), 1, null, f2, true);
    }

    public final void s() {
        int i2;
        int iM = olb.m(this.a, R.attr.os_press_secondary_color_attr, R.color.os_press_secondary_color);
        if (olb.Z(this.a)) {
            i2 = R.dimen.os_ultra_small_btn_corners_radius;
        } else {
            i2 = olb.g0(this.a) ? R.dimen.os_pad_btn_corners_radius : R.dimen.os_btn_corners_radius;
        }
        float dimension = this.a.getResources().getDimension(i2);
        r(this.w, iM, dimension);
        r(this.A, iM, dimension);
        r(this.E, iM, dimension);
    }

    public void setAutoDismiss(boolean z) {
        this.I = z;
    }

    public void setButtonChoiceDialog(boolean z) {
        this.K = z;
    }

    public void setButtonVertical(boolean z) {
        this.s = z;
    }

    public void setCancelable(boolean z) {
        this.O = z;
    }

    public void setCanceledOnTouchOutside(boolean z) {
        this.P = z;
    }

    public void setCheckedItem(int i2) {
        this.q = i2;
        View view = this.l;
        if (view instanceof ListView) {
            ListView listView = (ListView) view;
            listView.setItemChecked(i2, true);
            listView.setSelection(i2);
        }
    }

    public void setElegantTextHeight(boolean z) {
        TextView textView;
        FrameLayout frameLayout = this.j;
        if (frameLayout == null || (textView = (TextView) frameLayout.findViewById(R.id.text_message)) == null || z == textView.getPaint().isElegantTextHeight()) {
            return;
        }
        textView.setElegantTextHeight(z);
    }

    public void setFillColor(@NonNull int i2) {
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = this.f;
        if (oSLiquidContainerRootLayoutInner != null) {
            oSLiquidContainerRootLayoutInner.setDefaultBgColor(i2);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.H == drawable && drawable == null) {
            return;
        }
        if (this.i == null) {
            this.i = (LinearLayout) this.d.inflate(R.layout.os_prompt_dialog_title, (ViewGroup) this.g, false);
        }
        Q(drawable);
        this.H = drawable;
    }

    public void setInputMessagePosition(int i2) {
        this.R = i2;
    }

    public void setIsAlert(boolean z) {
        this.t = z;
    }

    public void setIsAppDialogFragment(boolean z) {
        this.L = z;
    }

    public void setIsInputDialog(boolean z) {
        this.J = z;
    }

    public void setLightTypeConfig(LightTypeConfig lightTypeConfig) {
        this.f.setLightTypeConfig(lightTypeConfig);
    }

    public void setMessage(CharSequence charSequence) {
        setMessageView(charSequence);
    }

    public void setMessageView(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        Paint paint = new Paint();
        paint.setTextSize(this.a.getResources().getDimensionPixelSize(R.dimen.os_body_font));
        this.Q = paint.measureText(charSequence.toString()) > ((float) ((olb.H(this.a) - (olb.h(this.a, 16) * 2)) - (this.a.getResources().getDimensionPixelSize(R.dimen.os_dialog_padding_left_right) * 2)));
        if (this.j == null) {
            FrameLayout frameLayout = (FrameLayout) this.d.inflate(R.layout.os_prompt_dialog_message, (ViewGroup) this.g, false);
            this.j = frameLayout;
            ((DampingLayout) frameLayout.findViewById(R.id.os_damping_inner)).setVibrateEnable(false);
        }
        TextView textView = (TextView) this.j.findViewById(R.id.text_message);
        if (olb.Z(this.a)) {
            Resources resources = this.a.getResources();
            int i2 = R.dimen.os_ultra_small_dialog_padding_left_right;
            textView.setPaddingRelative(resources.getDimensionPixelSize(i2), textView.getPaddingTop(), this.a.getResources().getDimensionPixelSize(i2), textView.getPaddingBottom());
            textView.setMinHeight(olb.h(this.a, 24));
        }
        textView.setText(charSequence);
        textView.setGravity(!this.Q ? 17 : GravityCompat.START);
    }

    public void setNoBtnBottomInsets(int i2) {
        this.M = i2;
    }

    public void setPositiveButtonEnable(boolean z) {
        this.v = z;
    }

    public void setPromptDialogPaddingTop(int i2) {
        OSLiquidContainerRootLayoutInner oSLiquidContainerRootLayoutInner = this.f;
        if (oSLiquidContainerRootLayoutInner != null) {
            oSLiquidContainerRootLayoutInner.findViewById(R.id.os_prompt_dialog_layout).setPadding(this.f.getPaddingLeft(), i2, this.f.getPaddingRight(), this.f.getPaddingBottom());
        }
    }

    public void setTitle(CharSequence charSequence) {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            ((TextView) linearLayout.findViewById(R.id.text_title)).setText(charSequence);
        } else {
            setTitleView(charSequence);
        }
    }

    public void setTitleView(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        if (this.i == null) {
            this.i = (LinearLayout) this.d.inflate(R.layout.os_prompt_dialog_title, (ViewGroup) this.g, false);
        }
        ((TextView) this.i.findViewById(R.id.text_title)).setText(charSequence);
    }

    public void setTitleViewBg(@ColorInt int i2) {
        LinearLayout linearLayout = this.i;
        if (linearLayout != null) {
            linearLayout.setBackgroundColor(i2);
        }
    }

    public void setTopTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        if (this.i == null) {
            this.i = (LinearLayout) this.d.inflate(R.layout.os_prompt_dialog_title, (ViewGroup) this.g, false);
        }
        TextView textView = (TextView) this.i.findViewById(R.id.text_top_title);
        if (olb.Z(this.a)) {
            textView.setPaddingRelative(this.a.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_dialog_padding_left_right), textView.getPaddingTop(), this.a.getResources().getDimensionPixelSize(R.dimen.os_ultra_small_dialog_title_padding_end), textView.getPaddingBottom());
            textView.setTextSize(2, this.a.getResources().getDimension(R.dimen.os_ultra_small_space200));
        }
        textView.setTextColor(olb.m(this.a, R.attr.os_text_info, R.color.os_text_info_hios));
        textView.setVisibility(0);
        textView.setText(charSequence);
    }

    public boolean t() {
        if (olb.J) {
            return ((olb.b0(this.a) && (!olb.Y(this.a) || olb.Q(this.a) || olb.d0(this.a))) || olb.q0(this.a) || E() || this.a.getResources().getConfiguration().orientation != 1) ? false : true;
        }
        return false;
    }

    public final void u(String... strArr) {
        String str = "";
        int length = 0;
        for (String str2 : strArr) {
            if (str2.length() >= length) {
                length = str2.length();
                str = str2;
            }
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTypeface(Typeface.create("sans-serif-semibold", 1));
        textPaint.setTextSize(this.a.getResources().getDimensionPixelSize(R.dimen.os_body_font) * this.a.getResources().getConfiguration().fontScale);
        int iW = w();
        boolean z = iW > 0 && ((((((float) olb.p(this.a)) - ((float) (this.a.getResources().getDimensionPixelSize(R.dimen.os_dialog_margin_horizontal) * 2))) / ((float) iW)) - ((float) (this.a.getResources().getDimensionPixelSize(R.dimen.os_space075) * 2))) - ((float) (this.a.getResources().getDimensionPixelSize(R.dimen.os_btn_text_padding) * 2))) - textPaint.measureText(str) <= 6.0f;
        if (!this.s) {
            this.s = z;
            this.m = this.d.inflate(z ? R.layout.os_prompt_dialog_buttons_vertical : R.layout.os_prompt_dialog_buttons_horizontal, (ViewGroup) this.h, false);
        } else if (olb.Z(this.a)) {
            this.m = this.d.inflate(R.layout.os_ultra_small_prompt_dialog_buttons_vertical, (ViewGroup) this.h, false);
        } else {
            this.m = this.d.inflate(R.layout.os_prompt_dialog_buttons_vertical, (ViewGroup) this.h, false);
        }
        this.n = this.m.findViewById(R.id.view_divider);
        this.w = (Button) this.m.findViewById(R.id.btn_positive);
        this.A = (Button) this.m.findViewById(R.id.btn_negative);
        this.E = (Button) this.m.findViewById(R.id.btn_neutral);
        if (olb.Z(this.a)) {
            this.w.setBackgroundResource(R.drawable.os_ultra_small_btn_big);
            Button button = this.A;
            int i2 = R.drawable.os_ultra_small_btn_big_gray;
            button.setBackgroundResource(i2);
            this.E.setBackgroundResource(i2);
        }
        if (olb.g0(this.a)) {
            this.w.setBackgroundResource(R.drawable.os_pad_btn_big);
            Button button2 = this.A;
            int i3 = R.drawable.os_pad_btn_big_gray;
            button2.setBackgroundResource(i3);
            this.E.setBackgroundResource(i3);
        }
        L();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final int w() {
        ?? r0 = this.u;
        int i2 = r0;
        if (this.z) {
            i2 = r0 + 1;
        }
        return this.D ? i2 + 1 : i2;
    }

    public final void x(CharSequence[] charSequenceArr, boolean[] zArr) {
        if (zArr == null) {
            this.r = new boolean[charSequenceArr.length];
            return;
        }
        if (charSequenceArr.length == zArr.length) {
            this.r = zArr;
            return;
        }
        this.r = new boolean[charSequenceArr.length];
        int i2 = 0;
        while (i2 < charSequenceArr.length) {
            this.r[i2] = i2 < zArr.length && zArr[i2];
            i2++;
        }
    }

    public final RecyclerView y(RecyclerView.Adapter adapter, AdapterView.OnItemClickListener onItemClickListener) {
        RecyclerView recyclerView = (RecyclerView) this.d.inflate(R.layout.os_prompt_dialog_list, (ViewGroup) this.g, false).findViewById(R.id.os_damp_list_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(this.a, 1, false));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        if (adapter instanceof RecyclerAdapter) {
            ((RecyclerAdapter) adapter).setOnItemClickListener(onItemClickListener);
            if (adapter instanceof m) {
                m mVar = (m) adapter;
                this.p = mVar;
                mVar.setWeakReference(this);
            }
        }
        recyclerView.setAdapter(adapter);
        return recyclerView;
    }

    public final View z(ListAdapter listAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        ListView listView = (ListView) this.d.inflate(R.layout.os_prompt_dialog_list_compat, (ViewGroup) this.g, false).findViewById(R.id.os_damp_list_view_compat);
        ViewParent parent = listView.getParent();
        if (parent instanceof OverBoundNestedScrollView) {
            ((OverBoundNestedScrollView) parent).setVibrateEnable(false);
        }
        listView.setAdapter(listAdapter);
        listView.setOnItemClickListener(onItemClickListener);
        listView.setDivider(null);
        return listView;
    }
}
