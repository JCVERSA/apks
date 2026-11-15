.class public final Lq2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbdd;

.field public final b:Lg8i;

.field public final c:Llrh;

.field public final d:Ld3h;


# direct methods
.method public constructor <init>(Llrh;Lg8i;Lcom/google/android/gms/internal/ads/zzbdd;Ld3h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2h;->c:Llrh;

    iput-object p2, p0, Lq2h;->b:Lg8i;

    iput-object p3, p0, Lq2h;->a:Lcom/google/android/gms/internal/ads/zzbdd;

    iput-object p4, p0, Lq2h;->d:Ld3h;

    return-void
.end method

.method public static synthetic c(Lq2h;Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 0

    iget-object p0, p0, Lq2h;->a:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zze(Lcom/google/android/gms/internal/ads/zzbda;)V

    return-void
.end method

.method public static bridge synthetic d(Lq2h;)Ld3h;
    .locals 0

    iget-object p0, p0, Lq2h;->d:Ld3h;

    return-object p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 9

    new-instance v6, Leff;

    invoke-direct {v6}, Leff;-><init>()V

    new-instance v7, Lz2h;

    invoke-direct {v7}, Lz2h;-><init>()V

    new-instance v8, Lp2h;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lp2h;-><init>(Lq2h;Leff;Lvmh;Lhmh;Lz2h;)V

    invoke-virtual {v7, v8}, Lz2h;->a(Lcom/google/android/gms/ads/internal/zzg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbcy;

    iget-object p2, p2, Lhmh;->s:Llmh;

    iget-object v0, p2, Llmh;->b:Ljava/lang/String;

    iget-object p2, p2, Llmh;->a:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzt:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v0, Lo2h;

    invoke-direct {v0, p0, p1}, Lo2h;-><init>(Lq2h;Lcom/google/android/gms/internal/ads/zzbcy;)V

    iget-object p1, p0, Lq2h;->c:Llrh;

    iget-object p0, p0, Lq2h;->b:Lg8i;

    invoke-static {v0, p0, p2, p1}, Lxqh;->d(Lqqh;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzffn;->zzu:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {p0, p1}, Lcrh;->b(Ljava/lang/Object;)Lcrh;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcrh;->d(Lim5;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p0, Lq2h;->a:Lcom/google/android/gms/internal/ads/zzbdd;

    if-eqz p0, :cond_0

    iget-object p0, p2, Lhmh;->s:Llmh;

    if-eqz p0, :cond_0

    iget-object p0, p0, Llmh;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
