package g1;

import android.database.Cursor;
import android.widget.Filter;

class b extends Filter {

    a f60561a;

    interface a {
        void a(Cursor cursor);

        CharSequence b(Cursor cursor);

        Cursor c(CharSequence charSequence);

        Cursor d();
    }

    b(a aVar) {
        this.f60561a = aVar;
    }

    @Override
    public CharSequence convertResultToString(Object obj) {
        return this.f60561a.b((Cursor) obj);
    }

    @Override
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorC = this.f60561a.c(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorC != null) {
            filterResults.count = cursorC.getCount();
            filterResults.values = cursorC;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorD = this.f60561a.d();
        Object obj = filterResults.values;
        if (obj == null || obj == cursorD) {
            return;
        }
        this.f60561a.a((Cursor) obj);
    }
}
