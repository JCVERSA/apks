package g1;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;

public abstract class a extends BaseAdapter implements Filterable, g1.b.a {

    protected boolean f60551a;

    protected boolean f60552b;

    protected Cursor f60553c;

    protected Context f60554d;

    protected int f60555e;

    protected C0736a f60556f;

    protected DataSetObserver f60557g;

    protected g1.b f60558h;

    private class C0736a extends ContentObserver {
        C0736a() {
            super(new Handler());
        }

        @Override
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override
        public void onChange(boolean z10) {
            a.this.i();
        }
    }

    private class b extends DataSetObserver {
        b() {
        }

        @Override
        public void onChanged() {
            a aVar = a.this;
            aVar.f60551a = true;
            aVar.notifyDataSetChanged();
        }

        @Override
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f60551a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z10) {
        f(context, cursor, z10 ? 1 : 2);
    }

    public void a(Cursor cursor) {
        Cursor cursorJ = j(cursor);
        if (cursorJ != null) {
            cursorJ.close();
        }
    }

    public abstract CharSequence b(Cursor cursor);

    @Override
    public Cursor d() {
        return this.f60553c;
    }

    public abstract void e(View view, Context context, Cursor cursor);

    void f(Context context, Cursor cursor, int i10) {
        if ((i10 & 1) == 1) {
            i10 |= 2;
            this.f60552b = true;
        } else {
            this.f60552b = false;
        }
        boolean z10 = cursor != null;
        this.f60553c = cursor;
        this.f60551a = z10;
        this.f60554d = context;
        this.f60555e = z10 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i10 & 2) == 2) {
            this.f60556f = new C0736a();
            this.f60557g = new b();
        } else {
            this.f60556f = null;
            this.f60557g = null;
        }
        if (z10) {
            C0736a c0736a = this.f60556f;
            if (c0736a != null) {
                cursor.registerContentObserver(c0736a);
            }
            DataSetObserver dataSetObserver = this.f60557g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract View g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override
    public int getCount() {
        Cursor cursor;
        if (!this.f60551a || (cursor = this.f60553c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f60551a) {
            return null;
        }
        this.f60553c.moveToPosition(i10);
        if (view == null) {
            view = g(this.f60554d, this.f60553c, viewGroup);
        }
        e(view, this.f60554d, this.f60553c);
        return view;
    }

    @Override
    public Filter getFilter() {
        if (this.f60558h == null) {
            this.f60558h = new g1.b(this);
        }
        return this.f60558h;
    }

    @Override
    public Object getItem(int i10) {
        Cursor cursor;
        if (!this.f60551a || (cursor = this.f60553c) == null) {
            return null;
        }
        cursor.moveToPosition(i10);
        return this.f60553c;
    }

    @Override
    public long getItemId(int i10) {
        Cursor cursor;
        if (this.f60551a && (cursor = this.f60553c) != null && cursor.moveToPosition(i10)) {
            return this.f60553c.getLong(this.f60555e);
        }
        return 0L;
    }

    @Override
    public View getView(int i10, View view, ViewGroup viewGroup) {
        if (!this.f60551a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (this.f60553c.moveToPosition(i10)) {
            if (view == null) {
                view = h(this.f60554d, this.f60553c, viewGroup);
            }
            e(view, this.f60554d, this.f60553c);
            return view;
        }
        throw new IllegalStateException("couldn't move cursor to position " + i10);
    }

    public abstract View h(Context context, Cursor cursor, ViewGroup viewGroup);

    protected void i() {
        Cursor cursor;
        if (!this.f60552b || (cursor = this.f60553c) == null || cursor.isClosed()) {
            return;
        }
        this.f60551a = this.f60553c.requery();
    }

    public Cursor j(Cursor cursor) {
        Cursor cursor2 = this.f60553c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0736a c0736a = this.f60556f;
            if (c0736a != null) {
                cursor2.unregisterContentObserver(c0736a);
            }
            DataSetObserver dataSetObserver = this.f60557g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f60553c = cursor;
        if (cursor != null) {
            C0736a c0736a2 = this.f60556f;
            if (c0736a2 != null) {
                cursor.registerContentObserver(c0736a2);
            }
            DataSetObserver dataSetObserver2 = this.f60557g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f60555e = cursor.getColumnIndexOrThrow("_id");
            this.f60551a = true;
            notifyDataSetChanged();
        } else {
            this.f60555e = -1;
            this.f60551a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
