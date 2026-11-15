.class public final Loji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public b:Ljava/util/List;

.field public c:Lnhi;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lrji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Loji;->b:Ljava/util/List;

    iput-object p1, p0, Loji;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lb9i;Lcom/google/android/gms/internal/ads/m9;)Loji;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Loji;->d(Lb9i;Lcom/google/android/gms/internal/ads/m9;Z)Loji;

    return-object p0
.end method

.method public final b(Lb9i;Lcom/google/android/gms/internal/ads/m9;)Loji;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Loji;->d(Lb9i;Lcom/google/android/gms/internal/ads/m9;Z)Loji;

    return-object p0
.end method

.method public final c()Lsji;
    .locals 4

    iget-object v0, p0, Loji;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lsji;

    new-instance v2, Lqji;

    iget-object v3, p0, Loji;->c:Lnhi;

    invoke-direct {v2, v0, v3}, Lqji;-><init>(Ljava/util/List;Lnhi;)V

    iget-object v0, p0, Loji;->a:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lsji;-><init>(Lohi;Ljava/lang/Class;Lrji;)V

    iput-object v3, p0, Loji;->b:Ljava/util/List;

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "build cannot be called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lb9i;Lcom/google/android/gms/internal/ads/m9;Z)Loji;
    .locals 8

    iget-object v0, p0, Loji;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/m9;->k0()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lpji;

    sget-object v3, Ld9i;->b:Ld9i;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/m9;->b0()I

    move-result v4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lpji;-><init>(Ld9i;ILb9i;ZLrji;)V

    iget-object p1, p0, Loji;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    iget-object p1, p0, Loji;->c:Lnhi;

    if-nez p1, :cond_0

    iput-object v0, p0, Loji;->c:Lnhi;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "you cannot set two primary primitives"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "only ENABLED key is allowed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "addEntry cannot be called after build"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
