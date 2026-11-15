.class public final synthetic Lmr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic a:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr6;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 0

    iget-object p0, p0, Lmr6;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-static {p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;->b(Landroidx/media3/extractor/text/SubtitleParser$Factory;)[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
