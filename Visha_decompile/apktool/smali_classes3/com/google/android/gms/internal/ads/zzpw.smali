.class public final synthetic Lcom/google/android/gms/internal/ads/zzpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lchj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lchj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:Lchj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:Ljava/lang/String;

    invoke-static {v0, p0}, Lchj;->b(Lchj;Ljava/lang/String;)V

    return-void
.end method
