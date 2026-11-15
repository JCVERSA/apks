.class public Lp99;
.super Lt43$b;
.source "SourceFile"


# static fields
.field public static final k:[Lw43;


# instance fields
.field public j:Lq99;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo99;

    sget-object v1, Ls43;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lo99;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw43;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lp99;->k:[Lw43;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x57

    const/4 v1, 0x0

    const/16 v2, 0x199

    invoke-direct {p0, v2, v0, v1, v1}, Lt43$b;-><init>(IIII)V

    new-instance v0, Lq99;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lq99;-><init>(Lt43;Lw43;Lw43;)V

    iput-object v0, p0, Lp99;->j:Lq99;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp99;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->b:Lw43;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp99;->l(Ljava/math/BigInteger;)Lw43;

    move-result-object v0

    iput-object v0, p0, Lt43;->c:Lw43;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F83B2D4EA20400EC4557D5ED3E3E7CA5B4B5C83B8E01E5FCF"

    invoke-static {v1}, Ljp4;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lt43;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt43;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lt43;->f:I

    return-void
.end method

.method public static synthetic F()[Lw43;
    .locals 1

    sget-object v0, Lp99;->k:[Lw43;

    return-object v0
.end method


# virtual methods
.method public A(I)Z
    .locals 0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public G(Lw43;Lw43;[Lw43;)Li53;
    .locals 1

    new-instance v0, Lq99;

    invoke-direct {v0, p0, p1, p2, p3}, Lq99;-><init>(Lt43;Lw43;Lw43;[Lw43;)V

    return-object v0
.end method

.method public d()Lt43;
    .locals 0

    new-instance p0, Lp99;

    invoke-direct {p0}, Lp99;-><init>()V

    return-object p0
.end method

.method public f([Li53;II)Lb53;
    .locals 6

    mul-int/lit8 v0, p3, 0xe

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Li53;->n()Lw43;

    move-result-object v5

    check-cast v5, Lo99;

    iget-object v5, v5, Lo99;->g:[J

    invoke-static {v5, v1, v0, v3}, Lsy6;->a([JI[JI)V

    add-int/lit8 v5, v3, 0x7

    invoke-virtual {v4}, Li53;->o()Lw43;

    move-result-object v4

    check-cast v4, Lo99;

    iget-object v4, v4, Lo99;->g:[J

    invoke-static {v4, v1, v0, v5}, Lsy6;->a([JI[JI)V

    add-int/lit8 v3, v3, 0xe

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lp99$a;

    invoke-direct {p1, p0, p3, v0}, Lp99$a;-><init>(Lp99;I[J)V

    return-object p1
.end method

.method public h(Lw43;Lw43;)Li53;
    .locals 1

    new-instance v0, Lq99;

    invoke-direct {v0, p0, p1, p2}, Lq99;-><init>(Lt43;Lw43;Lw43;)V

    return-object v0
.end method

.method public l(Ljava/math/BigInteger;)Lw43;
    .locals 0

    new-instance p0, Lo99;

    invoke-direct {p0, p1}, Lo99;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public r()I
    .locals 0

    const/16 p0, 0x199

    return p0
.end method

.method public s()Li53;
    .locals 0

    iget-object p0, p0, Lp99;->j:Lq99;

    return-object p0
.end method
