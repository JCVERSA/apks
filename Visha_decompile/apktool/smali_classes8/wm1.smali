.class public Lwm1;
.super Lw43$b;
.source "SourceFile"


# static fields
.field public static final h:Ljava/math/BigInteger;

.field public static final i:[I


# instance fields
.field public g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lvm1;->a:[I

    invoke-static {v0}, Lpy6;->J([I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lwm1;->h:Ljava/math/BigInteger;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lwm1;->i:[I

    return-void

    :array_0
    .array-data 4
        0x4a0ea0b0    # 2336812.0f
        -0x3b11e4d9
        -0x52d01b88
        0x2f431806
        0x3dfbd7a7
        0x2b4d0099
        0x4fc1df0b
        0x2b832480
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw43$b;-><init>()V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iput-object v0, p0, Lwm1;->g:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lw43$b;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lwm1;->h:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Lvm1;->d(Ljava/math/BigInteger;)[I

    move-result-object p1

    iput-object p1, p0, Lwm1;->g:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for Curve25519FieldElement"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lw43$b;-><init>()V

    iput-object p1, p0, Lwm1;->g:[I

    return-void
.end method


# virtual methods
.method public a(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    check-cast p1, Lwm1;

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p0, p1, v0}, Lvm1;->a([I[I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public b()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0, v0}, Lvm1;->b([I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public d(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    check-cast p1, Lwm1;

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p1, v0}, Lvm1;->e([I[I)V

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {v0, p0, v0}, Lvm1;->g([I[I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lwm1;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lwm1;

    iget-object p0, p0, Lwm1;->g:[I

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p0, p1}, Lpy6;->n([I[I)Z

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    sget-object p0, Lwm1;->h:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public g()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0, v0}, Lvm1;->e([I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0}, Lpy6;->t([I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lwm1;->h:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object p0, p0, Lwm1;->g:[I

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p0, v1, v2}, Lci;->z([III)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0}, Lpy6;->v([I)Z

    move-result p0

    return p0
.end method

.method public j(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    check-cast p1, Lwm1;

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p0, p1, v0}, Lvm1;->g([I[I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public m()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0, v0}, Lvm1;->i([I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public n()Lw43;
    .locals 4

    iget-object v0, p0, Lwm1;->g:[I

    invoke-static {v0}, Lpy6;->v([I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lpy6;->t([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lpy6;->i()[I

    move-result-object p0

    invoke-static {v0, p0}, Lvm1;->n([I[I)V

    invoke-static {p0, v0, p0}, Lvm1;->g([I[I[I)V

    invoke-static {p0, p0}, Lvm1;->n([I[I)V

    invoke-static {p0, v0, p0}, Lvm1;->g([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v1

    invoke-static {p0, v1}, Lvm1;->n([I[I)V

    invoke-static {v1, v0, v1}, Lvm1;->g([I[I[I)V

    invoke-static {}, Lpy6;->i()[I

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lvm1;->o([II[I)V

    invoke-static {v2, p0, v2}, Lvm1;->g([I[I[I)V

    const/4 v3, 0x4

    invoke-static {v2, v3, p0}, Lvm1;->o([II[I)V

    invoke-static {p0, v1, p0}, Lvm1;->g([I[I[I)V

    invoke-static {p0, v3, v2}, Lvm1;->o([II[I)V

    invoke-static {v2, v1, v2}, Lvm1;->g([I[I[I)V

    const/16 v3, 0xf

    invoke-static {v2, v3, v1}, Lvm1;->o([II[I)V

    invoke-static {v1, v2, v1}, Lvm1;->g([I[I[I)V

    const/16 v3, 0x1e

    invoke-static {v1, v3, v2}, Lvm1;->o([II[I)V

    invoke-static {v2, v1, v2}, Lvm1;->g([I[I[I)V

    const/16 v3, 0x3c

    invoke-static {v2, v3, v1}, Lvm1;->o([II[I)V

    invoke-static {v1, v2, v1}, Lvm1;->g([I[I[I)V

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Lvm1;->o([II[I)V

    invoke-static {v2, p0, v2}, Lvm1;->g([I[I[I)V

    const/16 v3, 0x78

    invoke-static {v2, v3, p0}, Lvm1;->o([II[I)V

    invoke-static {p0, v1, p0}, Lvm1;->g([I[I[I)V

    invoke-static {p0, p0}, Lvm1;->n([I[I)V

    invoke-static {p0, v1}, Lvm1;->n([I[I)V

    invoke-static {v0, v1}, Lpy6;->n([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lwm1;

    invoke-direct {v0, p0}, Lwm1;-><init>([I)V

    return-object v0

    :cond_1
    sget-object v2, Lwm1;->i:[I

    invoke-static {p0, v2, p0}, Lvm1;->g([I[I[I)V

    invoke-static {p0, v1}, Lvm1;->n([I[I)V

    invoke-static {v0, v1}, Lpy6;->n([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lwm1;

    invoke-direct {v0, p0}, Lwm1;-><init>([I)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public o()Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0, v0}, Lvm1;->n([I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public r(Lw43;)Lw43;
    .locals 1

    invoke-static {}, Lpy6;->i()[I

    move-result-object v0

    iget-object p0, p0, Lwm1;->g:[I

    check-cast p1, Lwm1;

    iget-object p1, p1, Lwm1;->g:[I

    invoke-static {p0, p1, v0}, Lvm1;->r([I[I[I)V

    new-instance p0, Lwm1;

    invoke-direct {p0, v0}, Lwm1;-><init>([I)V

    return-object p0
.end method

.method public s()Z
    .locals 2

    iget-object p0, p0, Lwm1;->g:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lpy6;->q([II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lwm1;->g:[I

    invoke-static {p0}, Lpy6;->J([I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
