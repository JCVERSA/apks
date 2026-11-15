.class public Lo96;
.super Lj1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:Loa;


# direct methods
.method public constructor <init>(IILx94;Ltc8;Lu08;Loa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    iput p1, p0, Lo96;->b:I

    iput p2, p0, Lo96;->c:I

    invoke-virtual {p3}, Lx94;->e()[B

    move-result-object p1

    iput-object p1, p0, Lo96;->d:[B

    invoke-virtual {p4}, Ltc8;->h()[B

    move-result-object p1

    iput-object p1, p0, Lo96;->e:[B

    invoke-virtual {p5}, Lu08;->a()[B

    move-result-object p1

    iput-object p1, p0, Lo96;->f:[B

    iput-object p6, p0, Lo96;->g:Loa;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lo96;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lg1;

    invoke-virtual {v0}, Lg1;->F()I

    move-result v0

    iput v0, p0, Lo96;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lm1;

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    iput-object v0, p0, Lo96;->d:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lm1;

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    iput-object v0, p0, Lo96;->e:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v0

    check-cast v0, Lm1;

    invoke-virtual {v0}, Lm1;->z()[B

    move-result-object v0

    iput-object v0, p0, Lo96;->f:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object p1

    invoke-static {p1}, Loa;->o(Ljava/lang/Object;)Loa;

    move-result-object p1

    iput-object p1, p0, Lo96;->g:Loa;

    return-void
.end method

.method public static p(Ljava/lang/Object;)Lo96;
    .locals 1

    instance-of v0, p0, Lo96;

    if-eqz v0, :cond_0

    check-cast p0, Lo96;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lo96;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lo96;-><init>(Ls1;)V

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

    iget v2, p0, Lo96;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lg1;

    iget v2, p0, Lo96;->c:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lg1;-><init>(J)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lo96;->d:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lo96;->e:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    new-instance v1, Lwp1;

    iget-object v2, p0, Lo96;->f:[B

    invoke-direct {v1, v2}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    iget-object p0, p0, Lo96;->g:Loa;

    invoke-virtual {v0, p0}, Ly0;->a(Lx0;)V

    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()Loa;
    .locals 0

    iget-object p0, p0, Lo96;->g:Loa;

    return-object p0
.end method

.method public n()Lx94;
    .locals 1

    new-instance v0, Lx94;

    iget-object p0, p0, Lo96;->d:[B

    invoke-direct {v0, p0}, Lx94;-><init>([B)V

    return-object v0
.end method

.method public o()Ltc8;
    .locals 2

    new-instance v0, Ltc8;

    invoke-virtual {p0}, Lo96;->n()Lx94;

    move-result-object v1

    iget-object p0, p0, Lo96;->e:[B

    invoke-direct {v0, v1, p0}, Ltc8;-><init>(Lx94;[B)V

    return-object v0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Lo96;->c:I

    return p0
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lo96;->b:I

    return p0
.end method

.method public s()Lu08;
    .locals 1

    new-instance v0, Lu08;

    iget-object p0, p0, Lo96;->f:[B

    invoke-direct {v0, p0}, Lu08;-><init>([B)V

    return-object v0
.end method
