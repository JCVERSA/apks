package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.util.Comparator;

class Table$1 implements Comparator<Integer> {
    final e this$0;
    final ByteBuffer val$bb;

    Table$1(e eVar, ByteBuffer byteBuffer) {
        this.this$0 = eVar;
        this.val$bb = byteBuffer;
    }

    @Override
    public int compare(Integer num, Integer num2) {
        return this.this$0.f(num, num2, this.val$bb);
    }
}
