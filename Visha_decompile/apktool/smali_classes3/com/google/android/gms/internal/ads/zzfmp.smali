.class public final synthetic Lcom/google/android/gms/internal/ads/zzfmp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lzda;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzb:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Lrwh;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zza:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzb:Lzda;

    const/4 v1, 0x0

    const-string v2, "GLAS"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/i6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/i6;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzda;->c(Ljava/lang/Object;)V

    return-void
.end method
