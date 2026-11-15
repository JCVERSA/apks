package com.transsion.xuanniao.account.center.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.util.Log;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.transsion.xuanniao.account.R;
import defpackage.jr7;

public class p {
    public Activity a;
    public b b;

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            p.this.a.startActivity(jr7.a(p.this.a));
        }
    }

    public interface b {
        void a(String str, String str2, String str3);
    }

    public p(Activity activity, b bVar) {
        this.a = activity;
        this.b = bVar;
    }

    public final String a(String str) {
        Cursor cursorQuery = this.a.getContentResolver().query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, null, "contact_id = " + str, null, null);
        if (cursorQuery == null) {
            return "";
        }
        try {
            if (cursorQuery.getCount() == 0) {
                return "";
            }
            cursorQuery.moveToNext();
            return cursorQuery.getString(cursorQuery.getColumnIndex("data1"));
        } finally {
            cursorQuery.close();
        }
    }

    public void b(int i, Intent intent) {
        if (i != 5002 || intent == null) {
            return;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.a.getContentResolver().query(intent.getData(), null, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() != 0) {
                    cursorQuery.moveToNext();
                    String string = cursorQuery.getString(cursorQuery.getColumnIndex("contact_id"));
                    String string2 = cursorQuery.getString(cursorQuery.getColumnIndex("display_name"));
                    String string3 = cursorQuery.getString(cursorQuery.getColumnIndex("data1"));
                    b bVar = this.b;
                    if (bVar != null) {
                        bVar.a(string2, string3, a(string));
                    }
                    if (cursorQuery.isClosed()) {
                        return;
                    }
                } else if (cursorQuery == null || cursorQuery.isClosed()) {
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (cursorQuery == null || cursorQuery.isClosed()) {
                    return;
                }
            }
            cursorQuery.close();
        } catch (Throwable th) {
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public void c(int i, int[] iArr) {
        if (i == 5001) {
            if (iArr.length != 0) {
                for (int i2 : iArr) {
                    if (i2 == 0) {
                    }
                }
                e();
                return;
            }
            f();
        }
    }

    public boolean d() {
        String[] strArr = {"android.permission.READ_CONTACTS"};
        if (ContextCompat.checkSelfPermission(this.a, "android.permission.READ_CONTACTS") == 0) {
            return true;
        }
        if (ActivityCompat.shouldShowRequestPermissionRationale(this.a, "android.permission.READ_CONTACTS")) {
            f();
            return false;
        }
        ActivityCompat.requestPermissions(this.a, strArr, 5001);
        return false;
    }

    public void e() {
        try {
            Intent intent = new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
            try {
                if (this.a.getPackageManager().queryIntentActivities(intent, 0).size() > 0) {
                    this.a.startActivityForResult(intent, 5002);
                }
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    public final void f() {
        new com.transsion.widgetslib.dialog.d.a(this.a, R.style.dialog_soft_input).k(this.a.getString(R.string.xn_authorization_note)).w(this.a.getString(R.string.xn_set), new a()).n(this.a.getString(R.string.xn_cancel), null).F();
    }
}
