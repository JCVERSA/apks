.class public final Lcom/google/android/exoplayer2/y$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/y;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/y$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/y$c;-><init>(Lcom/google/android/exoplayer2/y;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/y;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/y$c;->b(Lcom/google/android/exoplayer2/y;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/y;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/y;->b(Lcom/google/android/exoplayer2/y;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/y;

    invoke-static {p1}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/y;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/y$c;->a:Lcom/google/android/exoplayer2/y;

    new-instance p2, Lvy9;

    invoke-direct {p2, p0}, Lvy9;-><init>(Lcom/google/android/exoplayer2/y;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
