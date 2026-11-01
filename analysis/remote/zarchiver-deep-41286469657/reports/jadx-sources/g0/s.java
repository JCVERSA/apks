package g0;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.storage.StorageVolume;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.SettingsDlg;

public final class s extends i implements DialogInterface.OnClickListener {

    public AlertDialog f1037g;

    public final int f1038h;

    public int f1039i;

    public final x0.d.a f1040j;

    public final String f1041k;

    public final int f1042l;

    public StorageVolume f1043m;

    public s(ru.zdevs.zarchiver.d dVar, Context context, int i2, int i3, x0.d.a aVar, int i4, String str) {
        int i5;
        String str2;
        this.f965f = dVar;
        this.f1039i = i4;
        this.f1038h = i4;
        this.f1040j = aVar;
        this.f1041k = str;
        this.f1042l = i2 == 0 ? i3 == 0 ? 105 : 106 : i2;
        this.f1043m = null;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_fix_sd, (ViewGroup) null, false);
        builder.setView(viewInflate);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbDontShow);
        TextView textView = (TextView) viewInflate.findViewById(R.id.text);
        builder.setPositiveButton(R.string.BTN_OK, this);
        boolean z2 = true;
        if (i4 == 1 || i4 == 2 || i4 == 3) {
            builder.setNegativeButton(R.string.BTN_CANCEL, this);
            builder.setTitle(R.string.app_name);
            if (i4 == 1) {
                textView.setText(context.getString(R.string.FSD_ACCESS_TO_OBB_FOLDER));
            } else {
                int iC = x0.h.c(context);
                if (iC == 0) {
                    String str3 = (aVar == null || !a0.c.K(aVar.f2259f, 2)) ? "PHONE/" : "SD/";
                    textView.setText(context.getString(R.string.FSD_SELECT_PATH_TO_EXT_SD).replace("%1", str3 + str));
                } else {
                    boolean z3 = iC == 2;
                    StringBuilder sb = new StringBuilder();
                    sb.append(context.getString(R.string.FSD_ACCESS_FILES_DENIED));
                    sb.append(" ");
                    sb.append(context.getString(z3 ? R.string.FSD_REMOVE_FILES_UPDATE : R.string.FSD_USE_ROOT));
                    textView.setText(sb.toString());
                    this.f1039i = z3 ? 5 : 6;
                }
            }
            if (this.f1039i != 3) {
                checkBox.setVisibility(8);
            }
        } else {
            if (i4 != 4 || Build.VERSION.SDK_INT < 30) {
                if (i4 == 0 && (i5 = Build.VERSION.SDK_INT) >= 21) {
                    builder.setNegativeButton(R.string.BTN_CANCEL, this);
                    builder.setTitle(R.string.FSD_TTL_FIX_SD);
                    if (aVar == null) {
                        e();
                    } else {
                        if (i5 >= 24) {
                            Object obj = aVar.f2258e;
                            if (obj instanceof StorageVolume) {
                                this.f1043m = (StorageVolume) obj;
                            }
                        }
                        if (aVar.f2254a != null) {
                            str2 = "[" + aVar.f2254a + "]";
                        } else {
                            str2 = "";
                        }
                        if (this.f1043m == null || i5 >= 29) {
                            textView.setText(context.getString(R.string.FSD_SELECT_PATH_TO_EXT_SD).replace("%1", str2));
                        } else {
                            textView.setText(context.getString(R.string.FSD_ALLOW_ACCESS_TO_EXT_SD).replace("%1", str2));
                        }
                    }
                }
                c();
            }
            checkBox.setVisibility(8);
            builder.setTitle(R.string.app_name);
            textView.setText(context.getString(R.string.FSD_ACCESS_TO_ALL_STORAGE));
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30 && (i4 == 2 || i4 == 3)) {
            MenuItem menuItemFindItem = z0.e.i(builder, R.string.FSD_TTL_FIX_SD, R.menu.menu_sd_fix, new q(this)).findItem(R.id.bForceSelect);
            int i7 = this.f1039i;
            if (i7 != 6 && i7 != 5) {
                z2 = false;
            }
            menuItemFindItem.setVisible(z2);
        }
        builder.setView(viewInflate);
        builder.setCancelable(false);
        if (i6 >= 21) {
            builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        }
        AlertDialog alertDialogCreate = builder.create();
        this.f1037g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f1037g.setOnShowListener(new r(this));
        c();
    }

    public static void t(ru.zdevs.zarchiver.d dVar, Context context, int i2, int i3, x0.d.a aVar, int i4, String str) {
        ZArchiver zArchiverZ;
        if (i4 == 3 && !t0.b.h(256) && x0.h.c(context) == 0 && (zArchiverZ = ZArchiver.z()) != null) {
            if (i2 == 0) {
                i2 = i3 == 0 ? 105 : 106;
            }
            x0.h.h(zArchiverZ, aVar, str, i2);
        } else {
            AlertDialog alertDialog = new s(dVar, context, i2, i3, aVar, i4, str).f1037g;
            if (alertDialog != null) {
                i.s(alertDialog);
            }
        }
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f1037g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f1037g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0136  */
    /* JADX WARN: Code duplicated, block: B:62:0x0141  */
    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        CheckBox checkBox;
        boolean z2 = true;
        if (i2 == -1) {
            ZArchiver zArchiverZ = ZArchiver.z();
            if (zArchiverZ != null) {
                int i3 = this.f1039i;
                if ((i3 != 2 && i3 != 1 && i3 != 3) || Build.VERSION.SDK_INT < 26) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 30 && i3 == 4) {
                        try {
                            try {
                                zArchiverZ.startActivityForResult(new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", Uri.fromParts("package", "ru.zdevs.zarchiver", null)), 107);
                            } catch (Exception unused) {
                                zArchiverZ.startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
                            }
                        } catch (ActivityNotFoundException unused2) {
                            ZApp.j("Failed to request the ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION");
                        }
                    } else if (i3 == 5) {
                        PackageInfo packageInfoB = x0.h.b(zArchiverZ);
                        if (packageInfoB != null) {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.parse("package:" + packageInfoB.packageName));
                            x0.h.j(zArchiverZ, intent, 113);
                        }
                    } else if (i3 == 6) {
                        Intent intent2 = new Intent(zArchiverZ, (Class<?>) SettingsDlg.class);
                        intent2.putExtra("settings", "root");
                        intent2.putExtra("title", zArchiverZ.getString(R.string.OPT_SECTION_ROOT));
                        h1.h.e(zArchiverZ, intent2);
                    } else if (i4 >= 21) {
                        StorageVolume storageVolume = this.f1043m;
                        if (storageVolume == null) {
                            x0.h.h(zArchiverZ, this.f1040j, null, this.f1042l);
                        } else if (i4 < 29) {
                            x0.h.e(zArchiverZ, storageVolume, this.f1042l);
                        } else {
                            x0.h.i(zArchiverZ, storageVolume, this.f1042l);
                        }
                    }
                } else if (i3 == 1) {
                    w0.c.h(new h1.g(zArchiverZ, new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.fromParts("package", "ru.zdevs.zarchiver", null)), 111, null));
                } else {
                    x0.h.h(zArchiverZ, this.f1040j, this.f1041k, this.f1042l);
                }
                z2 = false;
            } else {
                z2 = false;
            }
        }
        AlertDialog alertDialog = this.f1037g;
        if (alertDialog != null && (checkBox = (CheckBox) alertDialog.findViewById(R.id.cbDontShow)) != null && checkBox.isChecked()) {
            if (this.f1038h != 3 || z2) {
                x0.d.a aVar = this.f1040j;
                if (aVar != null && z2) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ZApp.f1434c);
                    String string = defaultSharedPreferences.getString("sNonRequestPermission", null);
                    if (string != null) {
                        if (!string.contains("~!@" + aVar.a() + "~!@")) {
                            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                            StringBuilder sb = new StringBuilder();
                            if (string == null) {
                                string = "~!@";
                            }
                            sb.append(string);
                            sb.append(aVar.a());
                            sb.append("~!@");
                            editorEdit.putString("sNonRequestPermission", sb.toString());
                            editorEdit.apply();
                        }
                    } else {
                        SharedPreferences.Editor editorEdit2 = defaultSharedPreferences.edit();
                        StringBuilder sb2 = new StringBuilder();
                        if (string == null) {
                            string = "~!@";
                        }
                        sb2.append(string);
                        sb2.append(aVar.a());
                        sb2.append("~!@");
                        editorEdit2.putString("sNonRequestPermission", sb2.toString());
                        editorEdit2.apply();
                    }
                }
            } else {
                t0.b.o(this.f1037g.getContext(), 256);
            }
        }
        e();
    }
}
