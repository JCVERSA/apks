.method public D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V
    .locals 7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": [before]"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lo/ca8;->d(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    const-string p1, "[exist]dst size:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/du1;->M0(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "[rename]dst size:"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lo/du1$g;->onSuccess(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p3, Lo/du1$f;

    invoke-direct {p3, p0, v6, p1, p2}, Lo/du1$f;-><init>(Lo/du1;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/io/File;)V

    invoke-static {p3}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object p3

    invoke-virtual {p1, p3}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object p3

    invoke-virtual {p1, p3}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance p3, Lo/du1$d;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo/du1$d;-><init>(Lo/du1;Ljava/lang/StringBuilder;Ljava/io/File;Lo/du1$g;Lcom/snaptube/taskManager/task/TaskError;)V

    new-instance p2, Lo/du1$e;

    invoke-direct {p2, p0, v6}, Lo/du1$e;-><init>(Lo/du1;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p3, p2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    return-void
.end method
