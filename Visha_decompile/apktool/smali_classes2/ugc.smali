.class public final Lugc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lugc$a;,
        Lugc$c;,
        Lugc$b;
    }
.end annotation


# static fields
.field public static final h:Luk3;


# instance fields
.field public a:Lqk3;

.field public b:Lfva;

.field public c:I

.field public d:J

.field public e:Lugc$b;

.field public f:I

.field public g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsgc;

    invoke-direct {v0}, Lsgc;-><init>()V

    sput-object v0, Lugc;->h:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lugc;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lugc;->d:J

    const/4 v2, -0x1

    iput v2, p0, Lugc;->f:I

    iput-wide v0, p0, Lugc;->g:J

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Lugc;->f()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lugc;->b:Lfva;

    invoke-static {v0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lugc;->a:Lqk3;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic f()[Lnk3;
    .locals 3

    new-instance v0, Lugc;

    invoke-direct {v0}, Lugc;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 2

    iput-object p1, p0, Lugc;->a:Lqk3;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    iput-object v0, p0, Lugc;->b:Lfva;

    invoke-interface {p1}, Lqk3;->endTracks()V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 2

    invoke-direct {p0}, Lugc;->e()V

    iget p2, p0, Lugc;->c:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lugc;->j(Lpk3;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lugc;->k(Lpk3;)V

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lugc;->h(Lpk3;)V

    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lugc;->i(Lpk3;)V

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lugc;->g(Lpk3;)V

    return v0
.end method

.method public c(Lpk3;)Z
    .locals 0

    invoke-static {p1}, Lwgc;->a(Lpk3;)Z

    move-result p0

    return p0
.end method

.method public final g(Lpk3;)V
    .locals 6

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget v0, p0, Lugc;->f:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    const/4 p1, 0x4

    iput p1, p0, Lugc;->c:I

    return-void

    :cond_1
    invoke-static {p1}, Lwgc;->a(Lpk3;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lpk3;->getPeekPosition()J

    move-result-wide v2

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    invoke-interface {p1, v0}, Lpk3;->skipFully(I)V

    iput v1, p0, Lugc;->c:I

    return-void

    :cond_2
    const-string p0, "Unsupported or unrecognized wav file type."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final h(Lpk3;)V
    .locals 6

    invoke-static {p1}, Lwgc;->b(Lpk3;)Lvgc;

    move-result-object v3

    iget p1, v3, Lvgc;->a:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lugc$a;

    iget-object v0, p0, Lugc;->a:Lqk3;

    iget-object v1, p0, Lugc;->b:Lfva;

    invoke-direct {p1, v0, v1, v3}, Lugc$a;-><init>(Lqk3;Lfva;Lvgc;)V

    iput-object p1, p0, Lugc;->e:Lugc$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    new-instance p1, Lugc$c;

    iget-object v1, p0, Lugc;->a:Lqk3;

    iget-object v2, p0, Lugc;->b:Lfva;

    const-string v4, "audio/g711-alaw"

    const/4 v5, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lugc$c;-><init>(Lqk3;Lfva;Lvgc;Ljava/lang/String;I)V

    iput-object p1, p0, Lugc;->e:Lugc$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    new-instance p1, Lugc$c;

    iget-object v1, p0, Lugc;->a:Lqk3;

    iget-object v2, p0, Lugc;->b:Lfva;

    const-string v4, "audio/g711-mlaw"

    const/4 v5, -0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lugc$c;-><init>(Lqk3;Lfva;Lvgc;Ljava/lang/String;I)V

    iput-object p1, p0, Lugc;->e:Lugc$b;

    goto :goto_0

    :cond_2
    iget v0, v3, Lvgc;->f:I

    invoke-static {p1, v0}, Lygc;->a(II)I

    move-result v5

    if-eqz v5, :cond_3

    new-instance p1, Lugc$c;

    iget-object v1, p0, Lugc;->a:Lqk3;

    iget-object v2, p0, Lugc;->b:Lfva;

    const-string v4, "audio/raw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lugc$c;-><init>(Lqk3;Lfva;Lvgc;Ljava/lang/String;I)V

    iput-object p1, p0, Lugc;->e:Lugc$b;

    :goto_0
    const/4 p1, 0x3

    iput p1, p0, Lugc;->c:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported WAV format type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Lvgc;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final i(Lpk3;)V
    .locals 2

    invoke-static {p1}, Lwgc;->c(Lpk3;)J

    move-result-wide v0

    iput-wide v0, p0, Lugc;->d:J

    const/4 p1, 0x2

    iput p1, p0, Lugc;->c:I

    return-void
.end method

.method public final j(Lpk3;)I
    .locals 6

    iget-wide v0, p0, Lugc;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-wide v2, p0, Lugc;->g:J

    invoke-interface {p1}, Lpk3;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object p0, p0, Lugc;->e:Lugc$b;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lugc$b;

    invoke-interface {p0, p1, v2, v3}, Lugc$b;->a(Lpk3;J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1
.end method

.method public final k(Lpk3;)V
    .locals 8

    invoke-static {p1}, Lwgc;->e(Lpk3;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lugc;->f:I

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lugc;->d:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    move-wide v0, v2

    :cond_0
    iget v2, p0, Lugc;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lugc;->g:J

    invoke-interface {p1}, Lpk3;->getLength()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lugc;->g:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data exceeds input length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lugc;->g:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lugc;->g:J

    :cond_1
    iget-object p1, p0, Lugc;->e:Lugc$b;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lugc$b;

    iget v0, p0, Lugc;->f:I

    iget-wide v1, p0, Lugc;->g:J

    invoke-interface {p1, v0, v1, v2}, Lugc$b;->init(IJ)V

    const/4 p1, 0x4

    iput p1, p0, Lugc;->c:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lugc;->c:I

    iget-object p0, p0, Lugc;->e:Lugc$b;

    if-eqz p0, :cond_1

    invoke-interface {p0, p3, p4}, Lugc$b;->reset(J)V

    :cond_1
    return-void
.end method
