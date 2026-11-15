.class public Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private streamCount:J

.field private subscriberCount:J

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getStreamCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    return-wide v0
.end method

.method public getSubscriberCount()J
    .locals 2

    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    return-wide v0
.end method

.method public isVerified()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    return p0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setStreamCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    return-void
.end method
