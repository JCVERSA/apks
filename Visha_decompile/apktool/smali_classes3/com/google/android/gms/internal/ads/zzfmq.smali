.class public final synthetic Lcom/google/android/gms/internal/ads/zzfmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzda;


# direct methods
.method public synthetic constructor <init>(Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget v0, Lrwh;->e:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lzda;

    invoke-static {}, Lcom/google/android/gms/internal/ads/i6;->c()Lcom/google/android/gms/internal/ads/i6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzda;->c(Ljava/lang/Object;)V

    return-void
.end method
