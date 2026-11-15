.class public Lcom/google/firebase/perf/application/c;
.super Landroidx/fragment/app/FragmentManager$k;
.source "source.java"


# static fields
.field private static final f:Luc/a;


# instance fields
.field private final a:Ljava/util/WeakHashMap;

.field private final b:Lcom/google/firebase/perf/util/a;

.field private final c:Lxc/k;

.field private final d:Lcom/google/firebase/perf/application/a;

.field private final e:Lcom/google/firebase/perf/application/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Luc/a;->e()Luc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/firebase/perf/application/c;->f:Luc/a;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/util/a;Lxc/k;Lcom/google/firebase/perf/application/a;Lcom/google/firebase/perf/application/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$k;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/perf/application/c;->a:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/perf/application/c;->b:Lcom/google/firebase/perf/util/a;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/firebase/perf/application/c;->c:Lxc/k;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/firebase/perf/application/c;->d:Lcom/google/firebase/perf/application/a;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/firebase/perf/application/c;->e:Lcom/google/firebase/perf/application/d;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_st_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$k;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/application/c;->f:Luc/a;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v0, v2, v3

    .line 19
    .line 20
    const-string v0, "FragmentMonitor %s.onFragmentPaused "

    .line 21
    .line 22
    invoke-virtual {p1, v0, v2}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/firebase/perf/application/c;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p2, v0, v3

    .line 44
    .line 45
    const-string p2, "FragmentMonitor: missed a fragment trace from %s"

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Luc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/application/c;->a:Ljava/util/WeakHashMap;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->a:Ljava/util/WeakHashMap;

    .line 60
    .line 61
    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->e:Lcom/google/firebase/perf/application/d;

    .line 65
    .line 66
    invoke-virtual {v2, p2}, Lcom/google/firebase/perf/application/d;->f(Landroidx/fragment/app/Fragment;)Lcom/google/firebase/perf/util/e;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->d()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    new-array v0, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object p2, v0, v3

    .line 87
    .line 88
    const-string p2, "onFragmentPaused: recorder failed to trace %s"

    .line 89
    .line 90
    invoke-virtual {p1, p2, v0}, Luc/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/e;->c()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/google/firebase/perf/metrics/g$a;

    .line 99
    .line 100
    invoke-static {v0, p1}, Lcom/google/firebase/perf/util/h;->a(Lcom/google/firebase/perf/metrics/Trace;Lcom/google/firebase/perf/metrics/g$a;)Lcom/google/firebase/perf/metrics/Trace;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentManager$k;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/application/c;->f:Luc/a;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v0, v1, v2

    .line 19
    .line 20
    const-string v0, "FragmentMonitor %s.onFragmentResumed"

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Luc/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lcom/google/firebase/perf/metrics/Trace;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/google/firebase/perf/application/c;->a(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/firebase/perf/application/c;->c:Lxc/k;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/firebase/perf/application/c;->b:Lcom/google/firebase/perf/util/a;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/firebase/perf/application/c;->d:Lcom/google/firebase/perf/application/a;

    .line 36
    .line 37
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lxc/k;Lcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/application/a;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    const-string v0, "No parent"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    const-string v1, "Parent_fragment"

    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "Hosting_activity"

    .line 88
    .line 89
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/metrics/Trace;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/application/c;->a:Ljava/util/WeakHashMap;

    .line 93
    .line 94
    invoke-virtual {v0, p2, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/firebase/perf/application/c;->e:Lcom/google/firebase/perf/application/d;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/application/d;->d(Landroidx/fragment/app/Fragment;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
