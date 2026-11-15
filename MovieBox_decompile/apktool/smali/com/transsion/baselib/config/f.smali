.class public final Lcom/transsion/baselib/config/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/config/f$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/baselib/config/f$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private a:Lcom/google/firebase/remoteconfig/a;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/baselib/config/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/baselib/config/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/baselib/config/f;->c:Lcom/transsion/baselib/config/f$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/baselib/config/c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/baselib/config/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/baselib/config/f;->d:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lad/j$b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/config/f;->f(Lad/j$b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/config/f;->g(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Lcom/transsion/baselib/config/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/baselib/config/f;->h()Lcom/transsion/baselib/config/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/baselib/config/f;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final f(Lad/j$b;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "$this$remoteConfigSettings"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0xe10

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lad/j$b;->e(J)Lad/j$b;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final g(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1
    const-string v0, "task"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iput-boolean p2, p0, Lcom/transsion/baselib/config/f;->b:Z

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p0, p0, Lcom/transsion/baselib/config/f;->a:Lcom/google/firebase/remoteconfig/a;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "remoteConfig"

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    :cond_0
    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final h()Lcom/transsion/baselib/config/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/config/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/config/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final e(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 7
    .line 8
    invoke-static {v0}, Lad/n;->a(Lcom/google/firebase/c;)Lcom/google/firebase/remoteconfig/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/transsion/baselib/config/f;->a:Lcom/google/firebase/remoteconfig/a;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "remoteConfig"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_0
    new-instance v3, Lcom/transsion/baselib/config/d;

    .line 24
    .line 25
    invoke-direct {v3}, Lcom/transsion/baselib/config/d;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lad/n;->b(Lkotlin/jvm/functions/Function1;)Lad/j;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/firebase/remoteconfig/a;->w(Lad/j;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/baselib/config/f;->a:Lcom/google/firebase/remoteconfig/a;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object v1, v0

    .line 44
    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/a;->h()Lcom/google/android/gms/tasks/Task;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/transsion/baselib/config/e;

    .line 49
    .line 50
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/config/e;-><init>(Lcom/transsion/baselib/config/f;Lkotlin/jvm/functions/Function2;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 54
    .line 55
    .line 56
    return-void
.end method
