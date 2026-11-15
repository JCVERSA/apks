.class public abstract Lyvh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lxvh;

    invoke-direct {v1}, Lxvh;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static b()I
    .locals 2

    invoke-static {}, Luvh;->a()Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Lcom/google/android/gms/internal/ads/zzfkb;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    sget v0, Lyvh;->a:I

    return v0
.end method

.method public static bridge synthetic c(I)V
    .locals 0

    sput p0, Lyvh;->a:I

    return-void
.end method
