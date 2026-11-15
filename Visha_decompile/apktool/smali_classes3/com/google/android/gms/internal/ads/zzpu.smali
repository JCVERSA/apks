.class public final synthetic Lcom/google/android/gms/internal/ads/zzpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lchj;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lchj;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lchj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Lchj;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    invoke-static {v0, p0}, Lchj;->i(Lchj;Z)V

    return-void
.end method
