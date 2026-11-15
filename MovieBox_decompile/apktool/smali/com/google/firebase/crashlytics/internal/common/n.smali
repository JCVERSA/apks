.class Lcom/google/firebase/crashlytics/internal/common/n;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static final t:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final c:Lcom/google/firebase/crashlytics/internal/common/y;

.field private final d:Ltb/o;

.field private final e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

.field private final f:Lcom/google/firebase/crashlytics/internal/common/g0;

.field private final g:Lxb/g;

.field private final h:Lcom/google/firebase/crashlytics/internal/common/a;

.field private final i:Ltb/e;

.field private final j:Lqb/a;

.field private final k:Lrb/a;

.field private final l:Lcom/google/firebase/crashlytics/internal/common/k;

.field private final m:Lcom/google/firebase/crashlytics/internal/common/w0;

.field private n:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private o:Lyb/b;

.field final p:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final q:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final r:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/common/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/n;->t:Ljava/io/FilenameFilter;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/d0;Lxb/g;Lcom/google/firebase/crashlytics/internal/common/y;Lcom/google/firebase/crashlytics/internal/common/a;Ltb/o;Ltb/e;Lcom/google/firebase/crashlytics/internal/common/w0;Lqb/a;Lrb/a;Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->o:Lyb/b;

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 43
    .line 44
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 45
    .line 46
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/n;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 47
    .line 48
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Ltb/o;

    .line 49
    .line 50
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Ltb/e;

    .line 51
    .line 52
    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 53
    .line 54
    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/common/n;->k:Lrb/a;

    .line 55
    .line 56
    iput-object p12, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    .line 57
    .line 58
    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 59
    .line 60
    iput-object p13, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 61
    .line 62
    return-void
.end method

.method private static B()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->r()Ljava/util/SortedSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0
.end method

.method private static D()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method static E(Lqb/h;Ljava/lang/String;Lxb/g;[B)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "user-data"

    .line 2
    .line 3
    invoke-virtual {p2, p1, v0}, Lxb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "keys"

    .line 8
    .line 9
    invoke-virtual {p2, p1, v1}, Lxb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "rollouts-state"

    .line 14
    .line 15
    invoke-virtual {p2, p1, v3}, Lxb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 25
    .line 26
    const-string v4, "logs_file"

    .line 27
    .line 28
    const-string v5, "logs"

    .line 29
    .line 30
    invoke-direct {v3, v4, v5, p3}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 37
    .line 38
    invoke-interface {p0}, Lqb/h;->d()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "crash_meta_file"

    .line 43
    .line 44
    const-string v5, "metadata"

    .line 45
    .line 46
    invoke-direct {p3, v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 53
    .line 54
    const-string v3, "session"

    .line 55
    .line 56
    invoke-interface {p0}, Lqb/h;->g()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "session_meta_file"

    .line 61
    .line 62
    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 69
    .line 70
    const-string v3, "app"

    .line 71
    .line 72
    invoke-interface {p0}, Lqb/h;->e()Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "app_meta_file"

    .line 77
    .line 78
    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 85
    .line 86
    const-string v3, "device"

    .line 87
    .line 88
    invoke-interface {p0}, Lqb/h;->a()Ljava/io/File;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "device_meta_file"

    .line 93
    .line 94
    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 101
    .line 102
    const-string v3, "os"

    .line 103
    .line 104
    invoke-interface {p0}, Lqb/h;->f()Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    const-string v5, "os_meta_file"

    .line 109
    .line 110
    invoke-direct {p3, v5, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->R(Lqb/h;)Lcom/google/firebase/crashlytics/internal/common/j0;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 124
    .line 125
    const-string p3, "user_meta_file"

    .line 126
    .line 127
    const-string v3, "user"

    .line 128
    .line 129
    invoke-direct {p0, p3, v3, v0}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 136
    .line 137
    const-string p3, "keys_file"

    .line 138
    .line 139
    invoke-direct {p0, p3, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 146
    .line 147
    const-string p3, "rollouts_file"

    .line 148
    .line 149
    const-string v0, "rollouts"

    .line 150
    .line 151
    invoke-direct {p0, p3, v0, p1}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    return-object p2
.end method

.method private F(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Couldn\'t get Class Loader"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lqb/g;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "No version control information found"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lqb/g;->g(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    return-object p1
.end method

.method private static G(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long/2addr p0, v0

    .line 4
    return-wide p0
.end method

.method private synthetic L(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->w(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic M(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, ".ae"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private O(J)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->B()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lqb/g;->k(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "Logging app exception event to Firebase Analytics"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$e;

    .line 38
    .line 39
    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n$e;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;J)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private P()Lcom/google/android/gms/tasks/Task;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->N()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/io/File;

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x3

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->O(J)Lcom/google/android/gms/tasks/Task;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catch_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Could not parse app exception timestamp from file "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Lqb/g;->k(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method private static Q(Ljava/lang/String;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "No minidump data found for session "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lqb/g;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "No Tombstones data found for session "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lqb/g;->g(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_4

    .line 66
    .line 67
    :cond_3
    if-nez p2, :cond_4

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 p0, 0x0

    .line 72
    :goto_0
    return p0
.end method

.method private static R(Lqb/h;)Lcom/google/firebase/crashlytics/internal/common/j0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0}, Lqb/h;->c()Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "minidump"

    .line 7
    .line 8
    const-string v2, "minidump_file"

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 20
    .line 21
    invoke-direct {v0, v2, v1, p0}, Lcom/google/firebase/crashlytics/internal/common/e0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/f;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    aput-byte v0, v3, v0

    .line 31
    .line 32
    invoke-direct {p0, v2, v1, v3}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 33
    .line 34
    .line 35
    move-object v0, p0

    .line 36
    :goto_1
    return-object v0
.end method

.method private static T(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private a0()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Automatic data collection is enabled. Allowing upload."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 19
    .line 20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "Automatic data collection is disabled."

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "Notifying that unsent reports are available."

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 51
    .line 52
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->j()Lcom/google/android/gms/tasks/Task;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$c;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/n$c;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lqb/g;->b(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/b;->c(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->L(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "activity"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/ActivityManager;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, v2, v2}, Landroidx/work/impl/utils/c;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ltb/e;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 32
    .line 33
    invoke-direct {v1, v2, p1}, Ltb/e;-><init>(Lxb/g;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 39
    .line 40
    invoke-static {p1, v2, v3}, Ltb/o;->m(Ljava/lang/String;Lxb/g;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Ltb/o;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 45
    .line 46
    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/w0;->x(Ljava/lang/String;Ljava/util/List;Ltb/e;Ltb/o;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "No ApplicationExitInfo available. Session: "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "ANR feature enabled, but device is API "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lqb/g;->i(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method static synthetic c(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/internal/common/n;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/internal/common/n;)Lrb/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->k:Lrb/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/w0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/internal/common/n;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n;->x(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/n;->w(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/common/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->b:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->P()Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic m(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->r(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static o(Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/a;)Lub/e$a;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/g0;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/google/firebase/crashlytics/internal/common/a;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/g0;->a()Lcom/google/firebase/crashlytics/internal/common/h0$a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/h0$a;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object p0, p1, Lcom/google/firebase/crashlytics/internal/common/a;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p1, Lcom/google/firebase/crashlytics/internal/common/a;->h:Lqb/f;

    .line 28
    .line 29
    invoke-static/range {v0 .. v5}, Lub/e$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILqb/f;)Lub/e$a;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static p(Landroid/content/Context;)Lub/e$b;
    .locals 16

    .line 1
    new-instance v0, Landroid/os/StatFs;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v3, v0

    .line 24
    mul-long v10, v1, v3

    .line 25
    .line 26
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->k()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->b(Landroid/content/Context;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->w()Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->l()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static/range {v5 .. v15}, Lub/e$b;->c(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)Lub/e$b;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method

.method private static q()Lub/e$c;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->x()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v0, v1, v2}, Lub/e$c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lub/e$c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static r(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private v(ZLyb/b;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/w0;->r()Ljava/util/SortedSet;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gt v1, p1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "No open sessions to be closed."

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lqb/g;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    invoke-interface {p2}, Lyb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p2, p2, Lcom/google/firebase/crashlytics/internal/settings/c;->b:Lcom/google/firebase/crashlytics/internal/settings/c$a;

    .line 44
    .line 45
    iget-boolean p2, p2, Lcom/google/firebase/crashlytics/internal/settings/c$a;->b:Z

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->b0(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v2, "ANR feature disabled."

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Lqb/g;->i(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz p3, :cond_2

    .line 63
    .line 64
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 65
    .line 66
    invoke-interface {p2, v1}, Lqb/a;->d(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->z(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    if-eqz p1, :cond_3

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/k;->e(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object p1, p2

    .line 92
    :goto_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->D()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->l(JLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->D()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Opening a new session with ID "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/x;->q()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object v1, v2, v3

    .line 40
    .line 41
    const-string v1, "Crashlytics Android SDK/%s"

    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->o(Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/a;)Lub/e$a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/n;->q()Lub/e$c;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/common/n;->p(Landroid/content/Context;)Lub/e$b;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 66
    .line 67
    invoke-static {v0, v1, v3}, Lub/e;->b(Lub/e$a;Lub/e$c;Lub/e$b;)Lub/e;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    move-object v0, v4

    .line 72
    move-object v1, p1

    .line 73
    move-wide v3, v6

    .line 74
    invoke-interface/range {v0 .. v5}, Lqb/a;->c(Ljava/lang/String;Ljava/lang/String;JLub/e;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_0

    .line 82
    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Ltb/o;

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ltb/o;->r(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Ltb/e;

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ltb/e;->e(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->l:Lcom/google/firebase/crashlytics/internal/common/k;

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/common/k;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 101
    .line 102
    invoke-virtual {p2, p1, v6, v7}, Lcom/google/firebase/crashlytics/internal/common/w0;->s(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private x(J)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ".ae"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lxb/g;->g(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 32
    .line 33
    const-string p2, "Create new file failed."

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v0, "Could not create app exception marker file."

    .line 45
    .line 46
    invoke-virtual {p2, v0, p1}, Lqb/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Finalizing native report for session "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lqb/a;->a(Ljava/lang/String;)Lqb/h;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lqb/h;->c()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Lqb/h;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/n;->Q(Ljava/lang/String;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "No native core present"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lqb/g;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    new-instance v1, Ltb/e;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 62
    .line 63
    invoke-direct {v1, v5, p1}, Ltb/e;-><init>(Lxb/g;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 67
    .line 68
    invoke-virtual {v5, p1}, Lxb/g;->k(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lqb/g;->k(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->x(J)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 92
    .line 93
    invoke-virtual {v1}, Ltb/e;->b()[B

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v0, p1, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/n;->E(Lqb/h;Ljava/lang/String;Lxb/g;[B)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v5, v0}, Lcom/google/firebase/crashlytics/internal/common/k0;->b(Ljava/io/File;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "CrashlyticsController#finalizePreviousNativeSession"

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Lqb/g;->b(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 114
    .line 115
    invoke-virtual {v3, p1, v0, v2}, Lcom/google/firebase/crashlytics/internal/common/w0;->k(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ltb/e;->a()V

    .line 119
    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method A(Lyb/b;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Skipping session finalization because a crash has already occurred."

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lqb/g;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "Finalizing previously open sessions."

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lqb/g;->i(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :try_start_0
    invoke-direct {p0, v0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->v(ZLyb/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "Closed all previously open sessions."

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "Unable to finalize previously open sessions."

    .line 50
    .line 51
    invoke-virtual {v0, v2, p1}, Lqb/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    return v1
.end method

.method H()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "META-INF/version-control-info.textproto"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->F(Ljava/lang/String;)Ljava/io/InputStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "Read version control info"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lqb/g;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->T(Ljava/io/InputStream;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method I(Lyb/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->J(Lyb/b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method declared-synchronized J(Lyb/b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Handling uncaught exception \""

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "\" from thread "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    .line 45
    .line 46
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/n$b;

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    move-object v3, p0

    .line 50
    move-object v6, p3

    .line 51
    move-object v7, p2

    .line 52
    move-object v8, p1

    .line 53
    move v9, p4

    .line 54
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/n$b;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;JLjava/lang/Throwable;Ljava/lang/Thread;Lyb/b;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->g(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    if-nez p4, :cond_0

    .line 62
    .line 63
    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/z0;->b(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_2
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const-string p3, "Error handling uncaught exception"

    .line 75
    .line 76
    invoke-virtual {p2, p3, p1}, Lqb/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "Cannot send reports. Timed out while fetching settings."

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lqb/g;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_0
    :goto_0
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    throw p1
.end method

.method K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method N()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->g:Lxb/g;

    .line 2
    .line 3
    sget-object v1, Lcom/google/firebase/crashlytics/internal/common/n;->t:Ljava/io/FilenameFilter;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lxb/g;->h(Ljava/io/FilenameFilter;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method S(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    .line 4
    .line 5
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/l;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method U()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->H()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "com.crashlytics.version-control-info"

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Saved version control info"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lqb/g;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "Unable to save version control info"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lqb/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method V()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Ltb/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ltb/o;->p(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->u(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lqb/g;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    return-void
.end method

.method X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Ltb/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ltb/o;->q(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->u(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lqb/g;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    return-void
.end method

.method Y(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->d:Ltb/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ltb/o;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method Z(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "No crash reports are available to be sent."

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lqb/g;->i(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Crash reports are available to be sent."

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lqb/g;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->a0()Lcom/google/android/gms/tasks/Task;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    .line 42
    .line 43
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/n$d;

    .line 44
    .line 45
    invoke-direct {v2, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n$d;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;Lcom/google/android/gms/tasks/Task;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method c0(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->G(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v7

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "Tried to write a non-fatal exception while no session was open."

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lqb/g;->k(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->m:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 32
    .line 33
    move-object v4, p2

    .line 34
    move-object v5, p1

    .line 35
    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/crashlytics/internal/common/w0;->w(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method d0(JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->i:Ltb/e;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ltb/e;->g(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method n()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "checkForUnsentReports should only be called once per execution."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lqb/g;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method s()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->q:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method t()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/n;->C()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Lqb/a;->d(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1

    .line 30
    :cond_1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "Found previous crash marker."

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lqb/g;->i(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->c:Lcom/google/firebase/crashlytics/internal/common/y;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->d()Z

    .line 42
    .line 43
    .line 44
    return v1
.end method

.method u(Lyb/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/n;->v(ZLyb/b;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method y(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lyb/b;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/n;->o:Lyb/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/n;->S(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/n$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/google/firebase/crashlytics/internal/common/n$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/n;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/n;->j:Lqb/a;

    .line 14
    .line 15
    invoke-direct {v0, p1, p3, p2, v1}, Lcom/google/firebase/crashlytics/internal/common/b0;-><init>(Lcom/google/firebase/crashlytics/internal/common/b0$a;Lyb/b;Ljava/lang/Thread$UncaughtExceptionHandler;Lqb/a;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/n;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
