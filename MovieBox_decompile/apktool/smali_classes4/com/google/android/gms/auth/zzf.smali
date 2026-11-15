.class public final synthetic Lcom/google/android/gms/auth/zzf;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/auth/zzk;


# instance fields
.field public final synthetic zza:Landroid/accounts/Account;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/auth/zzf;->zza:Landroid/accounts/Account;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/auth/zzf;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/auth/zzf;->zzc:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/zzf;->zza:Landroid/accounts/Account;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/auth/zzf;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/auth/zzf;->zzc:Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/auth/zzl;->zzb(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
