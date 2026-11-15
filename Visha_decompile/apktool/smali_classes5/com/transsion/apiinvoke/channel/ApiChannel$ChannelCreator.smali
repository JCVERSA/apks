.class public interface abstract Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/ApiChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChannelCreator"
.end annotation


# virtual methods
.method public abstract findServiceChannel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
.end method

.method public abstract shouldHandle(Ljava/lang/String;)Z
.end method
