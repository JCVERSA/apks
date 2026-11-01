.method public static f(Ljava/lang/String;)Lrx/c;
    .locals 2

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lo/iy5;->O0(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "preload"

    invoke-direct {v0, p0, v1}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->x(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p0

    sget-object v0, Lo/a58;->c:Lrx/d;

    invoke-virtual {p0, v0}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p0

    return-object p0
.end method
