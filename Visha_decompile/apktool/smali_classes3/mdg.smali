.class public final Lmdg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzbgu;

.field public b:Lcom/google/android/gms/internal/ads/zzbgr;

.field public c:Lcom/google/android/gms/internal/ads/zzbhh;

.field public d:Lcom/google/android/gms/internal/ads/zzbhe;

.field public e:Lcom/google/android/gms/internal/ads/zzbmc;

.field public final f:Landroidx/collection/SimpleArrayMap;

.field public final g:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lmdg;->f:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lmdg;->g:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbgr;)Lmdg;
    .locals 0

    iput-object p1, p0, Lmdg;->b:Lcom/google/android/gms/internal/ads/zzbgr;

    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzbgu;)Lmdg;
    .locals 0

    iput-object p1, p0, Lmdg;->a:Lcom/google/android/gms/internal/ads/zzbgu;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbha;Lcom/google/android/gms/internal/ads/zzbgx;)Lmdg;
    .locals 1

    iget-object v0, p0, Lmdg;->f:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lmdg;->g:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzbmc;)Lmdg;
    .locals 0

    iput-object p1, p0, Lmdg;->e:Lcom/google/android/gms/internal/ads/zzbmc;

    return-object p0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzbhe;)Lmdg;
    .locals 0

    iput-object p1, p0, Lmdg;->d:Lcom/google/android/gms/internal/ads/zzbhe;

    return-object p0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzbhh;)Lmdg;
    .locals 0

    iput-object p1, p0, Lmdg;->c:Lcom/google/android/gms/internal/ads/zzbhh;

    return-object p0
.end method

.method public final g()Lsdg;
    .locals 2

    new-instance v0, Lsdg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsdg;-><init>(Lmdg;Lrdg;)V

    return-object v0
.end method
