.class public final Ldmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lznj;


# instance fields
.field public final a:Lh9e;

.field public b:Lc9e;

.field public c:Ld9e;


# direct methods
.method public constructor <init>(Lh9e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmj;->a:Lh9e;

    return-void
.end method


# virtual methods
.method public final a(Ly9e;)I
    .locals 1

    iget-object v0, p0, Ldmj;->b:Lc9e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ldmj;->c:Ld9e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Lc9e;->d(Ld9e;Ly9e;)I

    move-result p0

    return p0
.end method

.method public final b(JJ)V
    .locals 0

    iget-object p0, p0, Ldmj;->b:Lc9e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2, p3, p4}, Lc9e;->b(JJ)V

    return-void
.end method

.method public final c(Lk8j;Landroid/net/Uri;Ljava/util/Map;JJLf9e;)V
    .locals 7

    new-instance v6, Lm8e;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lm8e;-><init>(Lk8j;JJ)V

    iput-object v6, p0, Ldmj;->c:Ld9e;

    iget-object p1, p0, Ldmj;->b:Lc9e;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ldmj;->a:Lh9e;

    invoke-interface {p1, p2, p3}, Lh9e;->a(Landroid/net/Uri;Ljava/util/Map;)[Lc9e;

    move-result-object p1

    array-length p3, p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfww;->zzi(I)Ll4i;

    move-result-object p6

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p7

    iput-object p1, p0, Ldmj;->b:Lc9e;

    goto :goto_6

    :cond_1
    move v1, p7

    :goto_0
    if-ge v1, p3, :cond_7

    aget-object v2, p1, v1

    :try_start_0
    invoke-interface {v2, v6}, Lc9e;->e(Ld9e;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Ldmj;->b:Lc9e;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ln7g;->f(Z)V

    invoke-interface {v6}, Ld9e;->zzj()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v2}, Lc9e;->zzd()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p6, v2}, Ll4i;->i(Ljava/lang/Iterable;)Ll4i;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Ldmj;->b:Lc9e;

    if-nez v2, :cond_3

    invoke-interface {v6}, Ld9e;->zzf()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p7

    :goto_2
    invoke-static {v2}, Ln7g;->f(Z)V

    invoke-interface {v6}, Ld9e;->zzj()V

    goto :goto_4

    :goto_3
    iget-object p0, p0, Ldmj;->b:Lc9e;

    if-nez p0, :cond_5

    invoke-interface {v6}, Ld9e;->zzf()J

    move-result-wide p2

    cmp-long p0, p2, p4

    if-nez p0, :cond_6

    :cond_5
    move p7, v0

    :cond_6
    invoke-static {p7}, Ln7g;->f(Z)V

    invoke-interface {v6}, Ld9e;->zzj()V

    throw p1

    :catch_0
    iget-object v2, p0, Ldmj;->b:Lc9e;

    if-nez v2, :cond_3

    invoke-interface {v6}, Ld9e;->zzf()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    goto :goto_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget-object p3, p0, Ldmj;->b:Lc9e;

    if-eqz p3, :cond_8

    :goto_6
    iget-object p0, p0, Ldmj;->b:Lc9e;

    invoke-interface {p0, p8}, Lc9e;->f(Lf9e;)V

    return-void

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzxe;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    new-instance p3, Lvlj;

    invoke-direct {p3}, Lvlj;-><init>()V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/p7;->b(Ljava/util/List;Lm2i;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ", "

    invoke-static {p3, p1, p4}, Lo2i;->c(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "None of the available extractors ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p0
.end method

.method public final zzb()J
    .locals 2

    iget-object p0, p0, Ldmj;->c:Ld9e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ld9e;->zzf()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzc()V
    .locals 1

    iget-object p0, p0, Ldmj;->b:Lc9e;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcee;

    if-eqz v0, :cond_1

    check-cast p0, Lcee;

    invoke-virtual {p0}, Lcee;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Ldmj;->b:Lc9e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Ldmj;->b:Lc9e;

    :cond_0
    iput-object v1, p0, Ldmj;->c:Ld9e;

    return-void
.end method
