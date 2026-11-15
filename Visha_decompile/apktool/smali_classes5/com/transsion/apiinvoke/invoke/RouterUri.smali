.class public Lcom/transsion/apiinvoke/invoke/RouterUri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7602255c93b60adeL


# instance fields
.field private apiMethod:Ljava/lang/String;

.field private apiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiName:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiName:Ljava/lang/String;

    return-object p0
.end method

.method public setApiMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiMethod:Ljava/lang/String;

    return-void
.end method

.method public setApiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/RouterUri;->apiMethod:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
