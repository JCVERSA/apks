package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public class ConfigFetchHandler {

    public static final long f31616j = TimeUnit.HOURS.toSeconds(12);

    static final int[] f31617k = {2, 4, 8, 16, 32, 64, 128, 256};

    private final lc.e f31618a;

    private final kc.b f31619b;

    private final Executor f31620c;

    private final Clock f31621d;

    private final Random f31622e;

    private final e f31623f;

    private final ConfigFetchHttpClient f31624g;

    private final n f31625h;

    private final Map f31626i;

    public enum FetchType {
        BASE("BASE"),
        REALTIME("REALTIME");

        private final String value;

        FetchType(String str) {
            this.value = str;
        }

        String getValue() {
            return this.value;
        }
    }

    public static class a {

        private final Date f31627a;

        private final int f31628b;

        private final f f31629c;

        private final String f31630d;

        private a(Date date, int i10, f fVar, String str) {
            this.f31627a = date;
            this.f31628b = i10;
            this.f31629c = fVar;
            this.f31630d = str;
        }

        public static a a(Date date, f fVar) {
            return new a(date, 1, fVar, null);
        }

        public static a b(f fVar, String str) {
            return new a(fVar.h(), 0, fVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        public f d() {
            return this.f31629c;
        }

        String e() {
            return this.f31630d;
        }

        int f() {
            return this.f31628b;
        }
    }

    public ConfigFetchHandler(lc.e eVar, kc.b bVar, Executor executor, Clock clock, Random random, e eVar2, ConfigFetchHttpClient configFetchHttpClient, n nVar, Map map) {
        this.f31618a = eVar;
        this.f31619b = bVar;
        this.f31620c = executor;
        this.f31621d = clock;
        this.f31622e = random;
        this.f31623f = eVar2;
        this.f31624g = configFetchHttpClient;
        this.f31625h = nVar;
        this.f31626i = map;
    }

    private n.a A(int i10, Date date) {
        if (t(i10)) {
            B(date);
        }
        return this.f31625h.a();
    }

    private void B(Date date) {
        int iB = this.f31625h.a().b() + 1;
        this.f31625h.k(iB, new Date(date.getTime() + q(iB)));
    }

    private void C(Task task, Date date) {
        if (task.isSuccessful()) {
            this.f31625h.q(date);
            return;
        }
        Exception exception = task.getException();
        if (exception == null) {
            return;
        }
        if (exception instanceof FirebaseRemoteConfigFetchThrottledException) {
            this.f31625h.r();
        } else {
            this.f31625h.p();
        }
    }

    private boolean f(long j10, Date date) {
        Date dateE = this.f31625h.e();
        if (dateE.equals(n.f31712e)) {
            return false;
        }
        return date.before(new Date(dateE.getTime() + TimeUnit.SECONDS.toMillis(j10)));
    }

    private FirebaseRemoteConfigServerException g(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) throws FirebaseRemoteConfigClientException {
        String str;
        int httpStatusCode = firebaseRemoteConfigServerException.getHttpStatusCode();
        if (httpStatusCode == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (httpStatusCode == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else {
            if (httpStatusCode == 429) {
                throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
            }
            if (httpStatusCode != 500) {
                switch (httpStatusCode) {
                    case 502:
                    case 503:
                    case 504:
                        str = "The server is unavailable. Please try again later.";
                        break;
                    default:
                        str = "The server returned an unexpected error.";
                        break;
                }
            } else {
                str = "There was an internal server error.";
            }
        }
        return new FirebaseRemoteConfigServerException(firebaseRemoteConfigServerException.getHttpStatusCode(), "Fetch failed: " + str, firebaseRemoteConfigServerException);
    }

    private String h(long j10) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j10)));
    }

    private a k(String str, String str2, Date date, Map map) throws FirebaseRemoteConfigException {
        try {
            a aVarFetch = this.f31624g.fetch(this.f31624g.d(), str, str2, s(), this.f31625h.d(), map, p(), date);
            if (aVarFetch.d() != null) {
                this.f31625h.n(aVarFetch.d().k());
            }
            if (aVarFetch.e() != null) {
                this.f31625h.m(aVarFetch.e());
            }
            this.f31625h.i();
            return aVarFetch;
        } catch (FirebaseRemoteConfigServerException e10) {
            n.a aVarA = A(e10.getHttpStatusCode(), date);
            if (z(aVarA, e10.getHttpStatusCode())) {
                throw new FirebaseRemoteConfigFetchThrottledException(aVarA.a().getTime());
            }
            throw g(e10);
        }
    }

    private Task l(String str, String str2, Date date, Map map) {
        try {
            final a aVarK = k(str, str2, date, map);
            return aVarK.f() != 0 ? Tasks.forResult(aVarK) : this.f31623f.k(aVarK.d()).onSuccessTask(this.f31620c, new SuccessContinuation() {
                @Override
                public final Task then(Object obj) {
                    return ConfigFetchHandler.v(aVarK, (f) obj);
                }
            });
        } catch (FirebaseRemoteConfigException e10) {
            return Tasks.forException(e10);
        }
    }

    public Task u(Task task, long j10, final Map map) {
        Task taskContinueWithTask;
        final Date date = new Date(this.f31621d.currentTimeMillis());
        if (task.isSuccessful() && f(j10, date)) {
            return Tasks.forResult(a.c(date));
        }
        Date dateO = o(date);
        if (dateO != null) {
            taskContinueWithTask = Tasks.forException(new FirebaseRemoteConfigFetchThrottledException(h(dateO.getTime() - date.getTime()), dateO.getTime()));
        } else {
            final Task id2 = this.f31618a.getId();
            final Task taskA = this.f31618a.a(false);
            taskContinueWithTask = Tasks.whenAllComplete((Task<?>[]) new Task[]{id2, taskA}).continueWithTask(this.f31620c, new Continuation() {
                @Override
                public final Object then(Task task2) {
                    return this.f31694a.w(id2, taskA, date, map, task2);
                }
            });
        }
        return taskContinueWithTask.continueWithTask(this.f31620c, new Continuation() {
            @Override
            public final Object then(Task task2) {
                return this.f31699a.x(date, task2);
            }
        });
    }

    private Date o(Date date) {
        Date dateA = this.f31625h.a().a();
        if (date.before(dateA)) {
            return dateA;
        }
        return null;
    }

    private Long p() {
        mb.a aVar = (mb.a) this.f31619b.get();
        if (aVar == null) {
            return null;
        }
        return (Long) aVar.c(true).get("_fot");
    }

    private long q(int i10) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f31617k;
        long millis = timeUnit.toMillis(iArr[Math.min(i10, iArr.length) - 1]);
        return (millis / 2) + ((long) this.f31622e.nextInt((int) millis));
    }

    private Map s() {
        HashMap map = new HashMap();
        mb.a aVar = (mb.a) this.f31619b.get();
        if (aVar == null) {
            return map;
        }
        for (Map.Entry entry : aVar.c(false).entrySet()) {
            map.put((String) entry.getKey(), entry.getValue().toString());
        }
        return map;
    }

    private boolean t(int i10) {
        return i10 == 429 || i10 == 502 || i10 == 503 || i10 == 504;
    }

    public static Task v(a aVar, f fVar) {
        return Tasks.forResult(aVar);
    }

    public Task w(Task task, Task task2, Date date, Map map, Task task3) {
        if (task.isSuccessful()) {
            return !task2.isSuccessful() ? Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.getException())) : l((String) task.getResult(), ((com.google.firebase.installations.f) task2.getResult()).b(), date, map);
        }
        return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task.getException()));
    }

    public Task x(Date date, Task task) {
        C(task, date);
        return task;
    }

    public Task y(Map map, Task task) {
        return u(task, 0L, map);
    }

    private boolean z(n.a aVar, int i10) {
        return aVar.b() > 1 || i10 == 429;
    }

    public Task i() {
        return j(this.f31625h.g());
    }

    public Task j(final long j10) {
        final HashMap map = new HashMap(this.f31626i);
        map.put("X-Firebase-RC-Fetch-Type", FetchType.BASE.getValue() + "/1");
        return this.f31623f.e().continueWithTask(this.f31620c, new Continuation() {
            @Override
            public final Object then(Task task) {
                return this.f31689a.u(j10, map, task);
            }
        });
    }

    public Task n(FetchType fetchType, int i10) {
        final HashMap map = new HashMap(this.f31626i);
        map.put("X-Firebase-RC-Fetch-Type", fetchType.getValue() + "/" + i10);
        return this.f31623f.e().continueWithTask(this.f31620c, new Continuation() {
            @Override
            public final Object then(Task task) {
                return this.f31692a.y(map, task);
            }
        });
    }

    public long r() {
        return this.f31625h.f();
    }
}
