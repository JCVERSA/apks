.class public Lcom/hisavana/mediation/bean/CloudControlConfig;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;,
        Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->code:I

    .line 2
    .line 3
    return-void
.end method

.method public setData(Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->data:Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/bean/CloudControlConfig;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
