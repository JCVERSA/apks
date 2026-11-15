.class public final synthetic Liqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Ljqg;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqg;->a:Ljqg;

    iput-object p2, p0, Liqg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    iput p3, p0, Liqg;->c:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 2

    iget-object v0, p0, Liqg;->a:Ljqg;

    iget-object v1, p0, Liqg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    iget p0, p0, Liqg;->c:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-static {v0, v1, p0, p1}, Ljqg;->b(Ljqg;Lcom/google/android/gms/internal/ads/zzbuy;ILcom/google/android/gms/internal/ads/zzdxq;)Lim5;

    move-result-object p0

    return-object p0
.end method
