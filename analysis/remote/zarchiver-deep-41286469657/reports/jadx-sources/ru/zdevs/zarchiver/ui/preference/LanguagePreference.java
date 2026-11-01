package ru.zdevs.zarchiver.ui.preference;

import android.R;
import android.app.AlertDialog;
import android.app.LocaleManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.LocaleList;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import java.util.Locale;

public class LanguagePreference extends DialogPreference {

    public final LocaleManager f1959a;

    public final LocaleList f1960b;

    public Locale f1961c;

    public class a implements DialogInterface.OnClickListener {

        public final b f1962a;

        public a(b bVar) {
            this.f1962a = bVar;
        }

        @Override
        public final void onClick(DialogInterface dialogInterface, int i2) {
            Locale localeA = this.f1962a.a(i2);
            LanguagePreference languagePreference = LanguagePreference.this;
            languagePreference.f1961c = localeA;
            languagePreference.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    public static class b extends BaseAdapter {

        public final LayoutInflater f1964a;

        public final LocaleList f1965b;

        public class a {

            public CheckedTextView f1966a;
        }

        public b(Context context, LocaleList localeList) {
            this.f1964a = (LayoutInflater) context.getSystemService("layout_inflater");
            this.f1965b = localeList;
        }

        public final Locale a(int i2) {
            if (i2 == 0) {
                return null;
            }
            return this.f1965b.get(i2 - 1);
        }

        @Override
        public final int getCount() {
            return this.f1965b.size() + 1;
        }

        @Override
        public final Object getItem(int i2) {
            if (i2 == 0) {
                return null;
            }
            return this.f1965b.get(i2 - 1);
        }

        @Override
        public final long getItemId(int i2) {
            return i2;
        }

        @Override
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = this.f1964a.inflate(R.layout.simple_list_item_single_choice, viewGroup, false);
                aVar = new a();
                aVar.f1966a = (CheckedTextView) view.findViewById(R.id.text1);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            aVar.f1966a.setText(LanguagePreference.a(a(i2)));
            return view;
        }
    }

    public LanguagePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LocaleManager localeManager = (LocaleManager) context.getSystemService("locale");
        this.f1959a = localeManager;
        this.f1960b = LocaleList.forLanguageTags("ar,az,bg,zh_CN,zh_TW,hr,cs,da,en,fr,ka_GE,de,el,hi,hu,in,it,ja,ky,ko,lt,fa,pl,pt_BR,ru,sr,sk,es,th_TH,tr,ug,uk,uz,vi".replace("_", "-"));
        LocaleList applicationLocales = localeManager.getApplicationLocales();
        this.f1961c = applicationLocales.isEmpty() ? null : applicationLocales.get(0);
    }

    public static String a(Locale locale) {
        return locale == null ? "Default" : locale.getDisplayName(new Locale("en"));
    }

    @Override
    public final void onBindView(View view) {
        setSummary(a(this.f1961c));
        super.onBindView(view);
    }

    @Override
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        Locale locale = this.f1961c;
        this.f1959a.setApplicationLocales(locale == null ? LocaleList.getEmptyLocaleList() : LocaleList.forLanguageTags(locale.toLanguageTag()));
        setSummary(a(this.f1961c));
        notifyChanged();
    }

    @Override
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        Context context = getContext();
        LocaleList localeList = this.f1960b;
        b bVar = new b(context, localeList);
        builder.setSingleChoiceItems(bVar, localeList.indexOf(this.f1961c) + 1, new a(bVar));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
