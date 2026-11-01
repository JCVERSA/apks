.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->r()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->j:Lo/uj8$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_0
    return-void
.end method
