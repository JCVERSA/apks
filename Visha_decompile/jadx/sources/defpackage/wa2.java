package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextPaint;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.ContextCompat;
import com.cloud.tupdate.R;
import com.cloud.tupdate.bean.AppScoreContent;
import com.cloud.tupdate.bean.UpdateContent;
import com.cloud.tupdate.bean.UpdateEntity;
import com.cloud.tupdate.net.utils.LogUtil;
import com.cloud.tupdate.view.MaxHeightScrollView;
import com.transsion.widgetslib.dialog.d;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

public abstract class wa2 {
    public static final a a = new a(null);

    public static final class a {

        public static final class C0455a implements MaxHeightScrollView.onScrollOverListener {
            public final Ref$BooleanRef a;
            public final Ref$ObjectRef b;

            public C0455a(Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef) {
                this.a = ref$BooleanRef;
                this.b = ref$ObjectRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void scrollOver(boolean z, boolean z2) {
                if (this.a.element) {
                    if (!z || z2) {
                        View view = (View) this.b.element;
                        if (view == null) {
                            return;
                        }
                        view.setVisibility(8);
                        return;
                    }
                    View view2 = (View) this.b.element;
                    if (view2 == null) {
                        return;
                    }
                    view2.setVisibility(0);
                }
            }
        }

        public static final class b implements ViewTreeObserver.OnPreDrawListener {
            public final Ref$ObjectRef b;
            public final Ref$BooleanRef c;

            public b(Ref$ObjectRef ref$ObjectRef, Ref$BooleanRef ref$BooleanRef) {
                this.b = ref$ObjectRef;
                this.c = ref$BooleanRef;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public boolean onPreDraw() {
                try {
                    View childAt = ((ScrollView) this.b.element).getChildAt(0);
                    if (childAt != null) {
                        int height = childAt.getHeight();
                        this.c.element = ((ScrollView) this.b.element).getHeight() < height;
                        if (this.c.element) {
                            ((ScrollView) this.b.element).setVerticalScrollBarEnabled(true);
                        }
                    }
                    ViewTreeObserver viewTreeObserver = ((ScrollView) this.b.element).getViewTreeObserver();
                    if (viewTreeObserver != null) {
                        viewTreeObserver.removeOnPreDrawListener(this);
                    }
                    return true;
                } catch (Exception e) {
                    LogUtil.a.d(e);
                    return true;
                }
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final void l(ww4 ww4Var, DialogInterface dialogInterface) {
            y45.j(ww4Var, "$updateManager");
            ww4Var.d();
        }

        public static final void m(ww4 ww4Var, DialogInterface dialogInterface) {
            y45.j(ww4Var, "$updateManager");
            ww4Var.d();
        }

        public static final void n(d dVar, b bVar, View view) {
            try {
                dVar.dismiss();
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
            if (bVar == null) {
                return;
            }
            bVar.a();
        }

        public static final void o(d dVar, b bVar, View view) {
            try {
                dVar.dismiss();
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
            if (bVar == null) {
                return;
            }
            bVar.b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final void q(Ref$ObjectRef ref$ObjectRef, View view) {
            y45.j(ref$ObjectRef, "$cbIgnore");
            T t = ref$ObjectRef.element;
            CheckBox checkBox = (CheckBox) t;
            if (checkBox == null) {
                return;
            }
            CheckBox checkBox2 = (CheckBox) t;
            checkBox.setChecked(!(checkBox2 == null ? false : checkBox2.isChecked()));
        }

        public static final void r(c cVar, CompoundButton compoundButton, boolean z) {
            if (cVar == null) {
                return;
            }
            cVar.b(z);
        }

        public static final void s(ww4 ww4Var, DialogInterface dialogInterface) {
            y45.j(ww4Var, "$updateManager");
            vw4 vw4VarF = ww4Var.f();
            if (vw4VarF == null) {
                return;
            }
            vw4VarF.onDismiss();
        }

        public static final void t(ww4 ww4Var, DialogInterface dialogInterface) {
            y45.j(ww4Var, "$updateManager");
            vw4 vw4VarF = ww4Var.f();
            if (vw4VarF == null) {
                return;
            }
            vw4VarF.a();
        }

        public static final void u(c cVar, UpdateContent updateContent, ww4 ww4Var, d dVar, View view) {
            y45.j(ww4Var, "$updateManager");
            if (cVar != null) {
                cVar.c();
            }
            qa1.a.m(updateContent, ww4Var, dVar);
        }

        public static final void v(d dVar, c cVar, View view) {
            try {
                dVar.dismiss();
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
            if (cVar == null) {
                return;
            }
            cVar.a();
        }

        public final void k(Context context, AppScoreContent appScoreContent, final ww4 ww4Var, final b bVar) {
            String cancelScoreButton;
            String scoreButton;
            y45.j(context, "context");
            y45.j(ww4Var, "updateManager");
            View viewInflate = View.inflate(context, R.layout.tupdate_score_dialog, null);
            TextView textView = viewInflate == null ? null : (TextView) viewInflate.findViewById(R.id.tv_score_title);
            TextView textView2 = viewInflate == null ? null : (TextView) viewInflate.findViewById(R.id.tv_score_content);
            String scoreTitle = appScoreContent == null ? null : appScoreContent.getScoreTitle();
            if (scoreTitle == null || j1a.o0(scoreTitle)) {
                if (textView != null) {
                    textView.setVisibility(8);
                }
                if (textView2 != null) {
                    textView2.setTextColor(ContextCompat.getColor(context, R.color.update_color_000000));
                }
            } else {
                if (textView != null) {
                    textView.setVisibility(0);
                }
                if (textView != null) {
                    textView.setText(appScoreContent == null ? null : appScoreContent.getScoreTitle());
                }
                if (textView2 != null) {
                    textView2.setTextColor(ContextCompat.getColor(context, R.color.update_color_CC000000));
                }
            }
            if (textView != null && textView.getPaint() != null) {
                TextPaint paint = textView.getPaint();
                y45.i(paint, "scoreTitle.getPaint()");
                paint.setFakeBoldText(true);
            }
            String scoreContent = appScoreContent == null ? null : appScoreContent.getScoreContent();
            if (scoreContent == null || j1a.o0(scoreContent)) {
                if (textView2 != null) {
                    textView2.setText(context.getString(R.string.text_update_score_content));
                }
            } else if (textView2 != null) {
                textView2.setText(appScoreContent == null ? null : appScoreContent.getScoreContent());
            }
            Button button = viewInflate == null ? null : (Button) viewInflate.findViewById(R.id.btn_negative);
            Button button2 = viewInflate != null ? (Button) viewInflate.findViewById(R.id.btn_positive) : null;
            String string = (appScoreContent == null || (scoreButton = appScoreContent.getScoreButton()) == null || j1a.o0(scoreButton)) ? context.getString(R.string.text_update_score_button) : appScoreContent.getScoreButton();
            y45.i(string, "if (appScoreContent == n…eButton\n                }");
            if (button2 != null) {
                button2.setText(string);
            }
            String string2 = (appScoreContent == null || (cancelScoreButton = appScoreContent.getCancelScoreButton()) == null || cancelScoreButton.length() == 0) ? context.getString(R.string.text_update_cancel) : appScoreContent.getCancelScoreButton();
            y45.i(string2, "if (appScoreContent == n…eButton\n                }");
            if (button != null) {
                button.setText(string2);
            }
            if (g1a.E(olb.a[1], qa1.a.g(), true)) {
                if (button2 != null) {
                    button2.setTextColor(context.getColor(R.color.update_color_14C764));
                }
            } else if (button2 != null) {
                button2.setTextColor(context.getColor(R.color.update_color_0A69FE));
            }
            final d dVarA = new d.a(context).E(viewInflate).s(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    wa2.a.l(ww4Var, dialogInterface);
                }
            }).a();
            dVarA.setOnShowListener(new DialogInterface.OnShowListener() {
                @Override
                public final void onShow(DialogInterface dialogInterface) {
                    wa2.a.m(ww4Var, dialogInterface);
                }
            });
            if (button != null) {
                button.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        wa2.a.n(dVarA, bVar, view);
                    }
                });
            }
            if (button2 != null) {
                button2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        wa2.a.o(dVarA, bVar, view);
                    }
                });
            }
            try {
                ww4Var.d();
                if (!(context instanceof Activity)) {
                    dVarA.show();
                } else {
                    if (((Activity) context).isFinishing()) {
                        return;
                    }
                    dVarA.show();
                }
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
        }

        /* JADX WARN: Code duplicated, block: B:239:0x03a0  */
        /* JADX WARN: Code duplicated, block: B:242:0x03a6  */
        /* JADX WARN: Multi-variable type inference failed */
        public final void p(Context context, UpdateEntity updateEntity, final ww4 ww4Var, final c cVar, boolean z) {
            View view;
            View viewFindViewById;
            TextView textView;
            TextView textView2;
            View view2;
            View viewFindViewById2;
            TextView textView3;
            boolean z2;
            Boolean force;
            String updateButton;
            String updateButton2;
            ViewTreeObserver viewTreeObserver;
            T t;
            T tFindViewById;
            T t2;
            y45.j(context, "context");
            y45.j(updateEntity, "updateEntity");
            y45.j(ww4Var, "updateManager");
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            final UpdateContent updateContent = updateEntity.getUpdateContent();
            View viewInflate = View.inflate(context, R.layout.tupdate_layout_upgrade_dialog, null);
            TextView textView4 = viewInflate == null ? null : (TextView) viewInflate.findViewById(R.id.updateTitleTv);
            TextView textView5 = viewInflate == null ? null : (TextView) viewInflate.findViewById(R.id.updateVersionTv);
            TextView textView6 = viewInflate == null ? null : (TextView) viewInflate.findViewById(R.id.updateContentTv);
            Button button = viewInflate != null ? (Button) viewInflate.findViewById(R.id.updateNegativeBtn) : null;
            Button button2 = viewInflate == null ? null : (Button) viewInflate.findViewById(R.id.updatePositiveBtn);
            if (viewInflate == null) {
                viewFindViewById = null;
            } else {
                try {
                    viewFindViewById = viewInflate.findViewById(R.id.ll_ignore);
                } catch (Exception e) {
                    LogUtil.a.d(e);
                    view = null;
                }
            }
            view = viewFindViewById;
            if (viewInflate == null) {
                t2 = 0;
            } else {
                try {
                    t2 = (CheckBox) viewInflate.findViewById(R.id.updateIgnoreCb);
                } catch (Exception e2) {
                    LogUtil.a.d(e2);
                }
            }
            ref$ObjectRef.element = t2;
            if (viewInflate == null) {
                textView2 = null;
            } else {
                try {
                    textView2 = (TextView) viewInflate.findViewById(R.id.currentVersionTv);
                } catch (Exception e3) {
                    LogUtil.a.d(e3);
                    textView = null;
                }
            }
            textView = textView2;
            if (viewInflate == null) {
                tFindViewById = 0;
            } else {
                try {
                    tFindViewById = viewInflate.findViewById(R.id.contentScrollViewTop);
                } catch (Exception e4) {
                    LogUtil.a.d(e4);
                }
            }
            ref$ObjectRef2.element = tFindViewById;
            if (viewInflate == null) {
                viewFindViewById2 = null;
            } else {
                try {
                    viewFindViewById2 = viewInflate.findViewById(R.id.updateBottomDivider);
                } catch (Exception e5) {
                    LogUtil.a.d(e5);
                    view2 = null;
                }
            }
            view2 = viewFindViewById2;
            if (viewInflate == null) {
                t = 0;
            } else {
                try {
                    t = (ScrollView) viewInflate.findViewById(R.id.contentScrollView);
                } catch (Exception e6) {
                    LogUtil.a.d(e6);
                }
            }
            ref$ObjectRef3.element = t;
            if (viewInflate == null) {
                textView3 = null;
            } else {
                try {
                    textView3 = (TextView) viewInflate.findViewById(R.id.ignoreUpdateTips);
                } catch (Exception e7) {
                    o6.j().a(Log.getStackTraceString(e7));
                    textView3 = null;
                }
            }
            ScrollView scrollView = (ScrollView) ref$ObjectRef3.element;
            if (scrollView != null) {
                scrollView.setVerticalScrollBarEnabled(false);
            }
            if (ref$ObjectRef3.element instanceof MaxHeightScrollView) {
                ((MaxHeightScrollView) ref$ObjectRef3.element).setMaxHeight((int) (((double) context.getResources().getDisplayMetrics().heightPixels) * (c39.g((float) context.getResources().getDisplayMetrics().heightPixels) < 650 ? 0.2d : 0.35d)));
                ((MaxHeightScrollView) ref$ObjectRef3.element).setListener(new C0455a(ref$BooleanRef, ref$ObjectRef2));
            }
            ScrollView scrollView2 = (ScrollView) ref$ObjectRef3.element;
            if (scrollView2 != null && (viewTreeObserver = scrollView2.getViewTreeObserver()) != null) {
                viewTreeObserver.addOnPreDrawListener(new b(ref$ObjectRef3, ref$BooleanRef));
                zfb zfbVar = zfb.a;
            }
            if (view != null) {
                view.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view3) {
                        wa2.a.q(ref$ObjectRef, view3);
                    }
                });
                zfb zfbVar2 = zfb.a;
            }
            CheckBox checkBox = (CheckBox) ref$ObjectRef.element;
            if (checkBox != null) {
                checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                        wa2.a.r(cVar, compoundButton, z3);
                    }
                });
                zfb zfbVar3 = zfb.a;
            }
            if (textView4 != null && textView4.getPaint() != null) {
                TextPaint paint = textView4.getPaint();
                y45.i(paint, "updateTitleTv.getPaint()");
                paint.setFakeBoldText(true);
            }
            String updateTitle = updateContent == null ? null : updateContent.getUpdateTitle();
            if (updateTitle == null || j1a.o0(updateTitle)) {
                if (textView4 != null) {
                    textView4.setText(context.getString(R.string.text_update_dialog_title));
                }
            } else if (textView4 != null) {
                textView4.setText(updateContent == null ? null : updateContent.getUpdateTitle());
            }
            String updateVersion = updateContent == null ? null : updateContent.getUpdateVersion();
            if (updateVersion != null && updateVersion.length() != 0) {
                if (textView5 != null) {
                    textView5.setVisibility(0);
                }
                if (textView5 != null) {
                    hz9 hz9Var = hz9.a;
                    String string = context.getString(R.string.text_update_version);
                    y45.i(string, "context.getString(R.string.text_update_version)");
                    String str = String.format(string, Arrays.copyOf(new Object[]{updateContent == null ? null : updateContent.getUpdateVersion()}, 1));
                    y45.i(str, "format(format, *args)");
                    textView5.setText(str);
                }
            } else if (textView5 != null) {
                textView5.setVisibility(8);
            }
            if (z) {
                TextView textView7 = textView;
                if (textView != null) {
                    textView7.setVisibility(0);
                }
                if (textView7 != null) {
                    hz9 hz9Var2 = hz9.a;
                    String string2 = context.getString(R.string.text_update_current_version);
                    y45.i(string2, "context.getString(R.stri…t_update_current_version)");
                    String str2 = String.format(string2, Arrays.copyOf(new Object[]{qa1.a.b(context)}, 1));
                    y45.i(str2, "format(format, *args)");
                    textView7.setText(str2);
                }
            } else {
                View view3 = textView;
                if (view3 != null) {
                    view3.setVisibility(8);
                }
            }
            String updateContent2 = updateContent == null ? null : updateContent.getUpdateContent();
            if (updateContent2 == null || j1a.o0(updateContent2)) {
                if (textView6 != null) {
                    textView6.setText(context.getString(R.string.text_update_content));
                }
            } else if (textView6 != null) {
                textView6.setText(updateContent == null ? null : updateContent.getUpdateContent());
            }
            String ignoreUpdateTips = updateContent == null ? null : updateContent.getIgnoreUpdateTips();
            if (ignoreUpdateTips == null || j1a.o0(ignoreUpdateTips)) {
                if (textView3 != null) {
                    textView3.setText(context.getString(R.string.text_update_ignore));
                }
            } else if (textView3 != null) {
                textView3.setText(updateContent == null ? null : updateContent.getIgnoreUpdateTips());
            }
            String string3 = (updateContent == null || (updateButton2 = updateContent.getUpdateButton()) == null || j1a.o0(updateButton2)) ? context.getString(R.string.text_update_button) : updateContent.getUpdateButton();
            y45.i(string3, "if (updateContent == nul…eButton\n                }");
            TextView textView8 = button2;
            if (button2 != null) {
                textView8.setText(string3);
            }
            if (g1a.E(olb.a[1], qa1.a.g(), true)) {
                if (textView8 != null) {
                    textView8.setTextColor(context.getColor(R.color.update_color_14C764));
                    zfb zfbVar4 = zfb.a;
                }
                CheckBox checkBox2 = (CheckBox) ref$ObjectRef.element;
                if (checkBox2 != null) {
                    checkBox2.setButtonDrawable(AppCompatResources.getDrawable(context, R.drawable.update_checkbox_button_xos));
                    zfb zfbVar5 = zfb.a;
                }
            } else {
                if (textView8 != null) {
                    textView8.setTextColor(context.getColor(R.color.update_color_0A69FE));
                    zfb zfbVar6 = zfb.a;
                }
                CheckBox checkBox3 = (CheckBox) ref$ObjectRef.element;
                if (checkBox3 != null) {
                    checkBox3.setButtonDrawable(AppCompatResources.getDrawable(context, R.drawable.update_checkbox_button));
                    zfb zfbVar7 = zfb.a;
                }
            }
            String string4 = (updateContent == null || (updateButton = updateContent.getUpdateButton()) == null || j1a.o0(updateButton)) ? context.getString(R.string.text_update_cancel) : updateContent.getCancelUpdateButton();
            TextView textView9 = button;
            if (button != null) {
                textView9.setText(string4);
            }
            if (updateContent == null || y45.e(updateContent.getForce(), Boolean.FALSE)) {
                View view4 = view2;
                if (!ww4Var.b()) {
                    if (view != null) {
                        z2 = false;
                        view.setVisibility(0);
                    }
                    if (textView9 != null) {
                        textView9.setVisibility(z2 ? 1 : 0);
                    }
                    if (view4 != null) {
                        view4.setVisibility(z2 ? 1 : 0);
                    }
                } else if (view != null) {
                    view.setVisibility(8);
                }
                z2 = false;
                if (textView9 != null) {
                    textView9.setVisibility(z2 ? 1 : 0);
                }
                if (view4 != null) {
                    view4.setVisibility(z2 ? 1 : 0);
                }
            } else {
                if (textView9 != null) {
                    textView9.setVisibility(8);
                }
                if (view != null) {
                    view.setVisibility(8);
                }
                if (view2 != 0) {
                    view2.setVisibility(8);
                }
                z2 = false;
            }
            final d dVarA = new d.a(context).E(viewInflate).f(z2).e(!((updateContent == null || (force = updateContent.getForce()) == null) ? z2 : force.booleanValue())).s(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    wa2.a.s(ww4Var, dialogInterface);
                }
            }).a();
            dVarA.setOnShowListener(new DialogInterface.OnShowListener() {
                @Override
                public final void onShow(DialogInterface dialogInterface) {
                    wa2.a.t(ww4Var, dialogInterface);
                }
            });
            if (textView8 != null) {
                textView8.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view5) {
                        wa2.a.u(cVar, updateContent, ww4Var, dVarA, view5);
                    }
                });
                zfb zfbVar8 = zfb.a;
            }
            if (textView9 != null) {
                textView9.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view5) {
                        wa2.a.v(dVarA, cVar, view5);
                    }
                });
                zfb zfbVar9 = zfb.a;
            }
            try {
                o6.j().d("update", "showCurrentVersion = " + z + ",  isHideIgnoreVersion = " + ww4Var.b() + ", position = " + ww4Var.h());
                vw4 vw4VarF = ww4Var.f();
                if (vw4VarF != null && !vw4VarF.b()) {
                    return;
                }
                if (!(context instanceof Activity) || !((Activity) context).isFinishing()) {
                    dVarA.show();
                }
                vk.a.C("upgrade", updateEntity);
            } catch (Exception e8) {
                LogUtil.a.d(e8);
            }
        }

        public a() {
        }
    }

    public interface b {
        void a();

        void b();
    }

    public interface c {
        void a();

        void b(boolean z);

        void c();
    }
}
