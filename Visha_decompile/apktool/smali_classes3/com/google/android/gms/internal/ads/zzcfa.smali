.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lfxg;


# direct methods
.method public synthetic constructor <init>(Lfxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zza:Lfxg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zza:Lfxg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v0

    invoke-virtual {p0}, Lfxg;->a()Lpuh;

    move-result-object p0

    invoke-interface {v0, p0}, Lzwg;->i(Lpuh;)V

    return-void
.end method
