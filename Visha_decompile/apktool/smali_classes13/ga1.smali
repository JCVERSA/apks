.class public final Lga1;
.super Lyz4;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lyz4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfa1;

    invoke-virtual {p0, p1}, Lga1;->i(Lfa1;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lxz4;)V
    .locals 0

    check-cast p1, Lfa1;

    invoke-virtual {p0, p1}, Lga1;->h(Lfa1;)V

    return-void
.end method

.method public h(Lfa1;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lga1;->i(Lfa1;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyz4;->c(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public i(Lfa1;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 4

    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    invoke-virtual {p0}, Lyz4;->g()I

    move-result v1

    invoke-interface {p1}, Lxz4;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lxz4;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lfa1;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lfa1;->l()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    invoke-interface {p1}, Lfa1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    invoke-interface {p1}, Lfa1;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_3
    :try_start_4
    invoke-interface {p1}, Lfa1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_4
    :try_start_5
    invoke-interface {p1}, Lfa1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_5
    :try_start_6
    invoke-interface {p1}, Lfa1;->g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_6
    :try_start_7
    invoke-interface {p1}, Lfa1;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setLikeCount(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_7
    :try_start_8
    invoke-interface {p1}, Lfa1;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualLikeCount(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_8
    :try_start_9
    invoke-interface {p1}, Lxz4;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_9
    :try_start_a
    invoke-interface {p1}, Lfa1;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setHeartedByUploader(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_a
    :try_start_b
    invoke-interface {p1}, Lfa1;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setPinned(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_b
    :try_start_c
    invoke-interface {p1}, Lfa1;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setStreamPosition(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_c
    :try_start_d
    invoke-interface {p1}, Lfa1;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplyCount(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_d
    :try_start_e
    invoke-interface {p1}, Lfa1;->A()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_e
    :try_start_f
    invoke-interface {p1}, Lfa1;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setChannelOwner(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_f
    :try_start_10
    invoke-interface {p1}, Lfa1;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCreatorReply(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_10
    return-object v0
.end method
