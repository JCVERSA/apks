.class public final synthetic Lqkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/o1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqkg;->a:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    iput-object p2, p0, Lqkg;->b:Ljava/lang/String;

    iput-object p3, p0, Lqkg;->c:Lcom/google/android/gms/internal/ads/o1;

    iput-object p4, p0, Lqkg;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/i3;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->C()Lcom/google/android/gms/internal/ads/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->H()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/q0;

    iget-object v1, p0, Lqkg;->a:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/q0;->v(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/i3;->v(Lcom/google/android/gms/internal/ads/q0;)Lcom/google/android/gms/internal/ads/i3;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/i3;->E()Lcom/google/android/gms/internal/ads/d3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->H()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/c3;

    iget-object v1, p0, Lqkg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/c3;

    iget-object v1, p0, Lqkg;->c:Lcom/google/android/gms/internal/ads/o1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c3;->w(Lcom/google/android/gms/internal/ads/o1;)Lcom/google/android/gms/internal/ads/c3;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/i3;->x(Lcom/google/android/gms/internal/ads/c3;)Lcom/google/android/gms/internal/ads/i3;

    iget-object p0, p0, Lqkg;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/i3;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/i3;

    return-void
.end method
