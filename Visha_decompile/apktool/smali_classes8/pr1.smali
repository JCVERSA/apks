.class public Lpr1;
.super Lj1;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public b:Ll1;

.field public c:Lnr1;

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lpr1;->e:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Ll1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    sget-object v0, Lpr1;->e:[B

    iput-object v0, p0, Lpr1;->d:[B

    iput-object p1, p0, Lpr1;->b:Ll1;

    return-void
.end method

.method public constructor <init>(Lnr1;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    sget-object v0, Lpr1;->e:[B

    iput-object v0, p0, Lpr1;->d:[B

    iput-object p1, p0, Lpr1;->c:Lnr1;

    return-void
.end method

.method public static n()[B
    .locals 1

    sget-object v0, Lpr1;->e:[B

    invoke-static {v0}, Lci;->f([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static p(Ljava/lang/Object;)Lpr1;
    .locals 4

    instance-of v0, p0, Lpr1;

    if-eqz v0, :cond_0

    check-cast p0, Lpr1;

    return-object p0

    :cond_0
    const-string v0, "object parse error"

    if-eqz p0, :cond_4

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object v2

    instance-of v2, v2, Ll1;

    if-eqz v2, :cond_1

    new-instance v2, Lpr1;

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Ll1;->D(Ljava/lang/Object;)Ll1;

    move-result-object v1

    invoke-direct {v2, v1}, Lpr1;-><init>(Ll1;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lpr1;

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object v1

    invoke-static {v1}, Lnr1;->q(Ljava/lang/Object;)Lnr1;

    move-result-object v1

    invoke-direct {v2, v1}, Lpr1;-><init>(Lnr1;)V

    :goto_0
    invoke-virtual {p0}, Ls1;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ls1;->A(I)Lx0;

    move-result-object p0

    invoke-static {p0}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object p0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    iput-object p0, v2, Lpr1;->d:[B

    array-length p0, p0

    sget-object v1, Lpr1;->e:[B

    array-length v1, v1

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 3

    new-instance v0, Ly0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0;-><init>(I)V

    iget-object v1, p0, Lpr1;->b:Ll1;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lpr1;->c:Lnr1;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lpr1;->d:[B

    sget-object v2, Lpr1;->e:[B

    invoke-static {v1, v2}, Lci;->b([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lwp1;

    iget-object p0, p0, Lpr1;->d:[B

    invoke-direct {v1, p0}, Lwp1;-><init>([B)V

    invoke-virtual {v0, v1}, Ly0;->a(Lx0;)V

    :cond_1
    new-instance p0, Laq1;

    invoke-direct {p0, v0}, Laq1;-><init>(Ly0;)V

    return-object p0
.end method

.method public m()[B
    .locals 0

    iget-object p0, p0, Lpr1;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public o()Lnr1;
    .locals 0

    iget-object p0, p0, Lpr1;->c:Lnr1;

    return-object p0
.end method

.method public q()Ll1;
    .locals 0

    iget-object p0, p0, Lpr1;->b:Ll1;

    return-object p0
.end method

.method public r()Z
    .locals 0

    iget-object p0, p0, Lpr1;->b:Ll1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
