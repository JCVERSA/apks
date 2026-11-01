.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Task"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p0

    const-string v0, "position_source"

    invoke-interface {p0, v0, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string p2, "content_url"

    invoke-interface {p0, p2, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string p2, "host"

    invoke-static {p1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->g(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "is_support"

    invoke-interface {p0, v0, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string p2, "arg3"

    invoke-static {p1}, Lo/yj8;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string p1, "from"

    invoke-interface {p0, p1, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method
