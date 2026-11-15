.class public final Lfsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final synthetic b:Lwrh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V
    .locals 0

    iput-object p1, p0, Lfsh;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p2, p0, Lfsh;->b:Lwrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lfsh;->b:Lwrh;

    invoke-interface {v0, p1}, Lwrh;->f(Ljava/lang/Throwable;)Lwrh;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lwrh;->zzg(Z)Lwrh;

    iget-object p0, p0, Lfsh;->a:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lwrh;)Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
