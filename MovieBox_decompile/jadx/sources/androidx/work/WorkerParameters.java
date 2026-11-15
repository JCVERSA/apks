package androidx.work;

import android.net.Network;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;

public final class WorkerParameters {

    private UUID f15065a;

    private d f15066b;

    private Set f15067c;

    private a f15068d;

    private int f15069e;

    private Executor f15070f;

    private k4.c f15071g;

    private s f15072h;

    private n f15073i;

    private f f15074j;

    private int f15075k;

    public static class a {

        public List f15076a = Collections.emptyList();

        public List f15077b = Collections.emptyList();

        public Network f15078c;
    }

    public WorkerParameters(UUID uuid, d dVar, Collection collection, a aVar, int i10, int i11, Executor executor, k4.c cVar, s sVar, n nVar, f fVar) {
        this.f15065a = uuid;
        this.f15066b = dVar;
        this.f15067c = new HashSet(collection);
        this.f15068d = aVar;
        this.f15069e = i10;
        this.f15075k = i11;
        this.f15070f = executor;
        this.f15071g = cVar;
        this.f15072h = sVar;
        this.f15073i = nVar;
        this.f15074j = fVar;
    }

    public Executor a() {
        return this.f15070f;
    }

    public f b() {
        return this.f15074j;
    }

    public UUID c() {
        return this.f15065a;
    }

    public d d() {
        return this.f15066b;
    }

    public k4.c e() {
        return this.f15071g;
    }

    public s f() {
        return this.f15072h;
    }
}
