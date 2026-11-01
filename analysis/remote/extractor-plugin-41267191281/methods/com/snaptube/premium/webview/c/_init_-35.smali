.method public constructor <init>(Landroid/os/Handler;Lcom/snaptube/dataadapter/IYouTubeDataAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/premium/webview/e$a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/snaptube/premium/webview/c;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/webview/c;->h:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/webview/c;->i:Z

    iput-boolean v0, p0, Lcom/snaptube/premium/webview/c;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/webview/c;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/snaptube/premium/webview/c;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcom/snaptube/premium/webview/c;->k:Lcom/snaptube/dataadapter/IYouTubeDataAdapter;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->k()Lo/dc3;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/webview/c;->l:Lo/dc3;

    return-void
.end method
