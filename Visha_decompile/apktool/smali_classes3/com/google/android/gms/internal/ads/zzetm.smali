.class public final synthetic Lcom/google/android/gms/internal/ads/zzetm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetm;->zza:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcye;->Aa:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzetm;->zza:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "TopicsSignalUnsampled.fetchTopicsSignal"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->y(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TopicsSignal.fetchTopicsSignal"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->w(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
