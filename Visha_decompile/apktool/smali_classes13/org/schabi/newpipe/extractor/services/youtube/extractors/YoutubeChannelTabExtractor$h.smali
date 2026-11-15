.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;
.super Lksc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lksc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    .line 4
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;Lcuc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$f;->a:[I

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$h;->b:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v0, "Could not get uploader verification status"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method
