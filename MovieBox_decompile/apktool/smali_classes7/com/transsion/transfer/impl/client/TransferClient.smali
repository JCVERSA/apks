.class public final Lcom/transsion/transfer/impl/client/TransferClient;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/client/TransferClient$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/transsion/transfer/impl/client/TransferClient$a;

.field private static final u:Ljava/lang/String;

.field private static volatile v:Lcom/transsion/transfer/impl/e;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private volatile h:Lcom/transsion/transfer/androidasync/http/b0;

.field private i:Z

.field private final j:Lkotlin/Lazy;

.field private k:Lcom/transsion/transfer/impl/PingPongHelper;

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:Lkotlin/jvm/functions/Function3;

.field private o:Z

.field private final p:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final q:Lcom/transsion/transfer/impl/client/TransferClient$b;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final s:Lcom/transsion/transfer/impl/client/TransferClient$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 8
    .line 9
    const-class v0, Lcom/transsion/transfer/impl/client/TransferClient;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->u:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/transsion/transfer/impl/client/a;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->d:Lkotlin/Lazy;

    .line 7
    new-instance p1, Lcom/transsion/transfer/impl/client/b;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->e:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/transsion/transfer/impl/client/c;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/c;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->f:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lcom/transsion/transfer/impl/client/d;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/d;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->g:Lkotlin/Lazy;

    .line 10
    new-instance p1, Lcom/transsion/transfer/impl/client/e;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->j:Lkotlin/Lazy;

    .line 11
    new-instance p1, Lcom/transsion/transfer/impl/client/f;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/f;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->l:Lkotlin/Lazy;

    .line 12
    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$g;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$g;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 13
    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$b;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$b;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->q:Lcom/transsion/transfer/impl/client/TransferClient$b;

    .line 14
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$h;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$h;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/google/gson/Gson;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B()Lcom/transsion/transfer/impl/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->v:Lcom/transsion/transfer/impl/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic C(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/PingPongHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/TransferClient$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic F(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic H()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->n0(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->o0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic M(Lcom/transsion/transfer/impl/e;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->v:Lcom/transsion/transfer/impl/e;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic N(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/impl/PingPongHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic R(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private static final S()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->w()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final T(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/transfer/impl/client/n;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "<get-client>(...)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-object v5, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 21
    .line 22
    move-object v0, v6

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/impl/client/n;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;)V

    .line 24
    .line 25
    .line 26
    return-object v6
.end method

.method private static final U()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final V(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/client/o;->q()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final W(Lkotlin/jvm/functions/Function2;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->d0()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "<get-deviceName>(...)"

    .line 17
    .line 18
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Lau/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "/pingpong?clientIp="

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "&transferId="

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "&deviceName="

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {p0, v1}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    new-instance v2, Lcom/transsion/transfer/impl/client/h;

    .line 63
    .line 64
    invoke-direct {v2, p0, p1}, Lcom/transsion/transfer/impl/client/h;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "socket_connect"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private static final X(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    .line 3
    .line 4
    if-nez p2, :cond_2

    .line 5
    .line 6
    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/transsion/transfer/impl/client/i;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/transsion/transfer/impl/client/i;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/http/b0;->I(Lcom/transsion/transfer/androidasync/http/b0$c;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v2, Lcom/transsion/transfer/impl/client/j;

    .line 25
    .line 26
    invoke-direct {v2, p0, p3}, Lcom/transsion/transfer/impl/client/j;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    new-instance v1, Lcom/transsion/transfer/impl/PingPongHelper;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 40
    .line 41
    invoke-direct {v1, v2, v0, p3, v3}, Lcom/transsion/transfer/impl/PingPongHelper;-><init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsion/transfer/impl/PingPongHelper;->n()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "serverIP:"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, " connect error: "

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, " "

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :goto_0
    if-nez p2, :cond_3

    .line 86
    .line 87
    if-eqz p3, :cond_3

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-nez p2, :cond_4

    .line 99
    .line 100
    const-string p2, ""

    .line 101
    .line 102
    :cond_4
    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private static final Y(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->j0(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final Z(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p0, p1}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final a0(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 8

    .line 1
    new-instance v7, Lcom/transsion/transfer/impl/client/o;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "<get-client>(...)"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-object v5, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/transsion/transfer/impl/client/TransferClient;->q:Lcom/transsion/transfer/impl/client/TransferClient$b;

    .line 23
    .line 24
    move-object v0, v7

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/impl/client/o;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;Lkotlin/jvm/functions/Function2;)V

    .line 26
    .line 27
    .line 28
    return-object v7
.end method

.method private final b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private final c0()Lcom/transsion/transfer/impl/client/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/client/n;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final e0()Lcom/transsion/transfer/impl/client/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/transfer/impl/client/o;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f0()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/gson/Gson;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

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
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "getUrl baseUrl: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method private static final i0()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final j0(Ljava/lang/String;)Z
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "cmd"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    :try_start_0
    const-string v1, "?"

    .line 14
    .line 15
    filled-new-array {v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v8, 0x6

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v4, p1

    .line 24
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Ljava/lang/CharSequence;

    .line 34
    .line 35
    const-string v1, "="

    .line 36
    .line 37
    filled-new-array {v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v6, 0x6

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-le v2, v0, :cond_0

    .line 64
    .line 65
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    move-object v2, p1

    .line 70
    check-cast v2, Ljava/lang/CharSequence;

    .line 71
    .line 72
    const-string p1, "&"

    .line 73
    .line 74
    filled-new-array {p1}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v6, 0x6

    .line 79
    const/4 v7, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_0

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_1

    .line 89
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :goto_0
    if-gez v1, :cond_1

    .line 95
    .line 96
    invoke-direct {p0, v1, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->k0(ILjava/util/List;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lcom/transsion/transfer/impl/client/TransferClient$h;->l(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_2
    return v0

    .line 110
    :cond_2
    return v3
.end method

.method private final k0(ILjava/util/List;)V
    .locals 7

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 p2, -0x1

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 9
    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    check-cast p2, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "="

    .line 41
    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v5, 0x6

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x1

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0}, Lau/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string p2, "deviceName"

    .line 75
    .line 76
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/String;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->n:Lkotlin/jvm/functions/Function3;

    .line 85
    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    const-string v1, "client"

    .line 91
    .line 92
    invoke-interface {p2, p1, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic l(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->Y(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l0(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "http://"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ":9890"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic m()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->i0()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final m0(Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 6
    .line 7
    const-string v2, "/client/notifyClientClose"

    .line 8
    .line 9
    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$c;

    .line 22
    .line 23
    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic n(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->l0(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final n0(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 6
    .line 7
    const-string v2, "/client/notifyFileTaskError"

    .line 8
    .line 9
    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    new-instance p1, Ltt/f;

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Ltt/f;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/transsion/transfer/androidasync/http/j;->w(Ltt/a;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$e;

    .line 55
    .line 56
    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/TransferClient$e;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic o(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->V(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o0(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 13
    .line 14
    const-string v2, "/client/notifyFileTaskFinish"

    .line 15
    .line 16
    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Ltt/f;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v2, v3}, Ltt/f;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/j;->w(Ltt/a;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$f;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$f;-><init>(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic p(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->a0(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->Z(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->S()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->U()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic t(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->T(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient;->X(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->W(Lkotlin/jvm/functions/Function2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic x(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/transfer/impl/client/TransferClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic z(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 11
    .line 12
    const-string v2, "/client/notifyServerCreate"

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$d;

    .line 27
    .line 28
    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->n:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-void
.end method

.method public c(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/transfer/impl/client/g;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/impl/client/g;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/transsion/transfer/impl/client/TransferClient;->m0(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function2;)V
    .locals 6

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_1
    iget-boolean v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "connect: socket:"

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, ", socket#isOpen:"

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ", socketConnecting:"

    .line 66
    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v0, v1, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    const/4 v1, 0x0

    .line 89
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "connect is process"

    .line 94
    .line 95
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iput-boolean v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    .line 100
    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->W(Lkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 5

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 16
    .line 17
    const-string v2, "/client/getTransferFilesList"

    .line 18
    .line 19
    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;

    .line 32
    .line 33
    invoke-direct {v2, p2, p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public f(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 1

    .line 1
    const-string v0, "fileData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/impl/client/o;->t(Lcom/transsion/transfer/impl/entity/FileData;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public g(Lcom/transsion/transfer/impl/f;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    :cond_0
    return v1
.end method

.method public i(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "root"

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "files"

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "notifyFileListener"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct/range {p0 .. p0}, Lcom/transsion/transfer/impl/client/TransferClient;->c0()Lcom/transsion/transfer/impl/client/n;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4, v1}, Lcom/transsion/transfer/impl/client/n;->e(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v6, v5

    .line 58
    check-cast v6, Lcom/transsion/transfer/impl/entity/FileData;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->verifyFile()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    iget-object v8, v0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    sget-object v10, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    .line 73
    .line 74
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    .line 79
    .line 80
    .line 81
    move-result-wide v13

    .line 82
    const-wide/16 v15, -0x1

    .line 83
    .line 84
    const/16 v17, 0x0

    .line 85
    .line 86
    invoke-virtual/range {v8 .. v17}, Lcom/transsion/transfer/impl/client/TransferClient$h;->J(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_1
    if-nez v7, :cond_0

    .line 97
    .line 98
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v3}, Lcom/transsion/transfer/impl/client/TransferClient;->o0(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v3, "transferFiles: "

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2, v1}, Lcom/transsion/transfer/impl/client/o;->p(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lcom/transsion/transfer/impl/f;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
