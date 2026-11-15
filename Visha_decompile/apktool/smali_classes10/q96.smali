.class public Lq96;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lu94;

.field public final e:Loa;


# direct methods
.method public constructor <init>(IILu94;Loa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput p1, p0, Lq96;->b:I

    iput p2, p0, Lq96;->c:I

    new-instance p1, Lu94;

    invoke-virtual {p3}, Lu94;->c()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lu94;-><init>([B)V

    iput-object p1, p0, Lq96;->d:Lu94;

    iput-object p4, p0, Lq96;->e:Loa;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lq96;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lq96;->c:I

    new-instance v0, Lu94;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    check-cast v1, Lm1;

    invoke-virtual {v1}, Lm1;->z()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lu94;-><init>([B)V

    iput-object v0, p0, Lq96;->d:Lu94;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p1

    iput-object p1, p0, Lq96;->e:Loa;

    return-void
.end method

.method public static o(Ljava/lang/Object;)Lq96;
    .locals 1

    instance-of v0, p0, Lq96;

    if-eqz v0, :cond_0

    check-cast p0, Lq96;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lq96;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lq96;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 4

    new-instance v0, Ly0;

    invoke-direct {v0}, Ly0;-><init>()V

    new-instance v1, Lg1;

    iget v2, p0, Lq96;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    iget v2, p0, Lq96;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lq96;->d:Lu94;

    invoke-virtual {v2}, Lu94;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lq96;->e:Loa;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Loa;
    .locals 0

    iget-object p0, p0, Lq96;->e:Loa;

    return-object p0
.end method

.method public n()Lu94;
    .locals 0

    iget-object p0, p0, Lq96;->d:Lu94;

    return-object p0
.end method

.method public p()I
    .locals 0

    iget p0, p0, Lq96;->b:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lq96;->c:I

    return p0
.end method
