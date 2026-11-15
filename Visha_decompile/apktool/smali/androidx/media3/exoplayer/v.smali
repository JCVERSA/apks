.class public final synthetic Landroidx/media3/exoplayer/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/v;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput p2, p0, Landroidx/media3/exoplayer/v;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/v;->b:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget p0, p0, Landroidx/media3/exoplayer/v;->c:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k(Landroidx/media3/exoplayer/ExoPlayerImpl;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
