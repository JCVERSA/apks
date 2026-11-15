.class public final synthetic Lcom/google/android/gms/internal/ads/zzeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lv2h;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lv2h;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeb;->zza:Lv2h;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeb;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ly0h;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeb;->zza:Lv2h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ly0h;-><init>(Lv2h;Lw1h;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeb;->zzb:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
