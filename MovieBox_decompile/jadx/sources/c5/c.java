package c5;

import java.util.concurrent.atomic.LongAdder;

public abstract class c {
    public static LongAdder a(Object obj) {
        return (LongAdder) obj;
    }
}
