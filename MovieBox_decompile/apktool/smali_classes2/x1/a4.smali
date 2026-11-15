.class public final synthetic Lx1/a4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/b4;

.field public final synthetic b:Landroid/media/metrics/PlaybackStateEvent;


# direct methods
.method public synthetic constructor <init>(Lx1/b4;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/a4;->a:Lx1/b4;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/a4;->b:Landroid/media/metrics/PlaybackStateEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx1/a4;->a:Lx1/b4;

    .line 2
    .line 3
    iget-object v1, p0, Lx1/a4;->b:Landroid/media/metrics/PlaybackStateEvent;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lx1/b4;->C0(Lx1/b4;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
