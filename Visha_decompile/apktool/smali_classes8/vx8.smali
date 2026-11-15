.class public Lvx8;
.super Ler5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lvx8;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ler5;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-virtual {p0}, Lvx8;->u()Lxl1;

    move-result-object p1

    invoke-static {p1}, Lzl1;->a(Lxl1;)V

    invoke-virtual {p0}, Lvx8;->reset()V

    return-void
.end method

.method public constructor <init>(Lvx8;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ler5;-><init>(Ler5;)V

    invoke-virtual {p0}, Lvx8;->u()Lxl1;

    move-result-object p0

    invoke-static {p0}, Lzl1;->a(Lxl1;)V

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    invoke-virtual {p0}, Ler5;->q()V

    iget-wide v0, p0, Ler5;->f:J

    invoke-static {v0, v1, p1, p2}, Lcv7;->i(J[BI)V

    iget-wide v0, p0, Ler5;->g:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcv7;->i(J[BI)V

    iget-wide v0, p0, Ler5;->h:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcv7;->i(J[BI)V

    iget-wide v0, p0, Ler5;->i:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcv7;->i(J[BI)V

    iget-wide v0, p0, Ler5;->j:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcv7;->i(J[BI)V

    iget-wide v0, p0, Ler5;->k:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lcv7;->i(J[BI)V

    invoke-virtual {p0}, Lvx8;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-384"

    return-object p0
.end method

.method public d()Len6;
    .locals 1

    new-instance v0, Lvx8;

    invoke-direct {v0, p0}, Lvx8;-><init>(Lvx8;)V

    return-object v0
.end method

.method public e(Len6;)V
    .locals 0

    check-cast p1, Lvx8;

    invoke-super {p0, p1}, Ler5;->p(Ler5;)V

    return-void
.end method

.method public g()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Ler5;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Ler5;->f:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Ler5;->g:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Ler5;->h:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Ler5;->i:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Ler5;->j:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Ler5;->k:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Ler5;->l:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Ler5;->m:J

    return-void
.end method

.method public u()Lxl1;
    .locals 2

    const/16 v0, 0x100

    iget-object v1, p0, Ler5;->a:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lylb;->a(Lsb2;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lxl1;

    move-result-object p0

    return-object p0
.end method
