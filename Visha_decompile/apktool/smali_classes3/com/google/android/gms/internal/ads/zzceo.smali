.class public final synthetic Lcom/google/android/gms/internal/ads/zzceo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceo;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget v0, Lijf;->I:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0}, Lqef;->h()Lgye;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzceo;->zza:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lgye;->e(Ljava/lang/String;)V

    return-void
.end method
