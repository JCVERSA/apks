.class public Lcom/transsion/cloud/upload/service/UploadService$a;
.super Lnhb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/upload/service/UploadService;->e()Lnhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/upload/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/upload/service/UploadService;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-direct {p0, p2}, Lnhb;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lnhb;->a(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    iget-object v1, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->d0()V

    iget-boolean v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->hadMarkError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/cloud/upload/service/UploadService$c;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->hadMarkError:Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p0}, Lcom/transsion/cloud/upload/service/UploadService;->d(Lcom/transsion/cloud/upload/service/UploadService;)V

    return-void
.end method

.method public b(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lnhb;->b(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task_finish\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_cloud_UploadService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {v0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->L(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p1}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->d0()V

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p1}, Lcom/transsion/cloud/upload/service/UploadService;->d(Lcom/transsion/cloud/upload/service/UploadService;)V

    iget-object p1, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p1}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/service/UploadService$c;->h()I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lnhb;->c(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method

.method public d(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lnhb;->d(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object p0

    iget-wide v0, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->currentSize:J

    iget-wide v2, p1, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->lastSize:J

    sub-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/cloud/upload/service/UploadService$c;->E(Lcom/transsion/cloud/upload/service/UploadService$c;Lcom/transsion/cloud/upload/model/UploadProgressInfo;J)V

    return-void
.end method

.method public e(Lcom/transsion/cloud/upload/model/UploadProgressInfo;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lnhb;->e(Lcom/transsion/cloud/upload/model/UploadProgressInfo;Z)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/cloud/upload/service/UploadService$a;->b:Lcom/transsion/cloud/upload/service/UploadService;

    invoke-static {p0}, Lcom/transsion/cloud/upload/service/UploadService;->a(Lcom/transsion/cloud/upload/service/UploadService;)Lcom/transsion/cloud/upload/service/UploadService$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/cloud/upload/service/UploadService$c;->d0()V

    :cond_0
    return-void
.end method

.method public g(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lnhb;->g(Lcom/transsion/cloud/upload/model/UploadProgressInfo;)V

    return-void
.end method
