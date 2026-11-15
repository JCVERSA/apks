.class final Landroidx/media3/exoplayer/b2$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/c3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/media3/exoplayer/source/r;

.field private c:Landroidx/media3/common/e0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/b2$e;->b:Landroidx/media3/exoplayer/source/r;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/p;->W()Landroidx/media3/common/e0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic c(Landroidx/media3/exoplayer/b2$e;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/b2$e;->b:Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Landroidx/media3/common/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroidx/media3/common/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/b2$e;->c:Landroidx/media3/common/e0;

    .line 2
    .line 3
    return-void
.end method
