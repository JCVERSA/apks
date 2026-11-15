.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;
.super Lrxc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->I(Lls6;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;)V
    .locals 0

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    invoke-direct {p0, p1}, Lrxc;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lrxc;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->c:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/a;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lrxc;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->b:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$a;->d:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;->VERIFIED:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$VerifiedStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
