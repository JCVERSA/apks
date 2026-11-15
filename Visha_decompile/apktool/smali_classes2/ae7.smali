.class public Lae7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final d:Luk3;


# instance fields
.field public a:Lqk3;

.field public b:Lsy9;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyd7;

    invoke-direct {v0}, Lyd7;-><init>()V

    sput-object v0, Lae7;->d:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lae7;->e()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e()[Lnk3;
    .locals 3

    new-instance v0, Lae7;

    invoke-direct {v0}, Lae7;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static f(Lqw7;)Lqw7;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqw7;->O(I)V

    return-object p0
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 0

    iput-object p1, p0, Lae7;->a:Lqk3;

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 4

    iget-object v0, p0, Lae7;->a:Lqk3;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lae7;->b:Lsy9;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lae7;->g(Lpk3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to determine bitstream type"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lae7;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lae7;->a:Lqk3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iget-object v1, p0, Lae7;->a:Lqk3;

    invoke-interface {v1}, Lqk3;->endTracks()V

    iget-object v1, p0, Lae7;->b:Lsy9;

    iget-object v3, p0, Lae7;->a:Lqk3;

    invoke-virtual {v1, v3, v0}, Lsy9;->d(Lqk3;Lfva;)V

    iput-boolean v2, p0, Lae7;->c:Z

    :cond_2
    iget-object p0, p0, Lae7;->b:Lsy9;

    invoke-virtual {p0, p1, p2}, Lsy9;->g(Lpk3;Lid8;)I

    move-result p0

    return p0
.end method

.method public c(Lpk3;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lae7;->g(Lpk3;)Z

    move-result p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lpk3;)Z
    .locals 5

    new-instance v0, Lce7;

    invoke-direct {v0}, Lce7;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lce7;->a(Lpk3;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lce7;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lce7;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lqw7;

    invoke-direct {v2, v0}, Lqw7;-><init>(I)V

    invoke-virtual {v2}, Lqw7;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lpk3;->peekFully([BII)V

    invoke-static {v2}, Lae7;->f(Lqw7;)Lqw7;

    move-result-object p1

    invoke-static {p1}, Lux3;->p(Lqw7;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lux3;

    invoke-direct {p1}, Lux3;-><init>()V

    iput-object p1, p0, Lae7;->b:Lsy9;

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lae7;->f(Lqw7;)Lqw7;

    move-result-object p1

    invoke-static {p1}, Lzfc;->r(Lqw7;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lzfc;

    invoke-direct {p1}, Lzfc;-><init>()V

    iput-object p1, p0, Lae7;->b:Lsy9;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lae7;->f(Lqw7;)Lqw7;

    move-result-object p1

    invoke-static {p1}, Lss7;->p(Lqw7;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lss7;

    invoke-direct {p1}, Lss7;-><init>()V

    iput-object p1, p0, Lae7;->b:Lsy9;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iget-object p0, p0, Lae7;->b:Lsy9;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lsy9;->m(JJ)V

    :cond_0
    return-void
.end method
