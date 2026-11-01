.method public B(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/snaptube/premium/webview/e$a;->B(Landroid/content/Context;Landroid/webkit/WebView;)V

    new-instance v0, Lo/lu3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lo/ne6;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/x87;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo/x87;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/lu3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    new-instance v0, Lo/pe8;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/webview/c;->e:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    invoke-virtual {v3}, Lo/lu3;->d()Lo/nu3;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lo/pe8;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/cd3;)V

    iput-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/pe8;->v(I)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    iget-boolean v1, p0, Lcom/snaptube/premium/webview/c;->h:Z

    invoke-virtual {v0, v1}, Lo/pe8;->u(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->G4()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/pe8;->A(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->F4()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/pe8;->z(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-static {}, Lcom/snaptube/taskManager/CombinTask;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/pe8;->w(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-static {p1}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/pe8;->y(Z)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    new-instance v1, Lcom/snaptube/premium/webview/c$a;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/webview/c$a;-><init>(Lcom/snaptube/premium/webview/c;)V

    invoke-virtual {v0, v1}, Lo/pe8;->x(Lo/dd3;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->y4()Z

    move-result v0

    sput-boolean v0, Lo/m50;->c:Z

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    const-string v1, "ui"

    iget-object v2, p0, Lcom/snaptube/premium/webview/c;->g:Lo/pe8;

    invoke-virtual {v0, v1, v2}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->k()Lo/dc3;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/webview/c;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Lo/lu3;->i(Landroid/content/Context;Lo/dc3;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->k:Lcom/snaptube/dataadapter/IYouTubeDataAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Lo/sd9;

    iget-object v1, p0, Lcom/snaptube/premium/webview/c;->k:Lcom/snaptube/dataadapter/IYouTubeDataAdapter;

    invoke-static {}, Lo/j23;->g()Lo/h23;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/sd9;-><init>(Lcom/snaptube/dataadapter/IYouTubeDataAdapter;Lo/h23;)V

    iget-object v1, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    const-string v2, "youtube-data-adapter"

    invoke-virtual {v1, v2, v0}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    :cond_0
    new-instance v0, Lcom/snaptube/premium/webview/module/CustomMoModule;

    iget-object v1, p0, Lcom/snaptube/premium/webview/c;->e:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/snaptube/premium/webview/module/CustomMoModule;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/snaptube/premium/webview/c;->j:Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/webview/module/CustomMoModule;->h(Lcom/snaptube/premium/batch_download/BatchVideoSelectManager;)V

    iget-object v1, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    const-string v2, "common-mo"

    invoke-virtual {v1, v2, v0}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    iget-object v0, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    new-instance v1, Lo/s23;

    iget-object v2, p0, Lcom/snaptube/premium/webview/c;->e:Landroid/os/Handler;

    invoke-direct {v1, p1, v2}, Lo/s23;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string p1, "guide"

    invoke-virtual {v0, p1, v1}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    iget-object p1, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    new-instance v0, Lo/yw0;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/webview/c;->l:Lo/dc3;

    invoke-direct {v0, v1, v2}, Lo/yw0;-><init>(Landroid/content/Context;Lo/dc3;)V

    const-string v1, "common"

    invoke-virtual {p1, v1, v0}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    iget-object p1, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    new-instance v0, Lo/va4;

    invoke-direct {v0}, Lo/va4;-><init>()V

    const-string v1, "log"

    invoke-virtual {p1, v1, v0}, Lo/lu3;->l(Ljava/lang/String;Lo/m50;)V

    iget-object p1, p0, Lcom/snaptube/premium/webview/c;->d:Lo/lu3;

    invoke-virtual {p1}, Lo/lu3;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
