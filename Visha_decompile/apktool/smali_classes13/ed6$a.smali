.class public Led6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzt0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Led6;->z(Ljava/lang/String;Ljava/util/List;Lls6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

.field public final synthetic b:Led6;


# direct methods
.method public constructor <init>(Led6;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 0

    iput-object p1, p0, Led6$a;->b:Led6;

    iput-object p2, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()J
    .locals 2

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public z()J
    .locals 2

    iget-object p0, p0, Led6$a;->a:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    return-wide v0
.end method
