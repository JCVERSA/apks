package ru.zdevs.zarchiver.ui.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.util.AttributeSet;
import c0.g;
import e0.b;
import java.util.ArrayList;

public class Compression7zLevelPreference extends ListPreference {
    public Compression7zLevelPreference(Context context) {
        super(context);
    }

    @Override
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        g gVar = new g(builder.getContext());
        ArrayList arrayList = gVar.f417b;
        arrayList.clear();
        ArrayList arrayList2 = gVar.f418c;
        arrayList2.clear();
        for (CharSequence charSequence : getEntries()) {
            arrayList.add(charSequence.toString());
            arrayList2.add(Boolean.TRUE);
        }
        SharedPreferences sharedPreferences = getSharedPreferences();
        if (sharedPreferences == null || !sharedPreferences.getBoolean("iExtIgnoreRAMLimit", false)) {
            int iF = b.f(false);
            if (iF < 9) {
                gVar.a(5);
            }
            if (iF < 7) {
                gVar.a(4);
            }
            if (iF < 5) {
                gVar.a(3);
            }
            if (iF < 3) {
                gVar.a(2);
            }
        }
        builder.setAdapter(gVar, null);
        super.onPrepareDialogBuilder(builder);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public Compression7zLevelPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
