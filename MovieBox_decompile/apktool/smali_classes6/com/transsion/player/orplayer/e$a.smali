.class public abstract Lcom/transsion/player/orplayer/e$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/orplayer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static A(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static B(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static C(Lcom/transsion/player/orplayer/e;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static D(Lcom/transsion/player/orplayer/e;Lqn/c;)V
    .locals 0

    .line 1
    const-string p0, "tracks"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static E(Lcom/transsion/player/orplayer/e;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static F(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic G(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onVideoPause(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onVideoPause"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static H(Lcom/transsion/player/orplayer/e;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public static I(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic J(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onVideoStart(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onVideoStart"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static K(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Lcom/transsion/player/orplayer/e;ZIILqn/d;)V
    .locals 0

    .line 1
    const-string p0, "dashVideoTracksGroup"

    .line 2
    .line 3
    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static d(Lcom/transsion/player/orplayer/e;JLgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static e(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic f(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onCompletion(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onCompletion"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static g(Lcom/transsion/player/orplayer/e;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static h(Lcom/transsion/player/orplayer/e;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static i(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic j(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onLoadingBegin(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onLoadingBegin"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static k(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic l(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onLoadingEnd(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onLoadingEnd"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static m(Lcom/transsion/player/orplayer/e;IFLgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic n(Lcom/transsion/player/orplayer/e;IFLgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e;->onLoadingProgress(IFLgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onLoadingProgress"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static o(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static p(Lcom/transsion/player/orplayer/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static q(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V
    .locals 0

    .line 1
    const-string p0, "errorInfo"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic r(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/PlayError;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/player/orplayer/e;->onPlayError(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onPlayError"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static s(Lcom/transsion/player/orplayer/e;Lcom/transsion/player/orplayer/global/TnPlayerType;Lgn/e;)V
    .locals 0

    .line 1
    const-string p0, "errorType"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static t(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic u(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onPlayerRelease(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onPlayerRelease"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static v(Lcom/transsion/player/orplayer/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static w(Lcom/transsion/player/orplayer/e;Lgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic x(Lcom/transsion/player/orplayer/e;Lgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/player/orplayer/e;->onPrepare(Lgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onPrepare"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static y(Lcom/transsion/player/orplayer/e;JLgn/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic z(Lcom/transsion/player/orplayer/e;JLgn/e;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x2

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/e;->onProgress(JLgn/e;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: onProgress"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method
