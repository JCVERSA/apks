.class public Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

.field public key:Ljava/lang/String;

.field public keyVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->keyVersion:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->keyVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public setAlgorithm(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->algorithm:Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKeyVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->keyVersion:I

    .line 2
    .line 3
    return-void
.end method
