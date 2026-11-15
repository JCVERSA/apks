.class public final synthetic Lcom/google/android/gms/internal/ads/zzjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ll6j;

.field public final synthetic zzb:Lg7j;


# direct methods
.method public synthetic constructor <init>(Ll6j;Lg7j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Ll6j;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lg7j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zza:Ll6j;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjj;->zzb:Lg7j;

    invoke-static {v0, p0}, Ll6j;->o(Ll6j;Lg7j;)V

    return-void
.end method
