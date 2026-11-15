.class public final synthetic Landroidx/media3/exoplayer/p3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/q3$a;

.field public final synthetic b:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/p3;->a:Landroidx/media3/exoplayer/q3$a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/p3;->b:Landroid/util/Pair;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/p3;->a:Landroidx/media3/exoplayer/q3$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/p3;->b:Landroid/util/Pair;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/q3$a;->J(Landroidx/media3/exoplayer/q3$a;Landroid/util/Pair;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
