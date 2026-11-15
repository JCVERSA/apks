package defpackage;

import android.content.Context;
import com.transsion.widgetslib.R;
import java.util.ArrayList;
import java.util.List;

public class p7a {
    public Context c;
    public boolean d;
    public int e;
    public int f;
    public int h;
    public boolean g = true;
    public int a = 0;
    public List b = new ArrayList(2);

    public p7a(Context context, boolean z) {
        this.c = context;
        this.d = z;
        if (this.d) {
            this.e = this.c.getResources().getDimensionPixelSize(R.dimen.os_dimen_sm_menu_padding);
            this.f = this.c.getResources().getDimensionPixelSize(R.dimen.os_dimen_sm_menu_item_padding);
            this.h = this.c.getResources().getDimensionPixelSize(R.dimen.os_dimen_sm_menu_item_circle_radius);
        }
    }

    public boolean a() {
        return this.d;
    }

    public boolean b() {
        return this.g;
    }

    public int getAdapterPosition() {
        List list = this.b;
        if (list == null || list.size() <= 0) {
            return -1;
        }
        ubc.a(this.b.get(0));
        throw null;
    }

    public Context getContext() {
        return this.c;
    }

    public int getHiosCircleRadius() {
        return this.h;
    }

    public float getHiosSpaceRatio() {
        if (this.b.size() <= 0) {
            return 0.0f;
        }
        return ((this.e + this.f) * 2.0f) / getMenuTotalWidth();
    }

    public int getMenuItemPadding() {
        return this.f;
    }

    public List<u7a> getMenuItems() {
        return this.b;
    }

    public int getMenuPadding() {
        return this.e;
    }

    public int getMenuTotalWidth() {
        if (this.d && b()) {
            if (this.b.size() > 0) {
                ubc.a(this.b.get(0));
                throw null;
            }
        } else if (this.b.size() > 0) {
            ubc.a(this.b.get(0));
            throw null;
        }
        return 0;
    }

    public int getOrientation() {
        return this.a;
    }

    public void setContext(Context context) {
        this.c = context;
    }

    public void setIsMenuImageType(boolean z) {
        this.g = z;
    }

    public void setOrientation(int i) {
        this.a = i;
    }
}
