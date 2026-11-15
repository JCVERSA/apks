.class public abstract Lks0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
.end method

.method public b(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 0

    invoke-virtual {p0, p1}, Lks0;->a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method
