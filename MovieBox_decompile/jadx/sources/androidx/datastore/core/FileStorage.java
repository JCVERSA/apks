package androidx.datastore.core;

import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class FileStorage implements w {

    public static final a f8274d = new a(null);

    private static final Set f8275e = new LinkedHashSet();

    private static final Object f8276f = new Object();

    private final t f8277a;

    private final Function1 f8278b;

    private final Function0 f8279c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Set a() {
            return FileStorage.f8275e;
        }

        public final Object b() {
            return FileStorage.f8276f;
        }

        private a() {
        }
    }

    public FileStorage(t serializer, Function1 coordinatorProducer, Function0 produceFile) {
        Intrinsics.h(serializer, "serializer");
        Intrinsics.h(coordinatorProducer, "coordinatorProducer");
        Intrinsics.h(produceFile, "produceFile");
        this.f8277a = serializer;
        this.f8278b = coordinatorProducer;
        this.f8279c = produceFile;
    }

    @Override
    public x a() throws IOException {
        final File file = ((File) this.f8279c.invoke()).getCanonicalFile();
        synchronized (f8276f) {
            String path = file.getAbsolutePath();
            Set set = f8275e;
            if (set.contains(path)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + path + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            Intrinsics.g(path, "path");
            set.add(path);
        }
        Intrinsics.g(file, "file");
        return new FileStorageConnection(file, this.f8277a, (m) this.f8278b.invoke(file), new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m192invoke();
                return Unit.f64096a;
            }

            public final void m192invoke() {
                FileStorage.a aVar = FileStorage.f8274d;
                Object objB = aVar.b();
                File file2 = file;
                synchronized (objB) {
                    aVar.a().remove(file2.getAbsolutePath());
                    Unit unit = Unit.f64096a;
                }
            }
        });
    }

    public FileStorage(t tVar, Function1 function1, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(tVar, (i10 & 2) != 0 ? new Function1<File, m>() {
            @Override
            public final m invoke(File it) {
                Intrinsics.h(it, "it");
                return o.a(it);
            }
        } : function1, function0);
    }
}
