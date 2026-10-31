.method public f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    new-instance p2, Lnet/pubnative/mediation/exception/AdPosRequestException;

    const/4 v0, 0x3

    const-string p3, "pos_no_config"

    const/4 p4, 0x3

    invoke-direct {p2, p3, p4}, Lnet/pubnative/mediation/exception/AdPosRequestException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lo/aa;->q(Ljava/lang/String;Lnet/pubnative/mediation/exception/AdException;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    iget-object p2, p0, Lo/nc6;->i:Lo/gb;

    const/4 v0, 0x3

    invoke-static {p1}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p1

    const/4 v0, 0x7

    invoke-interface {p2, p1}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method
