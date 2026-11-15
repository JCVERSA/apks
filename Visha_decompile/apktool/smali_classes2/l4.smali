.class public final Ll4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# static fields
.field public static final d:Luk3;


# instance fields
.field public final a:Lm4;

.field public final b:Lqw7;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    sput-object v0, Ll4;->d:Luk3;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Ll4;->a:Lm4;

    new-instance v0, Lqw7;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Ll4;->b:Lqw7;

    return-void
.end method

.method public static synthetic d()[Lnk3;
    .locals 1

    invoke-static {}, Ll4;->e()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic e()[Lnk3;
    .locals 3

    new-instance v0, Ll4;

    invoke-direct {v0}, Ll4;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 3

    iget-object p0, p0, Ll4;->a:Lm4;

    new-instance v0, Lnab$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnab$d;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lm4;->c(Lqk3;Lnab$d;)V

    invoke-interface {p1}, Lqk3;->endTracks()V

    new-instance p0, Lja9$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lja9$b;-><init>(J)V

    invoke-interface {p1, p0}, Lqk3;->d(Lja9;)V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 4

    iget-object p2, p0, Ll4;->b:Lqw7;

    invoke-virtual {p2}, Lqw7;->d()[B

    move-result-object p2

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lpk3;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Ll4;->b:Lqw7;

    invoke-virtual {p2, v1}, Lqw7;->O(I)V

    iget-object p2, p0, Ll4;->b:Lqw7;

    invoke-virtual {p2, p1}, Lqw7;->N(I)V

    iget-boolean p1, p0, Ll4;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Ll4;->a:Lm4;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lm4;->packetStarted(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll4;->c:Z

    :cond_1
    iget-object p1, p0, Ll4;->a:Lm4;

    iget-object p0, p0, Ll4;->b:Lqw7;

    invoke-virtual {p1, p0}, Lm4;->a(Lqw7;)V

    return v1
.end method

.method public c(Lpk3;)Z
    .locals 6

    new-instance p0, Lqw7;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lqw7;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v3

    invoke-interface {p1, v3, v1, v0}, Lpk3;->peekFully([BII)V

    invoke-virtual {p0, v1}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->F()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_4

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    invoke-interface {p1, v2}, Lpk3;->advancePeekPosition(I)V

    move v0, v1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {p1, v4, v1, v5}, Lpk3;->peekFully([BII)V

    invoke-virtual {p0, v1}, Lqw7;->O(I)V

    invoke-virtual {p0}, Lqw7;->I()I

    move-result v4

    const/16 v5, 0xb77

    if-eq v4, v5, :cond_1

    invoke-interface {p1}, Lpk3;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v3, v2

    const/16 v4, 0x2000

    if-lt v0, v4, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v3}, Lpk3;->advancePeekPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    add-int/2addr v0, v4

    const/4 v5, 0x4

    if-lt v0, v5, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0}, Lqw7;->d()[B

    move-result-object v4

    invoke-static {v4}, Ln4;->f([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, -0x6

    invoke-interface {p1, v4}, Lpk3;->advancePeekPosition(I)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lqw7;->P(I)V

    invoke-virtual {p0}, Lqw7;->B()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    invoke-interface {p1, v3}, Lpk3;->advancePeekPosition(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll4;->c:Z

    iget-object p0, p0, Ll4;->a:Lm4;

    invoke-virtual {p0}, Lm4;->seek()V

    return-void
.end method
