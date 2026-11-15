.class public final synthetic Ln22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

.field public final synthetic b:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln22;->a:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iput-object p2, p0, Ln22;->b:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 1

    iget-object v0, p0, Ln22;->a:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object p0, p0, Ln22;->b:Landroidx/media3/common/Format;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->a(Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
