.class public abstract Llsi;
.super Lgri;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/ia;

.field public c:Lcom/google/android/gms/internal/ads/ia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ia;)V
    .locals 0

    invoke-direct {p0}, Lgri;-><init>()V

    iput-object p1, p0, Llsi;->b:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Llsi;->l()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    iput-object p1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcui;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Lrti;
    .locals 0

    invoke-virtual {p0}, Llsi;->r()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Llsi;->n()Llsi;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic g([BIILesi;)Lgri;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Llsi;->p([BIILesi;)Llsi;

    return-object p0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/ia;
    .locals 0

    iget-object p0, p0, Llsi;->b:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->K()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    return-object p0
.end method

.method public n()Llsi;
    .locals 1

    invoke-virtual {p0}, Llsi;->s()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->G()Llsi;

    move-result-object v0

    invoke-virtual {p0}, Llsi;->r()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    iput-object p0, v0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    return-object v0
.end method

.method public o(Lcom/google/android/gms/internal/ads/ia;)Llsi;
    .locals 1

    invoke-virtual {p0}, Llsi;->s()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ia;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Llsi;->t()V

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {v0, p1}, Llsi;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public p([BIILesi;)Llsi;
    .locals 8

    invoke-virtual {p0}, Llsi;->t()V

    :try_start_0
    invoke-static {}, Lxti;->a()Lxti;

    move-result-object v0

    iget-object v1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxti;->b(Ljava/lang/Class;)Lcui;

    move-result-object v2

    iget-object v3, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    add-int v6, p2, p3

    new-instance v7, Lmri;

    invoke-direct {v7, p4}, Lmri;-><init>(Lesi;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcui;->d(Ljava/lang/Object;[BIILmri;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from byte array should not throw IOException."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    throw p0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/ia;
    .locals 1

    invoke-virtual {p0}, Llsi;->r()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ia;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lgri;->i(Lrti;)Lcom/google/android/gms/internal/ads/zzhak;

    move-result-object p0

    throw p0
.end method

.method public r()Lcom/google/android/gms/internal/ads/ia;
    .locals 1

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    return-object p0

    :cond_0
    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->C()V

    iget-object p0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public s()Lcom/google/android/gms/internal/ads/ia;
    .locals 0

    iget-object p0, p0, Llsi;->b:Lcom/google/android/gms/internal/ads/ia;

    return-object p0
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llsi;->u()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 2

    invoke-virtual {p0}, Llsi;->l()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    iget-object v1, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    invoke-static {v0, v1}, Llsi;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Llsi;->c:Lcom/google/android/gms/internal/ads/ia;

    return-void
.end method
