package d0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

public final class c extends h implements SectionIndexer {

    public static final Object[] f524t = new Object[0];

    public final int f525o;

    public final int f526p;

    public final boolean f527q;

    public h0.h f528r;

    public d0.a f529s;

    public static class a implements g {

        public final View f530a;

        public final TextView f531b;

        public final ImageView f532c;

        public final TextView f533d;

        public final TextView f534e;

        public final int f535f;

        public final boolean f536g;

        public a(View view, int i2, boolean z2) {
            this.f530a = view;
            TextView textView = (TextView) view.findViewById(R.id.label);
            this.f531b = textView;
            z0.f.g(textView);
            TextView textView2 = (TextView) view.findViewById(R.id.info_size);
            z0.f.g(textView2);
            if (textView2 == null || i2 == R.layout.item_file_detail || t0.b.g(4096)) {
                this.f534e = textView2;
            } else {
                textView2.setVisibility(8);
                this.f534e = null;
            }
            TextView textView3 = (TextView) view.findViewById(R.id.info_date);
            z0.f.g(textView3);
            if (textView3 == null || i2 == R.layout.item_file_detail || t0.b.g(8192)) {
                this.f533d = textView3;
            } else {
                textView3.setVisibility(8);
                this.f533d = null;
            }
            this.f532c = (ImageView) view.findViewById(R.id.icon);
            this.f535f = i2;
            this.f536g = z2;
        }

        @Override
        public final boolean a(d dVar, Bitmap bitmap, int i2) {
            ImageView imageView = this.f532c;
            if (((Integer) imageView.getTag(R.id.icon)).intValue() != i2) {
                return false;
            }
            if (bitmap != null) {
                if (t0.b.l(4)) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                }
                if (dVar.d() == 4 || !t0.b.l(32)) {
                    imageView.setImageBitmap(bitmap);
                } else {
                    z0.f.c(imageView, bitmap);
                }
            }
            TextView textView = this.f534e;
            if (textView != null && this.f535f == R.layout.item_file_detail) {
                textView.setText(dVar.c(true));
            }
            return true;
        }
    }

    public c(Context context, ru.zdevs.zarchiver.b bVar, h hVar) {
        super(context, bVar);
        if (hVar instanceof c) {
            this.f528r = ((c) hVar).f528r;
        } else {
            this.f528r = new h0.h("");
        }
        this.f529s = null;
        int i2 = bVar.f1657g;
        this.f525o = i2;
        int i3 = t0.b.f2090k;
        this.f526p = i3;
        if (i2 == R.layout.item_file_grid) {
            this.f526p = (int) (i3 * 1.6f);
        }
        this.f527q = i2 == R.layout.item_file_detail || (i2 == R.layout.item_file_compact && i3 < z0.c.a(((int) (((float) t0.b.f2091l) * 2.2f)) + 2));
    }

    @Override
    public final int c() {
        return this.f525o;
    }

    @Override
    public final boolean e() {
        return this.f525o == R.layout.item_file_grid;
    }

    @Override
    public final int getPositionForSection(int i2) {
        Integer num;
        d0.a aVar = this.f529s;
        if (aVar == null) {
            return 0;
        }
        Integer[] numArr = aVar.f519a;
        if (i2 < numArr.length && (num = numArr[i2]) != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override
    public final int getSectionForPosition(int i2) {
        if (this.f529s == null) {
            return 0;
        }
        int i3 = 1;
        while (true) {
            Integer[] numArr = this.f529s.f519a;
            if (i3 >= numArr.length) {
                return 0;
            }
            if (numArr[i3].intValue() > i2) {
                return i3 - 1;
            }
            i3++;
        }
    }

    @Override
    public final Object[] getSections() {
        d0.a aVar = this.f529s;
        return aVar == null ? f524t : aVar.f520b;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0150  */
    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        String string;
        d dVarA = a(i2);
        if (view == null) {
            LayoutInflater layoutInflater = this.f553a;
            int i3 = this.f525o;
            view = layoutInflater.inflate(i3, viewGroup, false);
            aVar = new a(view, i3, this.f527q);
            ImageView imageView = aVar.f532c;
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            int i4 = this.f526p;
            layoutParams.width = i4;
            layoutParams.height = i4;
            TextView textView = aVar.f531b;
            if (i3 != R.layout.item_file_grid) {
                textView.setTextSize(t0.b.f2091l);
                if (i3 == R.layout.item_file_detail) {
                    textView.setMinHeight(t0.b.f2090k - z0.c.a(t0.b.f2091l));
                } else {
                    textView.setMinHeight(t0.b.f2090k);
                }
                TextView textView2 = aVar.f534e;
                if (textView2 != null) {
                    textView2.setTextSize(t0.b.f2091l * 0.62f);
                }
                TextView textView3 = aVar.f533d;
                if (textView3 != null) {
                    textView3.setTextSize(t0.b.f2091l * 0.6f);
                }
                imageView.setOnClickListener(this);
            } else {
                textView.setTextSize(t0.b.f2091l * 0.8f);
                imageView.setClickable(false);
            }
            imageView.setLayoutParams(layoutParams);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
            aVar.f532c.animate().cancel();
            ImageView imageView2 = aVar.f532c;
            imageView2.setAlpha(1.0f);
            imageView2.setTag(R.id.icon, 0);
        }
        int iE = dVarA.e(this.f528r);
        Bitmap bitmapB = b(iE, dVarA, aVar, this.f528r, true);
        Integer numValueOf = Integer.valueOf(i2);
        ImageView imageView3 = aVar.f532c;
        imageView3.setTag(numValueOf);
        imageView3.setTag(R.id.icon, Integer.valueOf(iE));
        aVar.f531b.setText(dVarA.f539a);
        if (t0.b.l(4)) {
            imageView3.setScaleType(bitmapB == null ? ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP);
        }
        if (bitmapB == null) {
            imageView3.setImageBitmap(z0.b.c(imageView3.getContext(), z0.b.a(dVarA.d()), dVarA.f544f));
        } else {
            imageView3.setImageBitmap(bitmapB);
        }
        int i5 = aVar.f535f;
        if (i5 != R.layout.item_file_grid) {
            imageView3.setClickable(dVarA.h());
            TextView textView4 = aVar.f533d;
            if (textView4 != null) {
                boolean zG = t0.b.g(16384);
                if (dVarA.g()) {
                    string = "";
                } else {
                    long j2 = dVarA.f541c;
                    if (j2 == -1) {
                        string = "";
                    } else {
                        DateFormat dateFormat = d.f537i;
                        if (zG) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(dateFormat.format(Long.valueOf(j2)));
                            sb.append(aVar.f536g ? " " : "\n");
                            sb.append(d.f538j.format(Long.valueOf(j2)));
                            string = sb.toString();
                        } else {
                            string = dateFormat.format(Long.valueOf(j2));
                        }
                    }
                }
                textView4.setText(string);
            }
            TextView textView5 = aVar.f534e;
            if (textView5 != null) {
                textView5.setText(dVarA.c(i5 == R.layout.item_file_detail));
            }
        }
        boolean z2 = dVarA.f545g;
        TextView textView6 = aVar.f534e;
        TextView textView7 = aVar.f533d;
        View view2 = aVar.f530a;
        TextView textView8 = aVar.f531b;
        if (z2) {
            int i6 = this.f556d;
            textView8.setTextColor(i6);
            view2.setBackgroundColor(this.f557e);
            if (textView7 != null) {
                textView7.setTextColor(i6);
            }
            if (textView6 != null) {
                textView6.setTextColor(i6);
            }
        } else {
            textView8.setTextColor(this.f554b);
            view2.setBackgroundColor(this.f558f);
            int i7 = this.f555c;
            if (textView7 != null) {
                textView7.setTextColor(i7);
            }
            if (textView6 != null) {
                textView6.setTextColor(i7);
            }
        }
        int i8 = this.f562j & 4194304;
        ImageView imageView4 = aVar.f532c;
        if (i8 == 0 || dVarA.g()) {
            imageView4.setOnLongClickListener(null);
            imageView4.setLongClickable(false);
        } else {
            imageView4.setTag(R.id.info_date, dVarA);
            imageView4.setTag(R.id.info_size, Integer.valueOf(i2));
            imageView4.setOnLongClickListener(this);
        }
        return view;
    }

    @Override
    public final void n(int i2, int i3) {
        ArrayList<d> arrayList;
        super.n(i2, i3);
        if (i2 < 0 || this.f565m == null) {
            return;
        }
        int i4 = a0.c.K(this.f563k, 4) ? -1 : 1;
        if (this.f565m == null || this.f562j == 0 || i3 + i2 >= getCount()) {
            arrayList = null;
        } else {
            b bVar = this.f560h;
            synchronized (bVar) {
                int size = bVar.size();
                int iMin = Math.min(this.f565m.f1397e / 2, i4 > 0 ? size - i2 : i2);
                arrayList = new ArrayList(iMin);
                while (i2 >= 0 && i2 < size && iMin > 0) {
                    d dVarB = bVar.b(i2);
                    if (f(dVarB.d(), dVarB.f544f, dVarB.f542d)) {
                        arrayList.add(dVarB);
                        iMin--;
                    }
                    i2 += i4;
                }
            }
        }
        if (arrayList != null) {
            q0.g gVar = this.f565m;
            h0.h hVar = this.f528r;
            q0.g.a aVar = gVar.f1398f;
            if (aVar == null || !gVar.f1399g) {
                return;
            }
            try {
                if (aVar.getState() == Thread.State.NEW) {
                    gVar.f1398f.start();
                }
                ArrayList<q0.g.b> arrayList2 = new ArrayList<>(arrayList.size());
                for (d dVar : arrayList) {
                    arrayList2.add(new q0.g.b(dVar, hVar, 5, null, dVar.e(hVar)));
                }
                gVar.f1398f.a(arrayList2);
            } catch (Exception unused) {
            }
        }
    }
}
