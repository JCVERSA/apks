.class public Lqy9;
.super Lyz4;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyz4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lyz4;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lpy9;

    invoke-virtual {p0, p1}, Lqy9;->i(Lpy9;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lxz4;)V
    .locals 0

    check-cast p1, Lpy9;

    invoke-virtual {p0, p1}, Lqy9;->h(Lpy9;)V

    return-void
.end method

.method public h(Lpy9;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lqy9;->i(Lpy9;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyz4;->c(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public i(Lpy9;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    invoke-interface {p1}, Lpy9;->s()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {p0}, Lyz4;->g()I

    move-result v1

    invoke-interface {p1}, Lxz4;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lxz4;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lpy9;->u()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    :try_start_0
    invoke-interface {p1}, Lpy9;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lpy9;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    invoke-interface {p1}, Lpy9;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    invoke-interface {p1}, Lpy9;->g()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_3
    :try_start_4
    invoke-interface {p1}, Lpy9;->w()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_4
    :try_start_5
    invoke-interface {p1}, Lxz4;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_5
    :try_start_6
    invoke-interface {p1}, Lpy9;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_6
    :try_start_7
    invoke-interface {p1}, Lpy9;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_7
    :try_start_8
    invoke-interface {p1}, Lpy9;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_8
    :try_start_9
    invoke-interface {p1}, Lpy9;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortDescription(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_9
    :try_start_a
    invoke-interface {p1}, Lpy9;->t()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortFormContent(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_a
    return-object v0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    const-string p1, "Found ad"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
