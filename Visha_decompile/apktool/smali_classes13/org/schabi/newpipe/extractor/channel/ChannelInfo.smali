.class public Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "SourceFile"


# instance fields
.field private avatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private donationLinks:[Ljava/lang/String;

.field private feedUrl:Ljava/lang/String;

.field private parentChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private parentChannelName:Ljava/lang/String;

.field private parentChannelUrl:Ljava/lang/String;

.field private subscriberCount:J

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/a;->g(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->a(Ljava/lang/String;)Lus0;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lmk3;->b()V

    .line 4
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lus0;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lus0;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lmk3;->n()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Lmk3;->i()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lmk3;->p()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lmk3;->l()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lmk3;->k()Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lus0;->r()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setAvatars(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lus0;->s()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setBanners(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 15
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lus0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setFeedUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 17
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lus0;->y()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setSubscriberCount(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 18
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 19
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lus0;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setDescription(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 20
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 21
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lus0;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 22
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 23
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lus0;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 24
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 25
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lus0;->v()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 26
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 27
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lus0;->B()Z

    move-result v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 28
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 29
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lus0;->z()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTabs(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 30
    invoke-virtual {v6, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 31
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lus0;->A()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v6, p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTags(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception p0

    .line 32
    invoke-virtual {v6, p0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    :goto_a
    return-object v6
.end method


# virtual methods
.method public getAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    return-object p0
.end method

.method public getBanners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDonationLinks()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->donationLinks:[Ljava/lang/String;

    return-object p0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getParentChannelAvatars()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    return-object p0
.end method

.method public getParentChannelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public getParentChannelUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscriberCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    return-wide v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    return-object p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-object p0
.end method

.method public isVerified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z

    return p0
.end method

.method public setAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    return-void
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDonationLinks([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->donationLinks:[Ljava/lang/String;

    return-void
.end method

.method public setFeedUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    return-void
.end method

.method public setParentChannelAvatars(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setParentChannelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    return-void
.end method

.method public setParentChannelUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z

    return-void
.end method
