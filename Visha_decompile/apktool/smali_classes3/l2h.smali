.class public final Ll2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Latf;

.field public final c:Lcom/google/android/gms/internal/ads/zzbdd;

.field public final d:Lg8i;

.field public final e:Llrh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Latf;Llrh;Lg8i;Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2h;->a:Landroid/content/Context;

    iput-object p2, p0, Ll2h;->b:Latf;

    iput-object p3, p0, Ll2h;->e:Llrh;

    iput-object p4, p0, Ll2h;->d:Lg8i;

    iput-object p5, p0, Ll2h;->c:Lcom/google/android/gms/internal/ads/zzbdd;

    return-void
.end method

.method public static synthetic c(Ll2h;Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 0

    iget-object p0, p0, Ll2h;->c:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zze(Lcom/google/android/gms/internal/ads/zzbda;)V

    return-void
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 7

    new-instance v6, Lj2h;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Ll2h;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Lh2h;

    invoke-direct {v4}, Lh2h;-><init>()V

    iget-object v0, p2, Lhmh;->u:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Limh;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj2h;-><init>(Ll2h;Landroid/view/View;Lejf;Lztf;Limh;)V

    new-instance v0, Lpuf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lpuf;-><init>(Lvmh;Lhmh;Ljava/lang/String;)V

    iget-object p1, p0, Ll2h;->b:Latf;

    invoke-virtual {p1, v0, v6}, Latf;->a(Lpuf;Lasf;)Lvrf;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-virtual {p1}, Lvrf;->l()Lk2h;

    move-result-object v1

    iget-object p2, p2, Lhmh;->s:Llmh;

    iget-object v2, p2, Llmh;->b:Ljava/lang/String;

    iget-object p2, p2, Llmh;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzt:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v1, Li2h;

    invoke-direct {v1, p0, v0}, Li2h;-><init>(Ll2h;Lcom/google/android/gms/internal/ads/zzbcy;)V

    iget-object v0, p0, Ll2h;->e:Llrh;

    iget-object p0, p0, Ll2h;->d:Lg8i;

    invoke-static {v1, p0, p2, v0}, Lxqh;->d(Lqqh;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzffn;->zzu:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {p0, p2}, Lcrh;->b(Ljava/lang/Object;)Lcrh;

    move-result-object p0

    invoke-virtual {p1}, Lvrf;->h()Lsrf;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcrh;->d(Lim5;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p0, Ll2h;->c:Lcom/google/android/gms/internal/ads/zzbdd;

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
