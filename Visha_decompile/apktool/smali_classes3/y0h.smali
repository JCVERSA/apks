.class public final Ly0h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lv2h;


# direct methods
.method public synthetic constructor <init>(Lv2h;Lw1h;)V
    .locals 0

    iput-object p1, p0, Ly0h;->a:Lv2h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Ly0h;->a:Lv2h;

    invoke-static {p2}, Lv2h;->c(Lv2h;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzef;-><init>(Ly0h;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
