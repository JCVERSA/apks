.class public final synthetic Lbf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/media3/extractor/Extractor;

    invoke-static {p1}, Landroidx/media3/exoplayer/MediaExtractorCompat;->a(Landroidx/media3/extractor/Extractor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
