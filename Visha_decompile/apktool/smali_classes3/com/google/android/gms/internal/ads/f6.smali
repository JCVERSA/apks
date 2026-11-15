.class public final Lcom/google/android/gms/internal/ads/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmvh;


# static fields
.field public static final i:Lcom/google/android/gms/internal/ads/f6;

.field public static final j:Landroid/os/Handler;

.field public static k:Landroid/os/Handler;

.field public static final l:Ljava/lang/Runnable;

.field public static final m:Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public c:Z

.field public final d:Ljava/util/List;

.field public final e:Lovh;

.field public final f:Lcwh;

.field public final g:Ldwh;

.field public h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/f6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->i:Lcom/google/android/gms/internal/ads/f6;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfly;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->m:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f6;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->d:Ljava/util/List;

    new-instance v0, Lcwh;

    invoke-direct {v0}, Lcwh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    new-instance v0, Lovh;

    invoke-direct {v0}, Lovh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->e:Lovh;

    new-instance v0, Ldwh;

    new-instance v1, Lhwh;

    invoke-direct {v1}, Lhwh;-><init>()V

    invoke-direct {v0, v1}, Ldwh;-><init>(Lhwh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->g:Ldwh;

    return-void
.end method

.method public static bridge synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/internal/ads/f6;)Ldwh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f6;->g:Ldwh;

    return-object p0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/f6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->i:Lcom/google/android/gms/internal/ads/f6;

    return-object v0
.end method

.method public static bridge synthetic e()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic f()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic g(Lcom/google/android/gms/internal/ads/f6;)V
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/f6;->b:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f6;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/f6;->c:Z

    invoke-static {}, Lcvh;->a()Lcvh;

    move-result-object v0

    invoke-virtual {v0}, Lcvh;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsuh;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/f6;->h:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {v0}, Lcwh;->i()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/f6;->e:Lovh;

    invoke-virtual {v3}, Lovh;->a()Lnvh;

    move-result-object v6

    invoke-virtual {v0}, Lcwh;->e()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v10, 0x0

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcwh;->e()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v10}, Lnvh;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v5}, Lcwh;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3}, Lovh;->b()Lnvh;

    move-result-object v9

    invoke-virtual {v0, v5}, Lcwh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v9, v8}, Lnvh;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v5}, Lvvh;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    :try_start_0
    const-string v9, "notVisibleReason"

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v11, "Error with setting not visible reason"

    invoke-static {v11, v9}, Lwvh;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    invoke-static {v7, v8}, Lvvh;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static {v7}, Lvvh;->f(Lorg/json/JSONObject;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/f6;->g:Ldwh;

    invoke-virtual {v5, v7, v8, v1, v2}, Ldwh;->c(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {v0}, Lcwh;->f()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v6, v10}, Lnvh;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/f6;->k(Landroid/view/View;Lnvh;Lorg/json/JSONObject;IZ)V

    invoke-static {v3}, Lvvh;->f(Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/f6;->g:Ldwh;

    invoke-virtual {v0}, Lcwh;->f()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v1, v2}, Ldwh;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f6;->g:Ldwh;

    invoke-virtual {v1}, Ldwh;->b()V

    :goto_3
    invoke-virtual {v0}, Lcwh;->g()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/f6;->h:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    throw v10

    :cond_5
    :goto_4
    invoke-static {}, Llvh;->a()Llvh;

    move-result-object p0

    invoke-virtual {p0}, Llvh;->c()V

    return-void
.end method

.method public static final l()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/f6;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lnvh;Lorg/json/JSONObject;Z)V
    .locals 9

    invoke-static {p1}, Lawh;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {v0, p1}, Lcwh;->l(Landroid/view/View;)I

    move-result v5

    const/4 v1, 0x3

    if-ne v5, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {p2, p1}, Lnvh;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p3, v4}, Lvvh;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lcwh;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    const/4 v7, 0x1

    if-eqz p3, :cond_2

    invoke-static {v4, p3}, Lvvh;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {p2, p1}, Lcwh;->k(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_0
    const-string p2, "hasWindowFocus"

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error with setting has window focus"

    invoke-static {p2, p1}, Lwvh;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {p1, p3}, Lcwh;->j(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "isPipActive"

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Error with setting is picture-in-picture active"

    invoke-static {p2, p1}, Lwvh;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/f6;->f:Lcwh;

    invoke-virtual {p1}, Lcwh;->h()V

    goto :goto_6

    :cond_2
    invoke-virtual {v0, p1}, Lcwh;->b(Landroid/view/View;)Lbwh;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lbwh;->a()Lfvh;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3}, Lbwh;->b()Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v6, v0

    :goto_2
    if-ge v6, v3, :cond_3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    const-string p3, "isFriendlyObstructionFor"

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionClass"

    invoke-virtual {v1}, Lfvh;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionPurpose"

    invoke-virtual {v1}, Lfvh;->a()Lcom/google/android/gms/internal/ads/zzfkc;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionReason"

    invoke-virtual {v1}, Lfvh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move p3, v7

    goto :goto_4

    :catch_2
    move-exception p3

    const-string v1, "Error with setting friendly obstruction"

    invoke-static {v1, p3}, Lwvh;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    move p3, v0

    :goto_4
    if-nez p4, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    move v6, v7

    goto :goto_5

    :cond_6
    move v6, v0

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/f6;->k(Landroid/view/View;Lnvh;Lorg/json/JSONObject;IZ)V

    :goto_6
    iget p1, p0, Lcom/google/android/gms/internal/ads/f6;->b:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/google/android/gms/internal/ads/f6;->b:I

    :cond_7
    :goto_7
    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->l()V

    return-void
.end method

.method public final i()V
    .locals 3

    sget-object p0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/google/android/gms/internal/ads/f6;->k:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/f6;->l()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f6;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/f6;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzflw;-><init>(Lcom/google/android/gms/internal/ads/f6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(Landroid/view/View;Lnvh;Lorg/json/JSONObject;IZ)V
    .locals 7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lnvh;->a(Landroid/view/View;Lorg/json/JSONObject;Lmvh;ZZ)V

    return-void
.end method
