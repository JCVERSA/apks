.class public interface abstract Landroidx/media3/transformer/Codec$EncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EncoderFactory"
.end annotation


# virtual methods
.method public audioNeedsEncoding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract createForAudioEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public abstract createForVideoEncoding(Landroidx/media3/common/Format;)Landroidx/media3/transformer/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation
.end method

.method public videoNeedsEncoding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
