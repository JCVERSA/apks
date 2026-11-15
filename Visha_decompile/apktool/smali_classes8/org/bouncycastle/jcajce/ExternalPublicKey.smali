.class public Lorg/bouncycastle/jcajce/ExternalPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final digest:[B

.field private final digestAlg:Loa;

.field private final location:Lkd4;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lkd4;Ljava/security/MessageDigest;)V
    .locals 1

    .line 3
    invoke-virtual {p3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsn6;->a(Ljava/lang/String;)Loa;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lorg/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lkd4;Loa;[B)V

    return-void
.end method

.method public constructor <init>(Lkd4;Loa;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->location:Lkd4;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Loa;

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    return-void
.end method

.method public constructor <init>(Lkk3;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lkk3;->o()Lkd4;

    move-result-object v0

    invoke-virtual {p1}, Lkk3;->m()Loa;

    move-result-object v1

    invoke-virtual {p1}, Lkk3;->n()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lkd4;Loa;[B)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "ExternalKey"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 5

    :try_start_0
    new-instance v0, Ls1a;

    new-instance v1, Loa;

    sget-object v2, Lb40;->L1:Ll1;

    invoke-direct {v1, v2}, Loa;-><init>(Ll1;)V

    new-instance v2, Lkk3;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->location:Lkd4;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->digestAlg:Loa;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/ExternalPublicKey;->digest:[B

    invoke-direct {v2, v3, v4, p0}, Lkk3;-><init>(Lkd4;Loa;[B)V

    invoke-direct {v0, v1, v2}, Ls1a;-><init>(Loa;Lx0;)V

    const-string p0, "DER"

    invoke-virtual {v0, p0}, Lj1;->l(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to encode composite key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "X.509"

    return-object p0
.end method
