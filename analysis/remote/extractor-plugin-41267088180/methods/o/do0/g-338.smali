.method public final g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Lo/oy8;)V
    .locals 5

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    sget-object v0, Lo/ao0;->a:Lo/ao0$a;

    const/4 v4, 0x5

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v1

    const/4 v4, 0x1

    const-string v2, "getVideoUrlExtractor(...)"

    const/4 v4, 0x4

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lo/ao0$a;->c(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lo/dv8;)Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    iget-object p2, p0, Lo/do0;->b:Lo/xn0;

    iget-object p2, p2, Lo/xn0;->b:Lo/qn0;

    const/4 v4, 0x5

    iget-object p2, p2, Lo/qn0;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v4, 0x0

    const-string p3, "rvioove"

    const-string p3, "ivCover"

    const/4 v4, 0x7

    invoke-static {p2, p3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-static {p1}, Lo/r58;->b(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_1

    const/4 v4, 0x6

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    iget-object v1, p0, Lo/do0;->b:Lo/xn0;

    iget-object v1, v1, Lo/xn0;->b:Lo/qn0;

    iget-object v1, v1, Lo/qn0;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v4, 0x7

    sget-object v2, Lo/bh7;->a:Lo/bh7$a;

    const/4 v4, 0x0

    if-nez p2, :cond_2

    const/4 v4, 0x6

    const-string p2, ""

    const-string p2, ""

    :cond_2
    invoke-virtual {v2, p2}, Lo/bh7$a;->b(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lo/tl6;->D0(I)Lo/tl6;

    move-result-object p2

    const/4 v4, 0x2

    invoke-static {}, Lo/ly1;->k()Lo/ly1;

    move-result-object v2

    const/4 v4, 0x4

    new-instance v3, Lo/do0$b;

    const/4 v4, 0x6

    invoke-direct {v3, p3}, Lo/do0$b;-><init>(Lo/oy8;)V

    const/4 v4, 0x5

    invoke-static {v1, v0, p2, v2, v3}, Lo/fk3;->k(Landroid/widget/ImageView;Ljava/lang/String;Lo/tl6;Lo/pb8;Lo/ol6;)V

    :cond_3
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    iget-object p2, p0, Lo/do0;->b:Lo/xn0;

    iget-object p2, p2, Lo/xn0;->b:Lo/qn0;

    iget-object p2, p2, Lo/qn0;->i:Landroid/widget/TextView;

    invoke-static {p1}, Lo/wd9;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    const/4 v4, 0x2

    return-void
.end method
