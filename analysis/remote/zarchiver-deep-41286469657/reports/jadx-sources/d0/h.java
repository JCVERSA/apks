package d0;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import ru.zdevs.zarchiver.R;

public abstract class h extends BaseAdapter implements View.OnClickListener, View.OnLongClickListener {

    public final LayoutInflater f553a;

    public final int f554b;

    public final int f555c;

    public final int f556d;

    public final int f557e;

    public final int f558f;

    public final int f559g;

    public d0.b f560h;

    public h0.h f561i;

    public int f562j;

    public int f563k;

    public boolean f564l;

    public q0.g f565m;

    public a f566n;

    public interface a {
        void d(int i2, int i3, boolean z2);
    }

    public static class b extends View.DragShadowBuilder {

        public final Drawable f567a;

        public b(ImageView imageView) {
            super(imageView);
            this.f567a = imageView.getDrawable();
        }

        @Override
        public final void onDrawShadow(Canvas canvas) {
            this.f567a.draw(canvas);
        }

        @Override
        public final void onProvideShadowMetrics(Point point, Point point2) {
            int width = getView().getWidth();
            int height = getView().getHeight();
            this.f567a.setBounds(0, 0, width, height);
            point.set(width, height);
            point2.set(width, height);
        }
    }

    public h(Context context, ru.zdevs.zarchiver.b bVar) {
        this.f553a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f554b = z0.c.c(context, R.attr.defaultTextColorFileList);
        this.f555c = z0.c.c(context, R.attr.defaultTextColorFileListSub);
        this.f558f = z0.c.c(context, R.attr.backgroundColorFileListItem);
        int iC = z0.c.c(context, R.attr.colorSelectHighlight);
        this.f557e = iC;
        if (t0.b.k(1536)) {
            this.f556d = -1;
        } else {
            this.f556d = (z0.c.e(iC) & 16777215) | (-301989888);
        }
        this.f559g = bVar.f1652b;
        this.f560h = new d0.b(0);
        this.f561i = new h0.h("/");
        this.f565m = null;
        this.f562j = 0;
        this.f563k = 1;
        this.f564l = false;
    }

    public final d a(int i2) {
        return this.f560h.b(i2);
    }

    public final Bitmap b(int i2, d dVar, g gVar, h0.h hVar, boolean z2) {
        byte bD = dVar.d();
        byte b2 = dVar.f544f;
        q0.g gVar2 = this.f565m;
        if (gVar2 == null) {
            return null;
        }
        if (bD == 4) {
            if (b2 != 126) {
                return null;
            }
            Bitmap bitmapA = gVar2.a(dVar, hVar, gVar, i2, z2, this.f564l);
            if (this.f564l && bitmapA == null) {
                this.f563k |= 2;
            }
            return bitmapA;
        }
        if (!f(bD, b2, dVar.f542d)) {
            return null;
        }
        Bitmap bitmapA2 = this.f565m.a(dVar, hVar, gVar, i2, z2, this.f564l);
        if (this.f564l && bitmapA2 == null) {
            this.f563k |= 2;
        }
        return bitmapA2;
    }

    public abstract int c();

    public final int[] d() {
        return this.f560h.d();
    }

    public boolean e() {
        return false;
    }

    public final boolean f(byte b2, byte b3, long j2) {
        if (b2 == 9 && (this.f562j & 65536) != 0) {
            return j2 > 10;
        }
        if (b2 == 14 && (this.f562j & 524288) != 0) {
            return j2 > 10 && ((double) j2) < 5.0E9d;
        }
        if (b2 == 7 && (this.f562j & 1048576) != 0) {
            return j2 > 512;
        }
        if (((b2 == 13 || b2 == 15) && (this.f562j & 262144) != 0) || ((b2 == 6 || b2 == 20) && (this.f562j & 131072) != 0)) {
            return ((double) j2) > 10.0d;
        }
        return b2 == 4 && b3 == 126;
    }

    public final void g() {
        boolean z2;
        d0.b bVar = this.f560h;
        synchronized (bVar) {
            z2 = bVar.f521a <= 0;
            bVar.f522b = 0L;
            bVar.f521a = bVar.size();
            for (d dVar : bVar) {
                if (dVar.h()) {
                    dVar.f545g = true;
                    long j2 = dVar.f542d;
                    if (j2 > 0) {
                        bVar.f522b += j2;
                    }
                } else {
                    bVar.f521a--;
                }
            }
            bVar.f523c = null;
        }
        a aVar = this.f566n;
        if (aVar != null && z2) {
            aVar.d(this.f559g, 1, true);
        }
        notifyDataSetChanged();
    }

    @Override
    public final int getCount() {
        return this.f560h.size();
    }

    @Override
    public final Object getItem(int i2) {
        return a(i2);
    }

    @Override
    public final long getItemId(int i2) {
        return i2;
    }

    public final void h() {
        boolean z2;
        d0.b bVar = this.f560h;
        synchronized (bVar) {
            z2 = bVar.f521a > 0;
            for (d dVar : bVar) {
                if (dVar.f545g) {
                    dVar.f545g = false;
                }
            }
            bVar.f521a = 0;
            bVar.f522b = 0L;
            bVar.f523c = null;
        }
        a aVar = this.f566n;
        if (aVar != null && z2) {
            aVar.d(this.f559g, 0, false);
        }
        notifyDataSetChanged();
    }

    public final void i() {
        boolean z2;
        d0.b bVar = this.f560h;
        int i2 = bVar.f521a > 0 ? 1 : 0;
        synchronized (bVar) {
            boolean z3 = bVar.f521a > 0;
            bVar.f521a = 0;
            bVar.f522b = 0L;
            for (d dVar : bVar) {
                if (dVar.h()) {
                    boolean z4 = !dVar.f545g;
                    dVar.f545g = z4;
                    if (z4) {
                        bVar.f521a++;
                        long j2 = dVar.f542d;
                        if (j2 > 0) {
                            bVar.f522b += j2;
                        }
                    }
                }
            }
            bVar.f523c = null;
            z2 = z3 != (bVar.f521a > 0);
        }
        a aVar = this.f566n;
        if (aVar != null && z2) {
            aVar.d(this.f559g, i2 ^ 1, i2 ^ 1);
        }
        notifyDataSetChanged();
    }

    public final boolean j(int i2, int i3) {
        d0.b bVar = this.f560h;
        int i4 = bVar.f521a;
        if (!bVar.h(i2, i3)) {
            return false;
        }
        a aVar = this.f566n;
        if (aVar != null) {
            int i5 = this.f560h.f521a;
            aVar.d(this.f559g, i5, i5 > i4);
        }
        notifyDataSetChanged();
        return true;
    }

    public final void k(boolean z2, boolean z3) {
        this.f564l = z2;
        if (z2) {
            if (z3) {
                this.f563k &= -5;
                return;
            } else {
                this.f563k |= 4;
                return;
            }
        }
        if (a0.c.K(this.f563k, 2)) {
            this.f563k &= -3;
            notifyDataSetChanged();
        }
    }

    public final void l(d0.b bVar, h0.h hVar, boolean z2) {
        this.f560h = bVar;
        this.f561i = hVar;
        if (hVar.o()) {
            int i2 = t0.b.f2089j & 4128768 & 2031616;
            this.f562j = i2;
            if (Build.VERSION.SDK_INT >= 24 && z2) {
                this.f562j = i2 | 4194304;
            }
        } else if (hVar.k()) {
            this.f562j = t0.b.f2089j & 4128768 & 65536;
        } else if (hVar.g() && t0.b.g(2097152)) {
            this.f562j = t0.b.f2089j & 4128768 & 458752;
        } else {
            this.f562j = 0;
        }
        this.f564l = false;
        this.f563k &= -7;
    }

    public void m(boolean z2) {
        if (z2) {
            this.f563k |= 1;
        } else {
            this.f563k &= -2;
        }
    }

    public void n(int i2, int i3) {
        q0.g gVar = this.f565m;
        if (gVar != null) {
            if (i3 < 6) {
                i3 = 6;
            } else {
                int i4 = gVar.f1397e;
                if (i3 > i4) {
                    i3 = i4;
                }
            }
            gVar.f1394b = i3;
        }
    }

    @Override
    public final void onClick(View view) {
        if (view == null || view.getTag() == null || this.f564l || (this.f563k & 1) == 0) {
            return;
        }
        j(((Integer) view.getTag()).intValue(), 2);
    }

    @Override
    public final boolean onLongClick(View view) {
        String quantityString;
        boolean z2;
        ImageView imageView = (ImageView) view;
        int iIntValue = ((Integer) view.getTag(R.id.info_size)).intValue();
        d dVar = (d) view.getTag(R.id.info_date);
        int[] iArrD = d();
        if (iArrD.length > 0) {
            int length = iArrD.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = true;
                    break;
                }
                if (iArrD[i2] == iIntValue) {
                    z2 = false;
                    break;
                }
                i2++;
            }
            if (z2) {
                return false;
            }
            quantityString = view.getContext().getResources().getQuantityString(R.plurals.FINFO_ITEM_COUNT, iArrD.length, Integer.valueOf(iArrD.length));
        } else {
            iArrD = new int[]{iIntValue};
            quantityString = dVar.f539a;
        }
        boolean z3 = dVar instanceof f;
        String[] strArr = new String[iArrD.length];
        int length2 = iArrD.length;
        ClipData.Item[] itemArr = new ClipData.Item[length2];
        for (int i3 = 0; i3 < iArrD.length; i3++) {
            d dVarA = a(iArrD[i3]);
            String str = dVarA.f539a;
            Uri uriB = v0.e.b(view.getContext(), new h0.h(str, z3 ? ((f) dVarA).f552k : this.f561i, dVarA.f540b), 0L, null);
            strArr[i3] = dVarA.f() ? "vnd.android.document/directory" : a0.c.x(str);
            itemArr[i3] = new ClipData.Item(uriB);
        }
        ClipData clipData = new ClipData(new ClipDescription(quantityString, strArr), itemArr[0]);
        for (int i4 = 1; i4 < length2; i4++) {
            clipData.addItem(itemArr[i4]);
        }
        imageView.startDrag(clipData, new b(imageView), null, 259);
        return true;
    }
}
