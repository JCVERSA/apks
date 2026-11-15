.class public final Le0j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lolg;


# direct methods
.method public constructor <init>(Ll0j;Lolg;Li0j;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Le0j;->a:Lolg;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le0j;->a:Lolg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Le0j;)V

    invoke-interface {p1, p2}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
