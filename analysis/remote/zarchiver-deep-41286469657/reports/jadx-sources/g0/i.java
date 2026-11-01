package g0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ui.text.BtnEditText;

public abstract class i {

    public c f960a = null;

    public d f961b = null;

    public int f962c = -1;

    public int f963d = 0;

    public SparseArray<Object> f964e;

    public ru.zdevs.zarchiver.d f965f;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            i.this.e();
        }
    }

    public class b implements DialogInterface.OnShowListener {

        public final Dialog f967a;

        public b(Dialog dialog) {
            this.f967a = dialog;
        }

        @Override
        public final void onShow(DialogInterface dialogInterface) {
            i.i(this.f967a);
        }
    }

    public interface c {
        void b(i iVar);
    }

    public interface d {
        boolean a(i iVar);
    }

    public static void h(ViewGroup viewGroup, ArrayList<View> arrayList) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof AdapterView) {
                arrayList.add(childAt);
            } else if (childAt instanceof ViewGroup) {
                h((ViewGroup) childAt, arrayList);
                if (childAt instanceof LinearLayout) {
                    arrayList.add(childAt);
                }
            } else if (childAt instanceof TextView) {
                arrayList.add(childAt);
            }
        }
    }

    public static void i(Dialog dialog) {
        if (Build.VERSION.SDK_INT >= 21 || (t0.b.f2087h & 255) <= 1) {
            return;
        }
        try {
            Context context = dialog.getContext();
            Resources resources = context.getResources();
            TextView textView = (TextView) dialog.findViewById(resources.getIdentifier("android:id/alertTitle", null, null));
            if (textView != null) {
                textView.setTextColor(z0.c.c(context, R.attr.defaultTextColorFileList));
                textView.setTypeface(null, 1);
            }
            View viewFindViewById = dialog.findViewById(resources.getIdentifier("android:id/titleDivider", null, null));
            if (viewFindViewById != null) {
                viewFindViewById.setBackgroundColor(resources.getColor(android.R.color.transparent));
            }
        } catch (Exception unused) {
        }
    }

    public static void m(FrameLayout frameLayout, View view) {
        ArrayList<View> arrayList = new ArrayList();
        if (frameLayout instanceof ViewGroup) {
            h(frameLayout, arrayList);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        for (View view2 : arrayList) {
            View viewFindViewById = view.findViewById(view2.getId());
            if (viewFindViewById != null) {
                viewFindViewById.setEnabled(view2.isEnabled());
                viewFindViewById.setVisibility(view2.getVisibility());
                if (viewFindViewById instanceof AdapterView) {
                    AdapterView adapterView = (AdapterView) viewFindViewById;
                    AdapterView adapterView2 = (AdapterView) view2;
                    adapterView.setAdapter(adapterView2.getAdapter());
                    adapterView.setSelection(adapterView2.getSelectedItemPosition());
                    adapterView.setOnItemSelectedListener(adapterView2.getOnItemSelectedListener());
                } else if (viewFindViewById instanceof CheckBox) {
                    ((CheckBox) viewFindViewById).setChecked(((CheckBox) view2).isChecked());
                } else if (viewFindViewById instanceof TextView) {
                    TextView textView = (TextView) viewFindViewById;
                    TextView textView2 = (TextView) view2;
                    textView.setText(textView2.getText());
                    textView.setHint(textView2.getHint());
                    textView.setFilters(textView2.getFilters());
                    textView.setInputType(textView2.getInputType());
                    if (viewFindViewById instanceof BtnEditText) {
                        ((BtnEditText) viewFindViewById).setButton(((BtnEditText) view2).getButton());
                    }
                }
            }
        }
    }

    public static void p(Dialog dialog) {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        dialog.setOnShowListener(new b(dialog));
    }

    public static void q(Dialog dialog, boolean z2) {
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(dialog.getWindow().getAttributes());
        layoutParams.width = z2 ? -1 : -2;
        window.setAttributes(layoutParams);
    }

    public static boolean s(Dialog dialog) {
        try {
            dialog.show();
            return true;
        } catch (WindowManager.BadTokenException unused) {
            return false;
        }
    }

    public final void c() {
        ru.zdevs.zarchiver.d dVar = this.f965f;
        if (dVar == null) {
            return;
        }
        synchronized (dVar.f1684d) {
            this.f965f.f1684d.add(this);
        }
    }

    public abstract void e();

    public final void f() {
        try {
            ZApp.f().post(new a());
        } catch (Exception unused) {
        }
    }

    public final void g() {
        ru.zdevs.zarchiver.d dVar = this.f965f;
        if (dVar == null) {
            return;
        }
        synchronized (dVar.f1684d) {
            this.f965f.f1684d.remove(this);
        }
    }

    public final String j(int i2) {
        SparseArray<Object> sparseArray = this.f964e;
        if (sparseArray == null) {
            return null;
        }
        return (String) sparseArray.get(i2);
    }

    public final int k() {
        return this.f963d & 65535;
    }

    public int l() {
        return 0;
    }

    public void n(Context context, Configuration configuration) {
    }

    public final void o(int i2, Object obj) {
        if (this.f964e == null) {
            this.f964e = new SparseArray<>(2);
        }
        this.f964e.append(i2, obj);
    }

    public final void r(int i2) {
        this.f963d = (i2 & 65535) | (this.f963d & (-65536));
    }
}
