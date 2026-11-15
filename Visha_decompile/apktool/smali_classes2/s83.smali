.class public Ls83;
.super Lo83;
.source "SourceFile"


# instance fields
.field public final j:Lt83;


# direct methods
.method public constructor <init>(ZLt83;)V
    .locals 3

    invoke-direct {p0}, Lo83;-><init>()V

    iput-boolean p1, p0, Lo83;->a:Z

    iput-object p2, p0, Ls83;->j:Lt83;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->b:I

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lt83;->k(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lo83;->c:J

    const-wide/16 v1, 0x28

    invoke-virtual {p2, v0, v1, v2}, Lt83;->k(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lo83;->d:J

    const-wide/16 v1, 0x36

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->e:I

    const-wide/16 v1, 0x38

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->f:I

    const-wide/16 v1, 0x3a

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->g:I

    const-wide/16 v1, 0x3c

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->h:I

    const-wide/16 v1, 0x3e

    invoke-virtual {p2, v0, v1, v2}, Lt83;->h(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lo83;->i:I

    return-void
.end method


# virtual methods
.method public a(JI)Ln83;
    .locals 7

    new-instance v6, Le43;

    iget-object v1, p0, Ls83;->j:Lt83;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Le43;-><init>(Lt83;Lo83;JI)V

    return-object v6
.end method

.method public b(J)Lp83;
    .locals 2

    new-instance v0, Lvh8;

    iget-object v1, p0, Ls83;->j:Lt83;

    invoke-direct {v0, v1, p0, p1, p2}, Lvh8;-><init>(Lt83;Lo83;J)V

    return-object v0
.end method

.method public c(I)Lq83;
    .locals 2

    new-instance v0, Laa9;

    iget-object v1, p0, Ls83;->j:Lt83;

    invoke-direct {v0, v1, p0, p1}, Laa9;-><init>(Lt83;Lo83;I)V

    return-object v0
.end method
