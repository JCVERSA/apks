.class public final Lrmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcog;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/zzbki;

.field public final c:Lzlf;

.field public final d:Lrmf;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;


# direct methods
.method public constructor <init>(Lzlf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbki;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lrmf;->d:Lrmf;

    iput-object p1, p0, Lrmf;->c:Lzlf;

    iput-object p2, p0, Lrmf;->a:Landroid/content/Context;

    iput-object p3, p0, Lrmf;->b:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-static {p0}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p1

    iput-object p1, p0, Lrmf;->e:Lqyi;

    invoke-static {p3}, Lgyi;->a(Ljava/lang/Object;)Lfyi;

    move-result-object p2

    iput-object p2, p0, Lrmf;->f:Lqyi;

    new-instance p3, Lzng;

    invoke-direct {p3, p2}, Lzng;-><init>(Lqyi;)V

    iput-object p3, p0, Lrmf;->g:Lqyi;

    new-instance p2, Laog;

    invoke-direct {p2, p1, p3}, Laog;-><init>(Lqyi;Lqyi;)V

    invoke-static {p2}, Leyi;->b(Lqyi;)Lqyi;

    move-result-object p1

    iput-object p1, p0, Lrmf;->h:Lqyi;

    return-void
.end method

.method public static bridge synthetic a(Lrmf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lrmf;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final b()Lyng;
    .locals 0

    iget-object p0, p0, Lrmf;->b:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-static {p0}, Lzng;->b(Lcom/google/android/gms/internal/ads/zzbki;)Lyng;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lung;
    .locals 3

    new-instance v0, Lomf;

    iget-object v1, p0, Lrmf;->c:Lzlf;

    iget-object p0, p0, Lrmf;->d:Lrmf;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lomf;-><init>(Lzlf;Lrmf;Ldnf;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdsm;
    .locals 0

    iget-object p0, p0, Lrmf;->h:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdsm;

    return-object p0
.end method
