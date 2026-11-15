.class Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final delegate:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "application/cea-708"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "application/cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "application/x-mp4-cea-608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;

    iget v0, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;-><init>(ILjava/util/List;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/text/cea/Cea608Decoder;

    iget p1, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    const-wide/16 v1, 0x3e80

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/media3/extractor/text/cea/Cea608Decoder;-><init>(Ljava/lang/String;IJ)V

    return-object p0

    :cond_3
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {v1, p1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->create(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;

    move-result-object p0

    new-instance p1, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Decoder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;-><init>(Ljava/lang/String;Landroidx/media3/extractor/text/SubtitleParser;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x37713300 -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory$1;->delegate:Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "application/cea-608"

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "application/x-mp4-cea-608"

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "application/cea-708"

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
