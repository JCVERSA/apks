.class public final Lt9e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:Lxsg;

.field public final b:Lxsg;

.field public c:J


# direct methods
.method public constructor <init>([J[JJ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ln7g;->d(Z)V

    if-lez v1, :cond_1

    aget-wide v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    add-int/2addr v1, v3

    new-instance v0, Lxsg;

    invoke-direct {v0, v1}, Lxsg;-><init>(I)V

    iput-object v0, p0, Lt9e;->a:Lxsg;

    new-instance v2, Lxsg;

    invoke-direct {v2, v1}, Lxsg;-><init>(I)V

    iput-object v2, p0, Lt9e;->b:Lxsg;

    invoke-virtual {v0, v6, v7}, Lxsg;->c(J)V

    invoke-virtual {v2, v6, v7}, Lxsg;->c(J)V

    goto :goto_1

    :cond_1
    new-instance v0, Lxsg;

    invoke-direct {v0, v1}, Lxsg;-><init>(I)V

    iput-object v0, p0, Lt9e;->a:Lxsg;

    new-instance v0, Lxsg;

    invoke-direct {v0, v1}, Lxsg;-><init>(I)V

    iput-object v0, p0, Lt9e;->b:Lxsg;

    :goto_1
    iget-object v0, p0, Lt9e;->a:Lxsg;

    invoke-virtual {v0, p1}, Lxsg;->d([J)V

    iget-object p1, p0, Lt9e;->b:Lxsg;

    invoke-virtual {p1, p2}, Lxsg;->d([J)V

    iput-wide p3, p0, Lt9e;->c:J

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 8

    iget-object v0, p0, Lt9e;->b:Lxsg;

    invoke-virtual {v0}, Lxsg;->a()I

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lz9e;

    sget-object p1, Llae;->c:Llae;

    invoke-direct {p0, p1, p1}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lkfh;->w(Lxsg;JZZ)I

    move-result v2

    new-instance v3, Llae;

    invoke-virtual {v0, v2}, Lxsg;->b(I)J

    move-result-wide v4

    iget-object p0, p0, Lt9e;->a:Lxsg;

    invoke-virtual {p0, v2}, Lxsg;->b(I)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Llae;-><init>(JJ)V

    iget-wide v4, v3, Llae;->a:J

    cmp-long p1, v4, p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lxsg;->a()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    new-instance p1, Llae;

    invoke-virtual {v0, v2}, Lxsg;->b(I)J

    move-result-wide v0

    invoke-virtual {p0, v2}, Lxsg;->b(I)J

    move-result-wide v4

    invoke-direct {p1, v0, v1, v4, v5}, Llae;-><init>(JJ)V

    new-instance p0, Lz9e;

    invoke-direct {p0, v3, p1}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lz9e;

    invoke-direct {p0, v3, v3}, Lz9e;-><init>(Llae;Llae;)V

    return-object p0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lt9e;->c:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    iget-object p0, p0, Lt9e;->b:Lxsg;

    invoke-virtual {p0}, Lxsg;->a()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
