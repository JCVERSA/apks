.class public final Lf2/x;
.super Landroidx/media3/exoplayer/source/m;
.source "source.java"


# instance fields
.field private final f:Landroidx/media3/common/t;


# direct methods
.method public constructor <init>(Landroidx/media3/common/e0;Landroidx/media3/common/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/m;-><init>(Landroidx/media3/common/e0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf2/x;->f:Landroidx/media3/common/t;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/m;->o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lf2/x;->f:Landroidx/media3/common/t;

    .line 5
    .line 6
    iput-object p1, p2, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Landroidx/media3/common/t$h;->h:Ljava/lang/Object;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-object p1, p2, Landroidx/media3/common/e0$c;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p2
.end method
