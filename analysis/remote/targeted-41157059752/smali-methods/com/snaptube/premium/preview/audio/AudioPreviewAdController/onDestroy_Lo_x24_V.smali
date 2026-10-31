.method public onDestroy(Lo/x24;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;->c:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    invoke-static {p0, p1}, Lo/jh1;->b(Lo/kh1;Lo/x24;)V

    return-void
.end method
