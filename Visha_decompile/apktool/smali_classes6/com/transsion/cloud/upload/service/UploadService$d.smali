.class public Lcom/transsion/cloud/upload/service/UploadService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/upload/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/upload/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/service/UploadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 0

    invoke-super {p0, p1}, Lvz6;->onConnect(I)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "onDisconnect"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_UploadService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iget-object v0, v0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    sget-object v1, Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;->NO:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->R()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iput-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    return-void
.end method

.method public onMobile()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/transsion/playercommon/core/MainApp;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_UploadService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iget-object v0, v0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    sget-object v1, Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;->MOBILE:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/cloud/upload/service/UploadService$c;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->D(Lcom/transsion/cloud/upload/service/UploadService$c;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/playercommon/R$string;->visha_uploading_by_mobile:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iput-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    return-void
.end method

.method public onWifi()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iget-object v0, v0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    sget-object v1, Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;->WIFI:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->Z()Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    iput-object v1, p0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    return-void
.end method

.method public unknowNet()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$d;->a:Lcom/transsion/cloud/upload/service/UploadService;

    sget-object v0, Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;->UNKNOWN:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    iput-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService;->b:Lcom/transsion/cloud/updownload/common/TransferNetInfo$NetType;

    const-string p0, "unknownNet"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_cloud_UploadService"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
