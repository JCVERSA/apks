.method public j(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/snaptube/premium/webview/e$a;->j(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {p2}, Lo/ug7;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/snaptube/premium/webview/a;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
