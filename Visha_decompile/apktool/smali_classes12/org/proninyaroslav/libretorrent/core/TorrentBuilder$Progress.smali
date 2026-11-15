.class public final Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$Progress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/TorrentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$Progress;->a:I

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/TorrentBuilder$Progress;->b:I

    return-void
.end method
