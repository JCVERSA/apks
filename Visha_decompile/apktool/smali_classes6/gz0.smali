.class public final synthetic Lgz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

.field public final synthetic b:Z

.field public final synthetic c:F

.field public final synthetic d:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;ZFLcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgz0;->a:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iput-boolean p2, p0, Lgz0;->b:Z

    iput p3, p0, Lgz0;->c:F

    iput-object p4, p0, Lgz0;->d:Lcom/lzy/okgo/model/Progress;

    return-void
.end method


# virtual methods
.method public final a(Lcom/lzy/okgo/model/Progress;)V
    .locals 3

    iget-object v0, p0, Lgz0;->a:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-boolean v1, p0, Lgz0;->b:Z

    iget v2, p0, Lgz0;->c:F

    iget-object p0, p0, Lgz0;->d:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->f(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;ZFLcom/lzy/okgo/model/Progress;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
