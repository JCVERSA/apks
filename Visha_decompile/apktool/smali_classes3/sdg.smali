.class public final Lsdg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lsdg;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbgu;

.field public final b:Lcom/google/android/gms/internal/ads/zzbgr;

.field public final c:Lcom/google/android/gms/internal/ads/zzbhh;

.field public final d:Lcom/google/android/gms/internal/ads/zzbhe;

.field public final e:Lcom/google/android/gms/internal/ads/zzbmc;

.field public final f:Landroidx/collection/SimpleArrayMap;

.field public final g:Landroidx/collection/SimpleArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmdg;

    invoke-direct {v0}, Lmdg;-><init>()V

    new-instance v1, Lsdg;

    invoke-direct {v1, v0}, Lsdg;-><init>(Lmdg;)V

    sput-object v1, Lsdg;->h:Lsdg;

    return-void
.end method

.method public constructor <init>(Lmdg;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lmdg;->a:Lcom/google/android/gms/internal/ads/zzbgu;

    iput-object v0, p0, Lsdg;->a:Lcom/google/android/gms/internal/ads/zzbgu;

    iget-object v0, p1, Lmdg;->b:Lcom/google/android/gms/internal/ads/zzbgr;

    iput-object v0, p0, Lsdg;->b:Lcom/google/android/gms/internal/ads/zzbgr;

    iget-object v0, p1, Lmdg;->c:Lcom/google/android/gms/internal/ads/zzbhh;

    iput-object v0, p0, Lsdg;->c:Lcom/google/android/gms/internal/ads/zzbhh;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lmdg;->f:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lsdg;->f:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lmdg;->g:Landroidx/collection/SimpleArrayMap;

    .line 3
    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lsdg;->g:Landroidx/collection/SimpleArrayMap;

    iget-object v0, p1, Lmdg;->d:Lcom/google/android/gms/internal/ads/zzbhe;

    iput-object v0, p0, Lsdg;->d:Lcom/google/android/gms/internal/ads/zzbhe;

    iget-object p1, p1, Lmdg;->e:Lcom/google/android/gms/internal/ads/zzbmc;

    iput-object p1, p0, Lsdg;->e:Lcom/google/android/gms/internal/ads/zzbmc;

    return-void
.end method

.method public synthetic constructor <init>(Lmdg;Lrdg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsdg;-><init>(Lmdg;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbgr;
    .locals 0

    iget-object p0, p0, Lsdg;->b:Lcom/google/android/gms/internal/ads/zzbgr;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzbgu;
    .locals 0

    iget-object p0, p0, Lsdg;->a:Lcom/google/android/gms/internal/ads/zzbgu;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgx;
    .locals 0

    iget-object p0, p0, Lsdg;->g:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgx;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbha;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lsdg;->f:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzbhe;
    .locals 0

    iget-object p0, p0, Lsdg;->d:Lcom/google/android/gms/internal/ads/zzbhe;

    return-object p0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzbhh;
    .locals 0

    iget-object p0, p0, Lsdg;->c:Lcom/google/android/gms/internal/ads/zzbhh;

    return-object p0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzbmc;
    .locals 0

    iget-object p0, p0, Lsdg;->e:Lcom/google/android/gms/internal/ads/zzbmc;

    return-object p0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 3

    iget-object p0, p0, Lsdg;->f:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsdg;->c:Lcom/google/android/gms/internal/ads/zzbhh;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lsdg;->a:Lcom/google/android/gms/internal/ads/zzbgu;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lsdg;->b:Lcom/google/android/gms/internal/ads/zzbgr;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lsdg;->f:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lsdg;->e:Lcom/google/android/gms/internal/ads/zzbmc;

    if-eqz p0, :cond_4

    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method
