package x9;

import java.util.NoSuchElementException;

public interface o {

    public static final o f75236a = new a();

    class a implements o {
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
