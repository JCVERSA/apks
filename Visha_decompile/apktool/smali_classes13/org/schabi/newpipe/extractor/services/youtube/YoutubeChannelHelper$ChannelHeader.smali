.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;
    }
.end annotation


# instance fields
.field public final headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

.field public final json:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->json:Lcom/grack/nanojson/JsonObject;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;->headerType:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader$HeaderType;

    return-void
.end method
