.class public final synthetic Lcom/google/android/exoplayer2/ui/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/j;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/j;->a:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
