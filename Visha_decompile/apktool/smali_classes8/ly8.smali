.class public Lly8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lly8$a;,
        Lly8$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public final b:Lbb3;

.field public c:[B

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lbb3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lly8;->d:I

    iput v0, p0, Lly8;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lly8;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, Lly8;->b:Lbb3;

    return-void
.end method

.method public static synthetic a(Lsb2;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lly8;->d(Lsb2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lsb2;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lsb2;->c()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "SHA3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public b(Lkx5;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 5

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lly8;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, Lly8;->b:Lbb3;

    iget v3, p0, Lly8;->e:I

    invoke-interface {v2, v3}, Lbb3;->get(I)Lab3;

    move-result-object v2

    new-instance v3, Lly8$a;

    iget-object v4, p0, Lly8;->c:[B

    iget p0, p0, Lly8;->d:I

    invoke-direct {v3, p1, p2, v4, p0}, Lly8$a;-><init>(Lkx5;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lab3;Ler1;Z)V

    return-object v0
.end method

.method public c(Lsb2;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;
    .locals 5

    new-instance v0, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lly8;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, Lly8;->b:Lbb3;

    iget v3, p0, Lly8;->e:I

    invoke-interface {v2, v3}, Lbb3;->get(I)Lab3;

    move-result-object v2

    new-instance v3, Lly8$b;

    iget-object v4, p0, Lly8;->c:[B

    iget p0, p0, Lly8;->d:I

    invoke-direct {v3, p1, p2, v4, p0}, Lly8$b;-><init>(Lsb2;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/bouncycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lab3;Ler1;Z)V

    return-object v0
.end method

.method public e([B)Lly8;
    .locals 0

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lly8;->c:[B

    return-object p0
.end method
