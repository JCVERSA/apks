package ru.zdevs.zarchiver.ui.preference;

import a0.c;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import c0.e;
import h0.h;
import java.io.File;
import java.util.Locale;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ui.FSSelect;
import x0.d;

public class FileSelectPreference extends DialogPreference implements FSSelect.b, FSSelect.c, View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    public final int f1949a;

    public final String f1950b;

    public View f1951c;

    public FSSelect f1952d;

    public ListPopupWindow f1953e;

    public int f1954f;

    public boolean f1955g;

    public String[] f1956h;

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            e eVar;
            if (adapterView == null || (eVar = (e) adapterView.getItemAtPosition(i2)) == null) {
                return;
            }
            FileSelectPreference fileSelectPreference = FileSelectPreference.this;
            fileSelectPreference.f1952d.setPath(new h(eVar.f411c));
            ListPopupWindow listPopupWindow = fileSelectPreference.f1953e;
            if (listPopupWindow != null) {
                listPopupWindow.dismiss();
                fileSelectPreference.f1953e = null;
            }
        }
    }

    public class b implements PopupWindow.OnDismissListener {
        public b() {
        }

        @Override
        public final void onDismiss() {
            FileSelectPreference.this.f1953e = null;
        }
    }

    public FileSelectPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f11c);
        if (typedArrayObtainStyledAttributes != null) {
            this.f1949a = typedArrayObtainStyledAttributes.getInteger(1, 3);
            this.f1950b = typedArrayObtainStyledAttributes.getString(0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.f1949a = 3;
            this.f1950b = null;
        }
        int i2 = this.f1949a;
        if (i2 == 3 || i2 == 0) {
            setPositiveButtonText((CharSequence) null);
        }
        String str = this.f1950b;
        if (str == null || !str.contains("$SD$")) {
            return;
        }
        this.f1950b = this.f1950b.replace("$SD$", d.m().f2255b);
    }

    public final void a(int i2) {
        File file = new File(this.f1956h[i2]);
        if (!file.exists()) {
            this.f1956h[i2] = d.m().f2255b;
            this.f1952d.setPath(new h(this.f1956h[i2]));
        } else if (file.isDirectory()) {
            this.f1952d.setPath(new h(file.getAbsolutePath()));
        } else {
            this.f1952d.setPath(new h(file.getParentFile().getAbsolutePath()));
        }
    }

    public final void b(RadioGroup radioGroup, int i2) {
        ((RadioButton) radioGroup.getChildAt(i2)).setText(String.format(Locale.getDefault(), "%d: %s", Integer.valueOf(i2 + 1), this.f1956h[i2]));
    }

    @Override
    public final void onBindView(View view) {
        String persistedString = getPersistedString(this.f1950b);
        if (persistedString != null) {
            setSummary(persistedString.replace(";#;", "\n"));
        }
        super.onBindView(view);
    }

    @Override
    public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        RadioGroup radioGroup = (RadioGroup) this.f1951c.findViewById(R.id.tabSelection);
        if (compoundButton.getId() != R.id.samePath) {
            if (z2) {
                for (int i2 = 0; i2 < radioGroup.getChildCount(); i2++) {
                    RadioButton radioButton = (RadioButton) radioGroup.getChildAt(i2);
                    if (radioButton == compoundButton) {
                        this.f1954f = i2;
                        a(i2);
                    } else {
                        radioButton.setChecked(false);
                    }
                }
                return;
            }
            return;
        }
        this.f1955g = z2;
        int i3 = 0;
        while (i3 < radioGroup.getChildCount()) {
            RadioButton radioButton2 = (RadioButton) radioGroup.getChildAt(i3);
            if (this.f1955g) {
                radioButton2.setVisibility(8);
            } else {
                if (i3 != 0) {
                    b(radioGroup, i3);
                }
                radioButton2.setSelected(i3 == 0);
                radioButton2.setVisibility(0);
            }
            i3++;
        }
    }

    @Override
    public void onClick(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.rlNavigation);
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        this.f1953e = listPopupWindow;
        listPopupWindow.setAnchorView(relativeLayout);
        this.f1953e.setAdapter(new c0.d(view.getContext(), true, false));
        this.f1953e.setContentWidth((relativeLayout.getWidth() - relativeLayout.getPaddingLeft()) - relativeLayout.getPaddingRight());
        this.f1953e.setOnItemClickListener(new a());
        this.f1953e.setOnDismissListener(new b());
        this.f1953e.setModal(true);
        this.f1953e.show();
    }

    @Override
    public final View onCreateDialogView() {
        super.onCreateDialogView();
        if (this.f1949a == 2 && getSharedPreferences().getBoolean("iTwoTab", false)) {
            this.f1956h = new String[2];
        } else {
            this.f1956h = new String[1];
        }
        this.f1954f = 0;
        this.f1955g = true;
        this.f1956h[0] = getPersistedString(this.f1950b);
        String[] strArr = this.f1956h;
        if (strArr[0] == null) {
            strArr[0] = d.m().f2255b;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_select_file, (ViewGroup) null, false);
        this.f1951c = viewInflate;
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.samePath);
        RadioGroup radioGroup = (RadioGroup) this.f1951c.findViewById(R.id.tabSelection);
        String[] strArr2 = this.f1956h;
        if (strArr2.length > 1) {
            if (strArr2[0].contains(";#;")) {
                String[] strArrG = v0.h.g(this.f1956h[0]);
                if (strArrG.length == 2) {
                    String[] strArr3 = this.f1956h;
                    strArr3[0] = strArrG[0];
                    strArr3[1] = strArrG[1];
                    this.f1955g = false;
                }
            }
            String[] strArr4 = this.f1956h;
            if (strArr4[1] == null) {
                strArr4[1] = strArr4[0];
            }
            checkBox.setChecked(this.f1955g);
            checkBox.setOnCheckedChangeListener(this);
            int i2 = 0;
            while (i2 < this.f1956h.length) {
                RadioButton radioButton = new RadioButton(radioGroup.getContext());
                radioButton.setChecked(i2 == 0);
                radioButton.setVisibility(this.f1955g ? 8 : 0);
                radioButton.setOnCheckedChangeListener(this);
                radioGroup.addView(radioButton);
                b(radioGroup, i2);
                i2++;
            }
        } else {
            checkBox.setVisibility(8);
            radioGroup.setVisibility(8);
        }
        ((RelativeLayout) this.f1951c.findViewById(R.id.rlNavigation)).setOnClickListener(this);
        FSSelect fSSelect = (FSSelect) this.f1951c.findViewById(R.id.fs_select);
        this.f1952d = fSSelect;
        fSSelect.setOnFileClickListener(this);
        this.f1952d.setOnPathChangeListener(this);
        this.f1952d.setEmptyText((TextView) this.f1951c.findViewById(R.id.tv_empty_list));
        this.f1952d.d();
        a(this.f1954f);
        return this.f1951c;
    }

    @Override
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        ListPopupWindow listPopupWindow = this.f1953e;
        String strR = null;
        if (listPopupWindow != null) {
            listPopupWindow.dismiss();
            this.f1953e = null;
        }
        this.f1952d.e();
        if (z2) {
            Object[] objArr = this.f1956h;
            if (objArr.length <= 1 || objArr[0].equals(objArr[1]) || this.f1955g) {
                String[] strArr = this.f1956h;
                strR = this.f1952d.getPath().r();
                strArr[0] = strR;
            } else {
                for (String str : this.f1956h) {
                    strR = strR == null ? str : strR + ";#;" + str;
                }
            }
            if (shouldPersist()) {
                persistString(strR);
            }
            setSummary(strR);
            notifyChanged();
        }
    }

    @Override
    public void onFileSelect(String str, String str2, int i2) {
        String strI = c.i(str, str2);
        int i3 = this.f1949a;
        if (i3 == 1 || i3 == 2) {
            return;
        }
        if (i3 == 0) {
            if (i2 != 9) {
                return;
            }
            try {
                Drawable drawableCreateFromPath = Drawable.createFromPath(strI);
                if ((drawableCreateFromPath instanceof BitmapDrawable) && ((BitmapDrawable) drawableCreateFromPath).getBitmap().getByteCount() > Math.max(c.i0(104857600, v0.b.b("ro.hwui.max_texture_allocation_size")), 104857600) / 3) {
                    ZApp.j("The image is too big!");
                    return;
                }
            } catch (Exception unused) {
                ZApp.j("The image is not correct");
                return;
            }
        }
        this.f1956h[0] = strI;
        if (shouldPersist()) {
            persistString(this.f1956h[0]);
        }
        setSummary(this.f1956h[0]);
        notifyChanged();
        getDialog().dismiss();
    }

    @Override
    public void onPathChange(h hVar) {
        int i2;
        String strR = hVar.r();
        this.f1956h[this.f1954f] = strR;
        int iLastIndexOf = strR.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && strR.length() > (i2 = iLastIndexOf + 1)) {
            String strSubstring2 = strR.substring(i2);
            strSubstring = iLastIndexOf > 0 ? strR.substring(0, iLastIndexOf) : "/";
            strR = strSubstring2;
        }
        TextView textView = (TextView) this.f1951c.findViewById(R.id.nTitle);
        TextView textView2 = (TextView) this.f1951c.findViewById(R.id.nSubtitle);
        if (textView2 != null) {
            try {
                textView2.setText(strSubstring);
            } catch (ArrayIndexOutOfBoundsException unused) {
                textView2.setEllipsize(null);
                textView2.setGravity(8388613);
                textView2.setText(strSubstring);
            }
        }
        if (textView != null) {
            textView.setText(strR);
        }
        if (this.f1956h.length > 1) {
            RadioGroup radioGroup = (RadioGroup) this.f1951c.findViewById(R.id.tabSelection);
            if (this.f1954f < radioGroup.getChildCount()) {
                b(radioGroup, this.f1954f);
            }
        }
    }
}
