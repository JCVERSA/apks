.method public static final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/c;
    .locals 3

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v1, "mepmy.t()."

    const-string v1, "empty(...)"

    const/4 v2, 0x2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x3

    const p1, 0x7f1102b9

    invoke-static {p0, p1}, Lo/b88;->l(Landroid/content/Context;I)V

    const/4 v2, 0x2

    invoke-static {}, Lrx/c;->C()Lrx/c;

    move-result-object p0

    invoke-static {p0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    invoke-static {}, Lrx/c;->C()Lrx/c;

    move-result-object p0

    const/4 v2, 0x5

    invoke-static {p0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    return-object p0

    :cond_1
    const/4 v2, 0x5

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    invoke-direct {v0, p0, p1}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SEFToAOXNYCCTR__AR"

    const-string p0, "EXTRACT_FROM_ASYNC"

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/extractor/a$a;->b(Ljava/lang/String;)Lcom/snaptube/premium/extractor/a$a;

    move-result-object p0

    const/4 v2, 0x5

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/snaptube/premium/extractor/a$a;->d(Ljava/util/Map;)Lcom/snaptube/premium/extractor/a$a;

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p1, p0}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->w(Lcom/snaptube/premium/extractor/a;)Lrx/c;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p0

    const/4 v2, 0x3

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p0

    const/4 v2, 0x2

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
