.class public final synthetic Lfz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

.field public final synthetic c:Lcom/lzy/okgo/model/Progress;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfz0;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iput-object p2, p0, Lfz0;->c:Lcom/lzy/okgo/model/Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lfz0;->b:Lcom/transsion/cloud/clouddownload/CloudDownloadTask;

    iget-object p0, p0, Lfz0;->c:Lcom/lzy/okgo/model/Progress;

    invoke-static {v0, p0}, Lcom/transsion/cloud/clouddownload/CloudDownloadTask;->g(Lcom/transsion/cloud/clouddownload/CloudDownloadTask;Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method
