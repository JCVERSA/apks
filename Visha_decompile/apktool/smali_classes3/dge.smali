.class public final Ldge;
.super Lmge;
.source "SourceFile"


# instance fields
.field public n:Ln9e;

.field public o:Lcge;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmge;-><init>()V

    return-void
.end method

.method public static j([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Lu4h;)J
    .locals 2

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object p0

    invoke-static {p0}, Ldge;->j([B)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lu4h;->n()[B

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

    move p0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->R()J

    :cond_1
    invoke-static {p1, p0}, Lj9e;->a(Lu4h;I)I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu4h;->l(I)V

    int-to-long p0, p0

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final b(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmge;->b(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Ldge;->n:Ln9e;

    iput-object p1, p0, Ldge;->o:Lcge;

    :cond_0
    return-void
.end method

.method public final c(Lu4h;JLjge;)Z
    .locals 6

    invoke-virtual {p1}, Lu4h;->n()[B

    move-result-object v0

    iget-object v1, p0, Ldge;->n:Ln9e;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Ln9e;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Ln9e;-><init>([BI)V

    iput-object p2, p0, Ldge;->n:Ln9e;

    const/16 p0, 0x9

    invoke-virtual {p1}, Lu4h;->x()I

    move-result p1

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ln9e;->c([BLhre;)Lerj;

    move-result-object p0

    invoke-virtual {p0}, Lerj;->b()Lgpj;

    move-result-object p0

    const-string p1, "audio/ogg"

    invoke-virtual {p0, p1}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {p0}, Lgpj;->K()Lerj;

    move-result-object p0

    iput-object p0, p4, Ljge;->a:Lerj;

    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lk9e;->b(Lu4h;)Lm9e;

    move-result-object p1

    invoke-virtual {v1, p1}, Ln9e;->f(Lm9e;)Ln9e;

    move-result-object p2

    iput-object p2, p0, Ldge;->n:Ln9e;

    new-instance p3, Lcge;

    invoke-direct {p3, p2, p1}, Lcge;-><init>(Ln9e;Lm9e;)V

    iput-object p3, p0, Ldge;->o:Lcge;

    return v2

    :cond_1
    invoke-static {v0}, Ldge;->j([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ldge;->o:Lcge;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lcge;->c(J)V

    iget-object p0, p0, Ldge;->o:Lcge;

    iput-object p0, p4, Ljge;->b:Lhge;

    :cond_2
    iget-object p0, p4, Ljge;->a:Lerj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_3
    return v2
.end method
