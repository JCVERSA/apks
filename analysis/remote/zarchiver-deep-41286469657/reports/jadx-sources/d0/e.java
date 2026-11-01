package d0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

public final class e extends h {

    public static class a implements g {

        public final View f547a;

        public final TextView f548b;

        public final ImageView f549c;

        public final TextView f550d;

        public final TextView f551e;

        public a(View view) {
            this.f547a = view;
            this.f548b = (TextView) view.findViewById(R.id.name);
            this.f551e = (TextView) view.findViewById(R.id.desc);
            this.f550d = (TextView) view.findViewById(R.id.info);
            this.f549c = (ImageView) view.findViewById(R.id.icon);
        }

        @Override
        public final boolean a(d dVar, Bitmap bitmap, int i2) {
            ImageView imageView = this.f549c;
            if (((Integer) imageView.getTag(R.id.icon)).intValue() != i2 || bitmap == null) {
                return false;
            }
            if (t0.b.l(4)) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (t0.b.l(32)) {
                z0.f.c(imageView, bitmap);
                return true;
            }
            imageView.setImageBitmap(bitmap);
            return true;
        }
    }

    public e(Context context, ru.zdevs.zarchiver.b bVar) {
        super(context, bVar);
    }

    @Override
    public final int c() {
        return R.layout.item_file_search;
    }

    @Override
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        String strT;
        f fVar = (f) a(i2);
        if (view == null) {
            view = this.f553a.inflate(R.layout.item_file_search, viewGroup, false);
            aVar = new a(view);
            float f2 = t0.b.f2091l;
            TextView textView = aVar.f548b;
            textView.setTextSize(f2);
            textView.setMinHeight(t0.b.f2090k >> 1);
            float f3 = t0.b.f2091l * 0.7f;
            TextView textView2 = aVar.f551e;
            textView2.setTextSize(f3);
            textView2.setMinHeight(t0.b.f2090k >> 1);
            aVar.f550d.setTextSize(t0.b.f2091l * 0.6f);
            ImageView imageView = aVar.f549c;
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            int i3 = t0.b.f2090k;
            layoutParams.height = i3;
            layoutParams.width = i3;
            imageView.setLayoutParams(layoutParams);
            imageView.setOnClickListener(this);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
            aVar.f549c.animate().cancel();
            ImageView imageView2 = aVar.f549c;
            imageView2.setAlpha(1.0f);
            imageView2.setTag(R.id.icon, 0);
        }
        int iHashCode = fVar.hashCode();
        Bitmap bitmapB = b(iHashCode, fVar, aVar, fVar.f552k, false);
        Integer numValueOf = Integer.valueOf(i2);
        ImageView imageView3 = aVar.f549c;
        imageView3.setTag(numValueOf);
        imageView3.setTag(R.id.icon, Integer.valueOf(iHashCode));
        aVar.f548b.setText(fVar.f539a);
        if (t0.b.l(4)) {
            imageView3.setScaleType(bitmapB == null ? ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP);
        }
        if (bitmapB == null) {
            bitmapB = z0.b.a(fVar.d());
        }
        imageView3.setImageBitmap(z0.b.c(imageView3.getContext(), bitmapB, fVar.f544f));
        h0.h hVar = fVar.f552k;
        if (hVar.g()) {
            strT = "~/";
            if (!v0.h.e(hVar.f1110e)) {
                strT = "~/" + hVar.f1110e;
            }
        } else {
            strT = hVar.t();
        }
        aVar.f551e.setText(strT);
        StringBuilder sb = new StringBuilder();
        if (t0.b.g(8192)) {
            sb.append(d.f537i.format(Long.valueOf(fVar.b())));
        }
        if (t0.b.g(4096) && fVar.f543e != 4) {
            if (t0.b.g(8192)) {
                sb.append("\n");
            }
            long j2 = fVar.f542d;
            if (j2 == -2) {
                sb.append("<LINK>");
            } else {
                sb.append(v0.h.b(j2, 0, null));
            }
        }
        aVar.f550d.setText(sb.toString());
        boolean z2 = fVar.f545g;
        View view2 = aVar.f547a;
        TextView textView3 = aVar.f551e;
        TextView textView4 = aVar.f550d;
        TextView textView5 = aVar.f548b;
        if (z2) {
            int i4 = this.f556d;
            textView5.setTextColor(i4);
            textView4.setTextColor(i4);
            textView3.setTextColor(i4);
            view2.setBackgroundColor(this.f557e);
        } else {
            int i5 = this.f554b;
            textView5.setTextColor(i5);
            textView4.setTextColor(i5);
            textView3.setTextColor(i5);
            view2.setBackgroundColor(this.f558f);
        }
        int i6 = this.f562j & 4194304;
        ImageView imageView4 = aVar.f549c;
        if (i6 == 0 || fVar.g()) {
            imageView4.setOnLongClickListener(null);
            imageView4.setLongClickable(false);
        } else {
            imageView4.setTag(R.id.info_date, fVar);
            imageView4.setTag(R.id.info_size, Integer.valueOf(i2));
            imageView4.setOnLongClickListener(this);
        }
        return view;
    }

    @Override
    public final void m(boolean z2) {
    }
}
