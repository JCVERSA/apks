.class public final Lqmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbog;


# instance fields
.field public final a:Lzlf;

.field public b:Landroid/content/Context;

.field public c:Lcom/google/android/gms/internal/ads/zzbki;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqmf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lbog;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqmf;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbki;)Lbog;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqmf;->c:Lcom/google/android/gms/internal/ads/zzbki;

    return-object p0
.end method

.method public final zzc()Lcog;
    .locals 3

    iget-object v0, p0, Lqmf;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lqmf;->c:Lcom/google/android/gms/internal/ads/zzbki;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbki;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lrmf;

    iget-object v1, p0, Lqmf;->a:Lzlf;

    iget-object v2, p0, Lqmf;->b:Landroid/content/Context;

    iget-object p0, p0, Lqmf;->c:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-direct {v0, v1, v2, p0}, Lrmf;-><init>(Lzlf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbki;)V

    return-object v0
.end method
