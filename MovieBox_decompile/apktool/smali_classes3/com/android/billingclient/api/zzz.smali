.class public final synthetic Lcom/android/billingclient/api/zzz;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/i;

.field public final synthetic zzb:Lcom/android/billingclient/api/s;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/i;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzz;->zza:Lcom/android/billingclient/api/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/zzz;->zzb:Lcom/android/billingclient/api/s;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/i;->z(Lcom/android/billingclient/api/s;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
