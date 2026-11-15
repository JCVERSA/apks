.class public final Lekf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final c:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lekf;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget p2, Lkfh;->a:I

    new-instance p2, Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lekf;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lekf;I)V
    .locals 0

    iget-object p0, p0, Lekf;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcf;-><init>(Lekf;I)V

    iget-object p0, p0, Lekf;->b:Landroid/os/Handler;

    invoke-static {p0, v0}, Lkfh;->p(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
