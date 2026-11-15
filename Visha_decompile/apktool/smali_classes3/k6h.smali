.class public final Lk6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Ljkg;

.field public final c:Lcom/google/android/gms/internal/ads/t4;

.field public final d:Lm6h;


# direct methods
.method public constructor <init>(Lg8i;Ljkg;Lcom/google/android/gms/internal/ads/t4;Lm6h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6h;->a:Lg8i;

    iput-object p2, p0, Lk6h;->b:Ljkg;

    iput-object p3, p0, Lk6h;->c:Lcom/google/android/gms/internal/ads/t4;

    iput-object p4, p0, Lk6h;->d:Lm6h;

    return-void
.end method

.method public static synthetic a(Lk6h;)Ll6h;
    .locals 8

    sget-object v0, Lcye;->D1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lk6h;->b:Ljkg;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljkg;->c(Ljava/lang/String;Lorg/json/JSONObject;)Leoh;

    move-result-object v3

    invoke-virtual {v3}, Leoh;->c()Z

    iget-object v4, p0, Lk6h;->c:Lcom/google/android/gms/internal/ads/t4;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/t4;->t()Z

    move-result v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v6, Lcye;->Kb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v6}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Leoh;->k()Lcom/google/android/gms/internal/ads/zzbrm;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "sdk_version"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Leoh;->j()Lcom/google/android/gms/internal/ads/zzbrm;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "adapter_version"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbrm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :try_start_3
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_3
    new-instance v0, Ll6h;

    invoke-direct {v0, v1}, Ll6h;-><init>(Landroid/os/Bundle;)V

    sget-object v1, Lcye;->Kb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lk6h;->d:Lm6h;

    invoke-virtual {p0, v0}, Lm6h;->b(Ll6h;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    sget-object v0, Lcye;->Kb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk6h;->d:Lm6h;

    invoke-virtual {v1}, Lm6h;->a()Ll6h;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lm6h;->a()Ll6h;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcye;->D1:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lj3i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk6h;->d:Lm6h;

    invoke-virtual {v0}, Lm6h;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lk6h;->c:Lcom/google/android/gms/internal/ads/t4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t4;->t()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk6h;->d:Lm6h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm6h;->c(Z)V

    iget-object v0, p0, Lk6h;->a:Lg8i;

    new-instance v1, Lj6h;

    invoke-direct {v1, p0}, Lj6h;-><init>(Lk6h;)V

    invoke-interface {v0, v1}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Ll6h;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Ll6h;-><init>(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
