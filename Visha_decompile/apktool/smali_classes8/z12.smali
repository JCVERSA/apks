.class public Lz12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li95;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 0

    invoke-static {p1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 0

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 0

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljava/security/Signature;
    .locals 0

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
