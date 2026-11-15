.class public final synthetic Lcom/android/billingclient/api/zzj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/i;

.field public final synthetic zzb:Lcom/android/billingclient/api/n;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzj;->zza:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzj;->zzb:Lcom/android/billingclient/api/n;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/i;->u(Lcom/android/billingclient/api/n;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
