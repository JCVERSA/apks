.class public final synthetic Lhz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

.field public final synthetic c:Lcom/lzy/okgo/model/Progress;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhz0;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iput-object p2, p0, Lhz0;->c:Lcom/lzy/okgo/model/Progress;

    iput-boolean p3, p0, Lhz0;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lhz0;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object v1, p0, Lhz0;->c:Lcom/lzy/okgo/model/Progress;

    iget-boolean p0, p0, Lhz0;->d:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->h(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;Z)V

    return-void
.end method
