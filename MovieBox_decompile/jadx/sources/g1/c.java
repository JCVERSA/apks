package g1;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class c extends a {

    private int f60562i;

    private int f60563j;

    private LayoutInflater f60564k;

    public c(Context context, int i10, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f60563j = i10;
        this.f60562i = i10;
        this.f60564k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override
    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f60564k.inflate(this.f60563j, viewGroup, false);
    }

    @Override
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f60564k.inflate(this.f60562i, viewGroup, false);
    }
}
