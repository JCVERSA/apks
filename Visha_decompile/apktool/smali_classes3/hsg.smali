.class public final synthetic Lhsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lvyi;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lvyi;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhsg;->a:Lvyi;

    iput-object p2, p0, Lhsg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdvg;

    iget-object p1, p0, Lhsg;->a:Lvyi;

    invoke-interface {p1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llsg;

    iget-object p0, p0, Lhsg;->b:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-interface {p1, p0}, Llsg;->a(Lcom/google/android/gms/internal/ads/zzbuy;)Lim5;

    move-result-object p0

    return-object p0
.end method
