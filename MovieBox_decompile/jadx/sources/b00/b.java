package b00;

import java.util.LinkedList;
import org.mvel2.util.k;

public class b extends ClassLoader implements k {

    private int f15468a;

    private int f15469b;

    private final LinkedList f15470c;

    public b(ClassLoader classLoader, int i10) {
        super(classLoader);
        this.f15470c = new LinkedList();
        this.f15469b = i10;
    }

    @Override
    public Class a(String str, byte[] bArr, int i10, int i11) {
        this.f15468a++;
        return super.defineClass(str, bArr, i10, i11);
    }

    public void b() {
        synchronized (this.f15470c) {
            try {
                for (a aVar : this.f15470c) {
                    if (aVar != null) {
                        aVar.a();
                    }
                }
                this.f15470c.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int c() {
        return this.f15468a;
    }

    public boolean d() {
        return this.f15469b < this.f15468a;
    }

    public a e(a aVar) {
        synchronized (this.f15470c) {
            try {
                this.f15470c.add(aVar);
                while (this.f15470c.size() > this.f15469b) {
                    a aVar2 = (a) this.f15470c.removeFirst();
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }
}
