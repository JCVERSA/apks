.class public final Lux3;
.super Lsy9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lux3$a;
    }
.end annotation


# instance fields
.field public n:Lwx3;

.field public o:Lux3$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsy9;-><init>()V

    return-void
.end method

.method public static o([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static p(Lqw7;)Z
    .locals 4

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lqw7;->C()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lqw7;->E()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public f(Lqw7;)J
    .locals 1

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    invoke-static {v0}, Lux3;->o([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Lux3;->n(Lqw7;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public i(Lqw7;JLsy9$b;)Z
    .locals 6

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object v0

    iget-object v1, p0, Lux3;->n:Lwx3;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Lwx3;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lwx3;-><init>([BI)V

    iput-object p2, p0, Lux3;->n:Lwx3;

    const/16 p0, 0x9

    invoke-virtual {p1}, Lqw7;->f()I

    move-result p1

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lwx3;->g([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    iput-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Ltx3;->g(Lqw7;)Lwx3$a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lwx3;->b(Lwx3$a;)Lwx3;

    move-result-object p2

    iput-object p2, p0, Lux3;->n:Lwx3;

    new-instance p3, Lux3$a;

    invoke-direct {p3, p2, p1}, Lux3$a;-><init>(Lwx3;Lwx3$a;)V

    iput-object p3, p0, Lux3;->o:Lux3$a;

    return v2

    :cond_1
    invoke-static {v0}, Lux3;->o([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lux3;->o:Lux3$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lux3$a;->b(J)V

    iget-object p0, p0, Lux3;->o:Lux3$a;

    iput-object p0, p4, Lsy9$b;->b:Lde7;

    :cond_2
    iget-object p0, p4, Lsy9$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v2
.end method

.method public l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lsy9;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lux3;->n:Lwx3;

    iput-object p1, p0, Lux3;->o:Lux3$a;

    :cond_0
    return-void
.end method

.method public final n(Lqw7;)I
    .locals 2

    invoke-virtual {p1}, Lqw7;->d()[B

    move-result-object p0

    const/4 v0, 0x2

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x4

    shr-int/2addr p0, v0

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lqw7;->P(I)V

    invoke-virtual {p1}, Lqw7;->J()J

    :cond_1
    invoke-static {p1, p0}, Lsx3;->j(Lqw7;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqw7;->O(I)V

    return p0
.end method
