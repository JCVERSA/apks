.class public Lorg/bouncycastle/jcajce/PBKDF2Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Ljv0;

.field private final password:[C


# direct methods
.method public constructor <init>([CLjv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lci;->g([C)[C

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    iput-object p2, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Ljv0;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "PBKDF2"

    return-object p0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Ljv0;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    invoke-interface {v0, p0}, Ljv0;->convert([C)[B

    move-result-object p0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->converter:Ljv0;

    invoke-interface {p0}, Ljv0;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword()[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/PBKDF2Key;->password:[C

    return-object p0
.end method
