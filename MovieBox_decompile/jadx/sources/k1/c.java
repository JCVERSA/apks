package k1;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;

class c extends a {

    private Context f63484b;

    private Uri f63485c;

    c(a aVar, Context context, Uri uri) {
        super(aVar);
        this.f63484b = context;
        this.f63485c = uri;
    }

    @Override
    public boolean a() {
        return b.a(this.f63484b, this.f63485c);
    }

    @Override
    public a b(String str) {
        throw new UnsupportedOperationException();
    }

    @Override
    public a c(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean d() {
        try {
            return DocumentsContract.deleteDocument(this.f63484b.getContentResolver(), this.f63485c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public boolean e() {
        return b.c(this.f63484b, this.f63485c);
    }

    @Override
    public String i() {
        return b.d(this.f63484b, this.f63485c);
    }

    @Override
    public Uri j() {
        return this.f63485c;
    }

    @Override
    public long k() {
        return b.f(this.f63484b, this.f63485c);
    }

    @Override
    public a[] l() {
        throw new UnsupportedOperationException();
    }
}
