.class final Lcom/google/android/gms/iid/zzah;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# instance fields
.field private final synthetic zzdc:Lcom/google/android/gms/iid/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzaf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/iid/zzah;->zzdc:Lcom/google/android/gms/iid/zzaf;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "InstanceID"

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/iid/zzah;->zzdc:Lcom/google/android/gms/iid/zzaf;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/iid/zzaf;->zzh(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
