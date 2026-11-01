.method private static synthetic lambda$extract$1(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "redirected_url"

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->n(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->s(Lcom/snaptube/extractor/pluginlib/models/PageContext;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "url_redirect_success"

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->r(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p2}, Lo/df3;->a(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
