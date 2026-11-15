.class public final Ldg/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Ldg/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldg/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ldg/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldg/d;->a:Ldg/d;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;
    .locals 0

    .line 1
    invoke-static {p0}, Ldg/d;->d(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;
    .locals 0

    .line 1
    invoke-static {p0}, Ldg/d;->f(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;
    .locals 1

    .line 1
    const-string v0, "observable"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/b;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static final f(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/m;
    .locals 1

    .line 1
    const-string v0, "observable"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final c()Lio/reactivex/rxjava3/core/n;
    .locals 1

    .line 1
    new-instance v0, Ldg/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ldg/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final e()Lio/reactivex/rxjava3/core/n;
    .locals 1

    .line 1
    new-instance v0, Ldg/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ldg/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
