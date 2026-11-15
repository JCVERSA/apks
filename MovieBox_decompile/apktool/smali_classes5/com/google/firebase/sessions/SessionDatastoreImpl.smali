.class public final Lcom/google/firebase/sessions/SessionDatastoreImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/sessions/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionDatastoreImpl$a;,
        Lcom/google/firebase/sessions/SessionDatastoreImpl$b;
    }
.end annotation


# static fields
.field private static final f:Lcom/google/firebase/sessions/SessionDatastoreImpl$a;

.field private static final g:Lkotlin/properties/ReadOnlyProperty;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lkotlin/coroutines/CoroutineContext;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;

.field private final e:Lkotlinx/coroutines/flow/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionDatastoreImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->f:Lcom/google/firebase/sessions/SessionDatastoreImpl$a;

    .line 8
    .line 9
    sget-object v0, Lcom/google/firebase/sessions/r;->a:Lcom/google/firebase/sessions/r;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/sessions/r;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lj1/b;

    .line 16
    .line 17
    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$Companion$dataStore$2;->INSTANCE:Lcom/google/firebase/sessions/SessionDatastoreImpl$Companion$dataStore$2;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lj1/b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 20
    .line 21
    .line 22
    const/16 v5, 0xc

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->b(Ljava/lang/String;Lj1/b;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/n0;ILjava/lang/Object;)Lkotlin/properties/ReadOnlyProperty;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->g:Lkotlin/properties/ReadOnlyProperty;

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "backgroundDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->b:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->c:Lkotlin/coroutines/CoroutineContext;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->f:Lcom/google/firebase/sessions/SessionDatastoreImpl$a;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/google/firebase/sessions/SessionDatastoreImpl$a;->a(Lcom/google/firebase/sessions/SessionDatastoreImpl$a;Landroid/content/Context;)Landroidx/datastore/core/g;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroidx/datastore/core/g;->getData()Lkotlinx/coroutines/flow/a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$firebaseSessionDataFlow$1;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionDatastoreImpl$firebaseSessionDataFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$special$$inlined$map$1;

    .line 46
    .line 47
    invoke-direct {v0, p1, p0}, Lcom/google/firebase/sessions/SessionDatastoreImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/a;Lcom/google/firebase/sessions/SessionDatastoreImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->e:Lkotlinx/coroutines/flow/a;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v5, Lcom/google/firebase/sessions/SessionDatastoreImpl$1;

    .line 57
    .line 58
    invoke-direct {v5, p0, v1}, Lcom/google/firebase/sessions/SessionDatastoreImpl$1;-><init>(Lcom/google/firebase/sessions/SessionDatastoreImpl;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x3

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final synthetic c()Lcom/google/firebase/sessions/SessionDatastoreImpl$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->f:Lcom/google/firebase/sessions/SessionDatastoreImpl$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/SessionDatastoreImpl;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/SessionDatastoreImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f()Lkotlin/properties/ReadOnlyProperty;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->g:Lkotlin/properties/ReadOnlyProperty;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Lcom/google/firebase/sessions/SessionDatastoreImpl;)Lkotlinx/coroutines/flow/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->e:Lkotlinx/coroutines/flow/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/google/firebase/sessions/SessionDatastoreImpl;Landroidx/datastore/preferences/core/c;)Lcom/google/firebase/sessions/i;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionDatastoreImpl;->i(Landroidx/datastore/preferences/core/c;)Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i(Landroidx/datastore/preferences/core/c;)Lcom/google/firebase/sessions/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    sget-object v1, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->a:Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->a()Landroidx/datastore/preferences/core/c$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Landroidx/datastore/preferences/core/c;->b(Landroidx/datastore/preferences/core/c$a;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/google/firebase/sessions/i;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/firebase/sessions/i;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "sessionId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionDatastoreImpl;->c:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v4, Lcom/google/firebase/sessions/SessionDatastoreImpl$updateSessionId$1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {v4, p0, p1, v0}, Lcom/google/firebase/sessions/SessionDatastoreImpl$updateSessionId$1;-><init>(Lcom/google/firebase/sessions/SessionDatastoreImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    return-void
.end method
