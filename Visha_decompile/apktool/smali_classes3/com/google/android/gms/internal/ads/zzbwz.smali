.class public final synthetic Lcom/google/android/gms/internal/ads/zzbwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzcf;

.field public final synthetic zzb:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lzcf;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zza:Lzcf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zza:Lzcf;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbwz;->zzb:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lzcf;->e(Lzcf;Landroid/graphics/Bitmap;)V

    return-void
.end method
