package bd;

import android.util.Log;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import dd.f;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

public class e {

    private com.google.firebase.remoteconfig.internal.e f15787a;

    private a f15788b;

    private Executor f15789c;

    private Set f15790d = Collections.newSetFromMap(new ConcurrentHashMap());

    public e(com.google.firebase.remoteconfig.internal.e eVar, a aVar, Executor executor) {
        this.f15787a = eVar;
        this.f15788b = aVar;
        this.f15789c = executor;
    }

    public void f(Task task, final f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        try {
            com.google.firebase.remoteconfig.internal.f fVar3 = (com.google.firebase.remoteconfig.internal.f) task.getResult();
            if (fVar3 != null) {
                final dd.e eVarB = this.f15788b.b(fVar3);
                this.f15789c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        fVar.a(eVarB);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e10) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscriber. Continuing to listen for changes.", e10);
        }
    }

    public void g(com.google.firebase.remoteconfig.internal.f fVar) {
        try {
            final dd.e eVarB = this.f15788b.b(fVar);
            for (final f fVar2 : this.f15790d) {
                this.f15789c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        fVar2.a(eVarB);
                    }
                });
            }
        } catch (FirebaseRemoteConfigException e10) {
            Log.w("FirebaseRemoteConfig", "Exception publishing RolloutsState to subscribers. Continuing to listen for changes.", e10);
        }
    }

    public void h(final f fVar) {
        this.f15790d.add(fVar);
        final Task taskE = this.f15787a.e();
        taskE.addOnSuccessListener(this.f15789c, new OnSuccessListener() {
            @Override
            public final void onSuccess(Object obj) {
                this.f15782a.f(taskE, fVar, (com.google.firebase.remoteconfig.internal.f) obj);
            }
        });
    }
}
