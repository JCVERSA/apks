.class public Lcom/transsion/sniffer_load/DownloadService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/DownloadService;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

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

    const-string v1, "visha_DownloadService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iget-object v0, v0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->NO:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->U()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iput-object v1, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

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

    const-string v1, "visha_DownloadService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iget-object v0, v0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->MOBILE:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/transsion/playercommon/core/MainApp;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/sniffer_load/DownloadService$b;->f(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->C(Lcom/transsion/sniffer_load/DownloadService$b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->f0()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/sniffer_load/R$string;->visha_downloading_by_mobile:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iput-object v1, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-void
.end method

.method public onWifi()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iget-object v0, v0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    sget-object v1, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->WIFI:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    invoke-static {v0}, Lcom/transsion/sniffer_load/DownloadService;->b(Lcom/transsion/sniffer_load/DownloadService;)Lcom/transsion/sniffer_load/DownloadService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/DownloadService$b;->f0()Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    iput-object v1, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    return-void
.end method

.method public unknowNet()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/sniffer_load/DownloadService$c;->a:Lcom/transsion/sniffer_load/DownloadService;

    sget-object v0, Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;->UNKNOWN:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    iput-object v0, p0, Lcom/transsion/sniffer_load/DownloadService;->e:Lcom/transsion/sniffer_load/GlobalDownloadManger$NetType;

    const-string p0, "unknowNet"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "visha_DownloadService"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
