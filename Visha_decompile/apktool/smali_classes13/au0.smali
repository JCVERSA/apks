.class public final Lau0;
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

    check-cast p1, Lzt0;

    invoke-virtual {p0, p1}, Lau0;->h(Lzt0;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object p0

    return-object p0
.end method

.method public h(Lzt0;)Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    .locals 4

    new-instance v0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lyz4;->g()I

    move-result v1

    invoke-interface {p1}, Lxz4;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lxz4;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lzt0;->z()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setSubscriberCount(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_0
    :try_start_1
    invoke-interface {p1}, Lzt0;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_1
    :try_start_2
    invoke-interface {p1}, Lxz4;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_2
    :try_start_3
    invoke-interface {p1}, Lzt0;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setDescription(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {p0, v1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_3
    :try_start_4
    invoke-interface {p1}, Lzt0;->n()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->setVerified(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p0, p1}, Lyz4;->b(Ljava/lang/Exception;)V

    :goto_4
    return-object v0
.end method
