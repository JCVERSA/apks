.method public final a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
