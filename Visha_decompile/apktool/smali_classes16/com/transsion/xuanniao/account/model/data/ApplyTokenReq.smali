.class public Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private applyTime:J

.field private deviceId:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->applyTime:J

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getSign()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->sign:Ljava/lang/String;

    return-object p0
.end method

.method public setApplyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->applyTime:J

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/ApplyTokenReq;->sign:Ljava/lang/String;

    return-void
.end method
