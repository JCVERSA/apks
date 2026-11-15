.class public final Lcom/transsion/transfer/impl/PingPongHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/PingPongHelper$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lcom/transsion/transfer/androidasync/http/b0;

.field private final d:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final e:Ljava/util/Stack;

.field private f:Z

.field private g:I

.field private final h:I

.field private final i:Ljava/util/Timer;

.field private final j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V
    .locals 1

    .line 1
    const-string v0, "remoteIP"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "socket"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pingPongListener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput-boolean p2, p0, Lcom/transsion/transfer/impl/PingPongHelper;->b:Z

    .line 22
    .line 23
    iput-object p3, p0, Lcom/transsion/transfer/impl/PingPongHelper;->c:Lcom/transsion/transfer/androidasync/http/b0;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/transsion/transfer/impl/PingPongHelper;->d:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 26
    .line 27
    new-instance p1, Ljava/util/Stack;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->h:I

    .line 36
    .line 37
    new-instance p1, Lcom/transsion/transfer/impl/j;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/j;-><init>(Lcom/transsion/transfer/impl/PingPongHelper;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p3, p1}, Lcom/transsion/transfer/androidasync/http/b0;->D(Lcom/transsion/transfer/androidasync/http/b0$b;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Ljava/util/Timer;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    .line 51
    .line 52
    new-instance p1, Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/PingPongHelper$task$1;-><init>(Lcom/transsion/transfer/impl/PingPongHelper;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    .line 58
    .line 59
    return-void
.end method

.method public static synthetic a(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/PingPongHelper;->b(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/transsion/transfer/impl/PingPongHelper;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    .line 3
    .line 4
    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/transfer/impl/PingPongHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/transsion/transfer/impl/PingPongHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/impl/PingPongHelper;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/util/Stack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->e:Ljava/util/Stack;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/transfer/impl/PingPongHelper;)Lcom/transsion/transfer/impl/PingPongHelper$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->d:Lcom/transsion/transfer/impl/PingPongHelper$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/transfer/impl/PingPongHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/transfer/impl/PingPongHelper;)Lcom/transsion/transfer/androidasync/http/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->c:Lcom/transsion/transfer/androidasync/http/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/transfer/impl/PingPongHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lcom/transsion/transfer/impl/PingPongHelper;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/transfer/impl/PingPongHelper;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method private final m()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "server"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "client"

    .line 9
    .line 10
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "-"

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method


# virtual methods
.method public final n()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x7d0

    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->j:Lcom/transsion/transfer/impl/PingPongHelper$task$1;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/transfer/impl/PingPongHelper;->i:Ljava/util/Timer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
