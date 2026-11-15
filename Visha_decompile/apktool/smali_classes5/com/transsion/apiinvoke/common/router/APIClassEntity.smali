.class public Lcom/transsion/apiinvoke/common/router/APIClassEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public apiName:Ljava/lang/String;

.field public constructorType:I

.field public livingTime:J

.field public packageName:Ljava/lang/String;

.field public serviceClass:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocalServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;IJ)Lcom/transsion/apiinvoke/common/router/APIClassEntity;
    .locals 1

    new-instance v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;

    invoke-direct {v0}, Lcom/transsion/apiinvoke/common/router/APIClassEntity;-><init>()V

    iput-object p0, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->apiName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->serviceClass:Ljava/lang/Class;

    iput p3, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->constructorType:I

    iput-wide p4, v0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->livingTime:J

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APIClassEntity{apiName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->apiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serviceClass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->serviceClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", constructorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->constructorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", livingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/apiinvoke/common/router/APIClassEntity;->livingTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
