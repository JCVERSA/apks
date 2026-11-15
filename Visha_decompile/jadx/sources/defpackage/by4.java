package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.PictureDrawable;
import org.mozilla.javascript.ES6Iterator;

public interface by4 {

    public static final class a implements by4 {
        public final Bitmap a;

        public a(Bitmap bitmap) {
            this.a = bitmap;
        }

        public static final a a(Bitmap bitmap) {
            return new a(bitmap);
        }

        public static Bitmap b(Bitmap bitmap) {
            y45.j(bitmap, ES6Iterator.VALUE_PROPERTY);
            return bitmap;
        }

        public static boolean c(Bitmap bitmap, Object obj) {
            return (obj instanceof a) && y45.e(bitmap, ((a) obj).f());
        }

        public static int d(Bitmap bitmap) {
            return bitmap.hashCode();
        }

        public static String e(Bitmap bitmap) {
            return "Bitmap(value=" + bitmap + ')';
        }

        public boolean equals(Object obj) {
            return c(this.a, obj);
        }

        public final Bitmap f() {
            return this.a;
        }

        public int hashCode() {
            return d(this.a);
        }

        public String toString() {
            return e(this.a);
        }
    }

    public static final class b implements by4 {
        public final PictureDrawable a;

        public b(PictureDrawable pictureDrawable) {
            this.a = pictureDrawable;
        }

        public static final b a(PictureDrawable pictureDrawable) {
            return new b(pictureDrawable);
        }

        public static PictureDrawable b(PictureDrawable pictureDrawable) {
            y45.j(pictureDrawable, ES6Iterator.VALUE_PROPERTY);
            return pictureDrawable;
        }

        public static boolean c(PictureDrawable pictureDrawable, Object obj) {
            return (obj instanceof b) && y45.e(pictureDrawable, ((b) obj).f());
        }

        public static int d(PictureDrawable pictureDrawable) {
            return pictureDrawable.hashCode();
        }

        public static String e(PictureDrawable pictureDrawable) {
            return "PictureDrawable(value=" + pictureDrawable + ')';
        }

        public boolean equals(Object obj) {
            return c(this.a, obj);
        }

        public final PictureDrawable f() {
            return this.a;
        }

        public int hashCode() {
            return d(this.a);
        }

        public String toString() {
            return e(this.a);
        }
    }
}
