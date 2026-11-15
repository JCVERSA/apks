.class public final synthetic Lcvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lgvf;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzfdj;


# direct methods
.method public synthetic constructor <init>(Lgvf;Lcom/google/android/gms/internal/ads/zzfdj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvf;->a:Lgvf;

    iput-object p2, p0, Lcvf;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    iget-object v0, p0, Lcvf;->a:Lgvf;

    iget-object p0, p0, Lcvf;->b:Lcom/google/android/gms/internal/ads/zzfdj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-static {v0, p0, p1}, Lgvf;->e(Lgvf;Lcom/google/android/gms/internal/ads/zzfdj;Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p0

    return-object p0
.end method
