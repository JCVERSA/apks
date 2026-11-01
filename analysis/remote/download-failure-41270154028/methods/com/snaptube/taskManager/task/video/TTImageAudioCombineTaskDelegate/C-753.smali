.method public final C(J)V
    .locals 9

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    invoke-virtual {v0, p1, p2}, Lo/k08;->e0(J)V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    int-to-long v2, v2

    iget-wide v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lo/k08;->l0(JJJZ)I

    :cond_0
    return-void
.end method
