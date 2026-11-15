.class public final synthetic Lf2/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/m;

.field public final synthetic b:Landroidx/media3/exoplayer/source/s;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf2/q;->a:Landroidx/media3/common/util/m;

    .line 5
    .line 6
    iput-object p2, p0, Lf2/q;->b:Landroidx/media3/exoplayer/source/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/q;->a:Landroidx/media3/common/util/m;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/q;->b:Landroidx/media3/exoplayer/source/s;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/s$a;->a(Landroidx/media3/common/util/m;Landroidx/media3/exoplayer/source/s;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
