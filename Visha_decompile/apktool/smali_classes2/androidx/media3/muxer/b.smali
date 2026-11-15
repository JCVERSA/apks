.class public final synthetic Landroidx/media3/muxer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/muxer/Track;

    check-cast p2, Landroidx/media3/muxer/Track;

    invoke-static {p1, p2}, Landroidx/media3/muxer/Mp4Writer;->b(Landroidx/media3/muxer/Track;Landroidx/media3/muxer/Track;)I

    move-result p0

    return p0
.end method
