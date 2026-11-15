.class public final Ll9e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:Ln9e;

.field public final b:J


# direct methods
.method public constructor <init>(Ln9e;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll9e;->a:Ln9e;

    iput-wide p2, p0, Ll9e;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 9

    iget-object v0, p0, Ll9e;->a:Ln9e;

    iget-object v1, v0, Ln9e;->k:Lm9e;

    invoke-static {v1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lm9e;->a:[J

    iget-object v1, v1, Lm9e;->b:[J

    invoke-virtual {v0, p1, p2}, Ln9e;->b(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v0}, Lkfh;->y([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    aget-wide v7, v2, v0

    :goto_0
    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v3, v1, v0

    :goto_1
    invoke-virtual {p0, v7, v8, v3, v4}, Ll9e;->b(JJ)Llae;

    move-result-object v3

    iget-wide v7, v3, Llae;->a:J

    cmp-long p1, v7, p1

    if-eqz p1, :cond_3

    array-length p1, v2

    add-int/2addr p1, v6

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v5

    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Ll9e;->b(JJ)Llae;

    move-result-object p0

    new-instance p1, Lz9e;

    invoke-direct {p1, v3, p0}, Lz9e;-><init>(Llae;Llae;)V

    return-object p1

    :cond_3
    :goto_2
    new-instance p0, Lz9e;

    invoke-direct {p0, v3, v3}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final b(JJ)Llae;
    .locals 3

    iget-object v0, p0, Ll9e;->a:Ln9e;

    iget v0, v0, Ln9e;->e:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    new-instance v0, Llae;

    iget-wide v1, p0, Ll9e;->b:J

    add-long/2addr v1, p3

    invoke-direct {v0, p1, p2, v1, v2}, Llae;-><init>(JJ)V

    return-object v0
.end method

.method public final zza()J
    .locals 2

    iget-object p0, p0, Ll9e;->a:Ln9e;

    invoke-virtual {p0}, Ln9e;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
