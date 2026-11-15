.class public Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/ApiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalChannelCreator"
.end annotation


# instance fields
.field private mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    return-void
.end method


# virtual methods
.method public findServiceChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->isInChannel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getChannel()Lcom/transsion/apiinvoke/common/router/ChannelEntity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    return-object p0
.end method

.method public getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 0

    .line 1
    new-instance p1, Lcom/transsion/apiinvoke/channel/LocalChannel;

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-direct {p1, p0}, Lcom/transsion/apiinvoke/channel/LocalChannel;-><init>(Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V

    return-object p1
.end method

.method public shouldHandle(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->mChannel:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
