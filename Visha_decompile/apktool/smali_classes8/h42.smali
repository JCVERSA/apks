.class public Lh42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Object;

.field public final d:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, p2, v0, v1}, Lh42;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh42;->a:Ljava/lang/String;

    iput p2, p0, Lh42;->b:I

    iput-object p3, p0, Lh42;->c:Ljava/lang/Object;

    instance-of p1, p3, Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-nez p1, :cond_0

    iput-object p4, p0, Lh42;->d:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh42;->a:Ljava/lang/String;

    return-object p0
.end method
