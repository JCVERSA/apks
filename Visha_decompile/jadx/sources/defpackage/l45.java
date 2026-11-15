package defpackage;

import com.yandex.div.storage.DivDataRepository;
import com.yandex.div.storage.DivStorageComponent;
import com.yandex.div.storage.b;
import com.yandex.div.storage.c;

public final class l45 implements DivStorageComponent {
    public final DivDataRepository b;
    public final c c;
    public final b d;

    public l45(DivDataRepository divDataRepository, c cVar, b bVar) {
        y45.j(divDataRepository, "repository");
        y45.j(cVar, "rawJsonRepository");
        y45.j(bVar, "storage");
        this.b = divDataRepository;
        this.c = cVar;
        this.d = bVar;
    }

    @Override
    public c a() {
        return this.c;
    }
}
