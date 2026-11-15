.class public final synthetic Landroidx/media3/exoplayer/c2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/media3/exoplayer/b2;

.field public final synthetic d:Lx1/f4;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/b2;Lx1/f4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/c2;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/media3/exoplayer/c2;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/c2;->c:Landroidx/media3/exoplayer/b2;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/c2;->d:Lx1/f4;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/c2;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/media3/exoplayer/c2;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/c2;->c:Landroidx/media3/exoplayer/b2;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/c2;->d:Lx1/f4;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/b2$b;->a(Landroid/content/Context;ZLandroidx/media3/exoplayer/b2;Lx1/f4;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
