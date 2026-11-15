.class final Lcom/google/android/gms/internal/measurement/zzdy$zzb;
.super Lcom/google/android/gms/internal/measurement/zzds;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzds;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdy$zzb;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy$zzb;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy$zzb;->zza:Lcom/google/android/gms/measurement/internal/zzjl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjl;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
