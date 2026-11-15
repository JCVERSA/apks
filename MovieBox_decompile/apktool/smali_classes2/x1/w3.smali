.class public final synthetic Lx1/w3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/b4;

.field public final synthetic b:Landroid/media/metrics/TrackChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lx1/b4;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/w3;->a:Lx1/b4;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/w3;->b:Landroid/media/metrics/TrackChangeEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lx1/w3;->a:Lx1/b4;

    .line 2
    .line 3
    iget-object v1, p0, Lx1/w3;->b:Landroid/media/metrics/TrackChangeEvent;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lx1/b4;->B0(Lx1/b4;Landroid/media/metrics/TrackChangeEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
