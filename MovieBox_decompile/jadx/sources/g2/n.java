package g2;

import java.util.NoSuchElementException;

public interface n {

    public static final n f60650a = new a();

    class a implements n {
        a() {
        }

        @Override
        public long a() {
            throw new NoSuchElementException();
        }

        @Override
        public long b() {
            throw new NoSuchElementException();
        }

        @Override
        public boolean next() {
            return false;
        }
    }

    long a();

    long b();

    boolean next();
}
