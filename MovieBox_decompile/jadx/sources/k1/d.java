package k1;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

class d extends a {

    private Context f63486b;

    private Uri f63487c;

    d(a aVar, Context context, Uri uri) {
        super(aVar);
        this.f63486b = context;
        this.f63487c = uri;
    }

    private static void m(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    private static Uri n(Context context, Uri uri, String str, String str2) {
        try {
            return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public boolean a() {
        return b.a(this.f63486b, this.f63487c);
    }

    @Override
    public a b(String str) {
        Uri uriN = n(this.f63486b, this.f63487c, "vnd.android.document/directory", str);
        if (uriN != null) {
            return new d(this, this.f63486b, uriN);
        }
        return null;
    }

    @Override
    public a c(String str, String str2) {
        Uri uriN = n(this.f63486b, this.f63487c, str, str2);
        if (uriN != null) {
            return new d(this, this.f63486b, uriN);
        }
        return null;
    }

    @Override
    public boolean d() {
        try {
            return DocumentsContract.deleteDocument(this.f63486b.getContentResolver(), this.f63487c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean e() {
        return b.c(this.f63486b, this.f63487c);
    }

    @Override
    public String i() {
        return b.d(this.f63486b, this.f63487c);
    }

    @Override
    public Uri j() {
        return this.f63487c;
    }

    @Override
    public long k() {
        return b.f(this.f63486b, this.f63487c);
    }

    @Override
    public a[] l() {
        ContentResolver contentResolver = this.f63486b.getContentResolver();
        Uri uri = this.f63487c;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                while (cursorQuery.moveToNext()) {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.f63487c, cursorQuery.getString(0)));
                }
            } catch (Exception e10) {
                Log.w("DocumentFile", "Failed query: " + e10);
            }
            m(cursorQuery);
            Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            a[] aVarArr = new a[uriArr.length];
            for (int i10 = 0; i10 < uriArr.length; i10++) {
                aVarArr[i10] = new d(this, this.f63486b, uriArr[i10]);
            }
            return aVarArr;
        } catch (Throwable th2) {
            m(cursorQuery);
            throw th2;
        }
    }
}
