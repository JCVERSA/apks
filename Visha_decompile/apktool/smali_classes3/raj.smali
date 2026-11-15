.class public final Lraj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lw4f;

.field public final c:I

.field public final d:Lbnj;

.field public final e:J

.field public final f:Lw4f;

.field public final g:I

.field public final h:Lbnj;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLw4f;ILbnj;JLw4f;ILbnj;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lraj;->a:J

    iput-object p3, p0, Lraj;->b:Lw4f;

    iput p4, p0, Lraj;->c:I

    iput-object p5, p0, Lraj;->d:Lbnj;

    iput-wide p6, p0, Lraj;->e:J

    iput-object p8, p0, Lraj;->f:Lw4f;

    iput p9, p0, Lraj;->g:I

    iput-object p10, p0, Lraj;->h:Lbnj;

    iput-wide p11, p0, Lraj;->i:J

    iput-wide p13, p0, Lraj;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lraj;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lraj;

    iget-wide v2, p0, Lraj;->a:J

    iget-wide v4, p1, Lraj;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lraj;->c:I

    iget v3, p1, Lraj;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lraj;->e:J

    iget-wide v4, p1, Lraj;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lraj;->g:I

    iget v3, p1, Lraj;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lraj;->i:J

    iget-wide v4, p1, Lraj;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lraj;->j:J

    iget-wide v4, p1, Lraj;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lraj;->b:Lw4f;

    iget-object v3, p1, Lraj;->b:Lw4f;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lraj;->d:Lbnj;

    iget-object v3, p1, Lraj;->d:Lbnj;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lraj;->f:Lw4f;

    iget-object v3, p1, Lraj;->f:Lw4f;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lraj;->h:Lbnj;

    iget-object p1, p1, Lraj;->h:Lbnj;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    iget-wide v0, p0, Lraj;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lraj;->b:Lw4f;

    iget v0, p0, Lraj;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lraj;->d:Lbnj;

    iget-wide v0, p0, Lraj;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lraj;->f:Lw4f;

    iget v0, p0, Lraj;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lraj;->h:Lbnj;

    iget-wide v0, p0, Lraj;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lraj;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
