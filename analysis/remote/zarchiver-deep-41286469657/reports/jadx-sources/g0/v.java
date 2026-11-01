package g0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.ArrayList;
import java.util.List;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

public final class v extends i implements a1.g, AdapterView.OnItemClickListener, DialogInterface.OnCancelListener {

    public static int f1046m;

    public Dialog f1047g;

    public PopupWindow f1048h;

    public final int f1049i;

    public int f1050j;

    public int f1051k;

    public Point f1052l;

    public class a extends BaseAdapter {

        public final List<c0.h> f1053a;

        public final LayoutInflater f1054b;

        public class ViewOnClickListenerC0018a implements View.OnClickListener {
            public ViewOnClickListenerC0018a() {
            }

            @Override
            public final void onClick(View view) {
                v.this.onItemClick(null, view, 0, ((Integer) view.getTag()).intValue());
            }
        }

        public a(Context context, ArrayList arrayList) {
            if (Build.VERSION.SDK_INT > 19 && t0.b.k(768)) {
                context = new ContextThemeWrapper(context, R.style.AppTheme_Light);
            }
            this.f1053a = arrayList;
            this.f1054b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override
        public final int getCount() {
            return this.f1053a.size();
        }

        @Override
        public final Object getItem(int i2) {
            return this.f1053a.get(i2);
        }

        @Override
        public final long getItemId(int i2) {
            return this.f1053a.get(i2).f421c;
        }

        @Override
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f1054b.inflate(R.layout.item_bottom_menu, viewGroup, false);
            }
            c0.h hVar = this.f1053a.get(i2);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            TextView textView = (TextView) view.findViewById(R.id.text);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.more);
            textView.setText(hVar.f419a);
            imageView.setImageDrawable(hVar.f420b);
            Drawable drawable = hVar.f422d;
            if (drawable != null) {
                imageView2.setImageDrawable(drawable);
                imageView2.setVisibility(0);
                imageView2.setTag(Integer.valueOf(hVar.f421c + 1));
                imageView2.setClickable(true);
                imageView2.setOnClickListener(new ViewOnClickListenerC0018a());
            } else {
                imageView2.setVisibility(8);
            }
            return view;
        }
    }

    public v(Context context, ArrayList arrayList, String str, int i2) throws Throwable {
        this.f965f = null;
        this.f1049i = i2;
        this.f1050j = -1;
        this.f1051k = -1;
        t(context, arrayList, str, i2, null);
        c();
    }

    @Override
    public final void e() {
        Dialog dialog = this.f1047g;
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
            this.f1047g = null;
        } else {
            PopupWindow popupWindow = this.f1048h;
            if (popupWindow != null) {
                try {
                    popupWindow.dismiss();
                } catch (Exception unused2) {
                }
                this.f1048h = null;
            }
        }
        g();
    }

    @Override
    public final int l() {
        return 10;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        Dialog dialog = this.f1047g;
        if (dialog == null || this.f1051k < 0) {
            return;
        }
        if (this.f1048h != null) {
            e();
            return;
        }
        try {
            Window window = dialog.getWindow();
            if (window == null) {
                return;
            }
            if (configuration.orientation == 1 || configuration.screenLayout < 3) {
                window.setGravity(80);
            } else {
                window.setGravity(this.f1051k | 80);
            }
            if (Build.VERSION.SDK_INT >= 21 && !a0.c.K(this.f1049i, 1)) {
                SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) this.f1047g.findViewById(R.id.sup_sliding);
                ViewGroup.LayoutParams layoutParams = slidingUpPanelLayout.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = a1.f.a(context);
                }
                if (v0.b.e(context)) {
                    View viewFindViewById = this.f1047g.findViewById(R.id.sup_container);
                    if (!z0.e.c(context, true, configuration)) {
                        window.clearFlags(134217728);
                        viewFindViewById.setPadding(0, 0, 0, 0);
                        slidingUpPanelLayout.g(0);
                    } else {
                        window.setFlags(134217728, 134217728);
                        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                        int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
                        viewFindViewById.setPadding(0, 0, 0, dimensionPixelSize);
                        slidingUpPanelLayout.g(dimensionPixelSize);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (view == null) {
            return;
        }
        this.f1050j = (int) j2;
        i.d dVar = this.f961b;
        if (dVar != null) {
            dVar.a(this);
        }
        this.f960a = null;
        e();
    }

    public final void t(Context context, ArrayList arrayList, String str, int i2, Point point) throws Throwable {
        int i3;
        TypedArray typedArrayObtainStyledAttributes;
        int dimensionPixelSize;
        int i4;
        int i5;
        int i6;
        int width;
        TypedArray typedArray = null;
        int height = 0;
        if (a0.c.K(i2, 1) || (i3 = Build.VERSION.SDK_INT) < 21) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str);
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_menu_holo, (ViewGroup) null, false);
            builder.setView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.lvPopupList);
            listView.setAdapter((ListAdapter) new a(context, arrayList));
            listView.setOnItemClickListener(this);
            builder.setView(viewInflate);
            builder.setOnCancelListener(this);
            if (a0.c.K(this.f1049i, 8)) {
                builder.setNegativeButton(R.string.BTN_CANCEL, new u(this));
            }
            AlertDialog alertDialogCreate = builder.create();
            this.f1047g = alertDialogCreate;
            alertDialogCreate.setCanceledOnTouchOutside(true);
            i.p(this.f1047g);
            return;
        }
        if (a0.c.K(i2, 4) && point != null) {
            ListView listView2 = new ListView(context);
            listView2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            listView2.setAdapter((ListAdapter) new a(context, arrayList));
            listView2.setOnItemClickListener(this);
            listView2.setLongClickable(false);
            z0.e.l(listView2);
            PopupWindow popupWindow = new PopupWindow((View) listView2, z0.c.a(288), -2, true);
            this.f1048h = popupWindow;
            popupWindow.setOutsideTouchable(true);
            this.f1048h.setInputMethodMode(1);
            this.f1048h.setBackgroundDrawable(context.getDrawable(R.drawable.bg_menu));
            if (i3 >= 21) {
                if (!t0.b.k(1536)) {
                    this.f1048h.setElevation(8.0f);
                }
                if (i3 >= 23) {
                    this.f1048h.setWindowLayoutType(1002);
                }
            }
            this.f1048h.setOnDismissListener(new t(this));
            this.f1052l = point;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (context instanceof Activity) {
                View decorView = ((Activity) context).getWindow().getDecorView();
                height = decorView.getHeight();
                width = decorView.getWidth();
            } else {
                width = 0;
            }
            if (height <= 0) {
                height = defaultDisplay.getHeight();
            }
            if (width <= 0) {
                width = defaultDisplay.getWidth();
            }
            int i7 = height / 2;
            Point point2 = this.f1052l;
            int i8 = point2.y;
            if (i7 < i8) {
                this.f1051k = 80;
                point2.y = height - i8;
            } else {
                this.f1051k = 48;
            }
            int i9 = width / 2;
            int i10 = point2.x;
            if (i9 >= i10) {
                this.f1051k |= 8388611;
                return;
            } else {
                this.f1051k |= 8388613;
                point2.x = width - i10;
                return;
            }
        }
        View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.dlg_menu, (ViewGroup) null, false);
        ((TextView) viewInflate2.findViewById(R.id.title)).setText(str);
        ListView listView3 = (ListView) viewInflate2.findViewById(android.R.id.list);
        listView3.setAdapter((ListAdapter) new a(context, arrayList));
        listView3.setOnItemClickListener(this);
        listView3.setLongClickable(false);
        z0.e.l(listView3);
        Display defaultDisplay2 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Configuration configuration = context.getResources().getConfiguration();
        int width2 = context instanceof Activity ? ((Activity) context).getWindow().getDecorView().getWidth() : 0;
        if (width2 <= 0) {
            width2 = defaultDisplay2.getWidth();
        }
        if (point == null || (i6 = point.x) <= 0) {
            this.f1051k = 1;
        } else if (i6 < width2 / 4) {
            this.f1051k = 3;
        } else if (i6 > (width2 * 3) / 4) {
            this.f1051k = 5;
        } else {
            this.f1051k = 1;
        }
        boolean zK = t0.b.k(1536);
        if ((configuration.orientation == 1 || configuration.screenLayout < 3) && !zK) {
            if (f1046m <= 0) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay2.getRealMetrics(displayMetrics);
                int i11 = (int) (displayMetrics.densityDpi * 3.2f);
                f1046m = i11;
                float f2 = displayMetrics.heightPixels;
                float f3 = 0.9f * f2;
                if (f3 < i11) {
                    f1046m = (int) f3;
                }
                if (0.1f * f2 > f1046m) {
                    f1046m = (int) (f2 * 0.6f);
                }
            }
            if (f1046m > 0) {
                try {
                    typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.listPreferredItemHeightSmall});
                    try {
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
                        typedArrayObtainStyledAttributes.recycle();
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes != null) {
                            typedArrayObtainStyledAttributes.recycle();
                        }
                        dimensionPixelSize = 0;
                    } catch (Throwable th) {
                        th = th;
                        typedArray = typedArrayObtainStyledAttributes;
                        if (typedArray != null) {
                            typedArray.recycle();
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    typedArrayObtainStyledAttributes = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                if (dimensionPixelSize > 0) {
                    int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_header);
                    int i12 = f1046m - dimensionPixelSize2;
                    int i13 = ((i12 / dimensionPixelSize) * dimensionPixelSize) + dimensionPixelSize2;
                    f1046m = i13;
                    if (i12 % dimensionPixelSize > dimensionPixelSize / 2) {
                        f1046m = i13 + dimensionPixelSize;
                    }
                }
            }
            i4 = f1046m;
            i5 = 1;
        } else {
            i5 = this.f1051k;
            i4 = 0;
        }
        a1.f.a aVar = new a1.f.a();
        aVar.f161a = viewInflate2;
        aVar.f163c = i4;
        aVar.f164d = 0;
        aVar.f165e = i5;
        aVar.f166f = z0.e.c(context, true, null);
        aVar.f167g = !zK;
        aVar.f168h = this;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.bottomSheetStyle, typedValue, true);
        this.f1047g = new a1.f(context, typedValue.resourceId, aVar);
    }

    public final void u(a1.f fVar, int i2) {
        if (i2 == 1) {
            i.c cVar = this.f960a;
            if (cVar != null) {
                cVar.b(this);
            }
            g();
            return;
        }
        if (i2 == 3) {
            View viewFindViewById = fVar.findViewById(android.R.id.list);
            if (viewFindViewById instanceof ListView) {
                viewFindViewById.setVerticalScrollBarEnabled(true);
                viewFindViewById.scrollTo(0, 0);
                return;
            }
            return;
        }
        if (i2 == 2) {
            View viewFindViewById2 = fVar.findViewById(android.R.id.list);
            if (viewFindViewById2 instanceof ListView) {
                viewFindViewById2.setVerticalScrollBarEnabled(false);
            }
        }
    }

    public final void v() {
        Dialog dialog = this.f1047g;
        if (dialog != null) {
            i.s(dialog);
            return;
        }
        PopupWindow popupWindow = this.f1048h;
        if (popupWindow != null) {
            Context context = popupWindow.getContentView().getContext();
            if (context instanceof ZArchiver) {
                PopupWindow popupWindow2 = this.f1048h;
                View viewFindViewById = ((ZArchiver) context).findViewById(R.id.rlRoot);
                int i2 = this.f1051k;
                Point point = this.f1052l;
                popupWindow2.showAtLocation(viewFindViewById, i2, point.x, point.y);
            }
        }
    }

    public v(ru.zdevs.zarchiver.d dVar, Context context, ArrayList arrayList, String str, int i2, Point point) throws Throwable {
        this.f965f = dVar;
        this.f1049i = i2;
        this.f1050j = -1;
        this.f1051k = -1;
        t(context, arrayList, str, i2, point);
        c();
    }
}
