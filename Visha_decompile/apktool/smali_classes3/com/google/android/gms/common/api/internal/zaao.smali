.class final Lcom/google/android/gms/common/api/internal/zaao;
.super Lcom/google/android/gms/common/api/internal/zaav;
.source "SourceFile"


# instance fields
.field final synthetic zaa:Ltzd;

.field private final zac:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ltzd;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Ltzd;Lszd;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lz1e;

    const/4 v1, 0x0

    invoke-static {v1}, Ltzd;->b(Ltzd;)Laj4;

    move-result-object v2

    invoke-direct {v0, v2}, Lz1e;-><init>(Laj4;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/a$f;->requiresGooglePlayServices()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lubc;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lrzd;->b(Lrzd;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_2
    if-ge v5, v2, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a$f;

    invoke-static {v1}, Ltzd;->a(Ltzd;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lz1e;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    if-nez v6, :cond_2

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :cond_4
    if-ge v5, v3, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a$f;

    invoke-static {v1}, Ltzd;->a(Ltzd;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lz1e;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    if-eqz v6, :cond_4

    :cond_5
    :goto_1
    if-nez v6, :cond_a

    invoke-static {v1}, Ltzd;->f(Ltzd;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Ltzd;->d(Ltzd;)Lk1e;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Ltzd;->d(Ltzd;)Lk1e;

    move-result-object v2

    invoke-interface {v2}, Lk1e;->zab()V

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/a$c;

    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->requiresGooglePlayServices()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v1}, Ltzd;->a(Ltzd;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lz1e;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v1}, Ltzd;->c(Ltzd;)Lb0e;

    new-instance v0, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v0, p0, v1, v4}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/zaao;Lzzd;Lcom/google/android/gms/common/internal/a$c;)V

    throw v1

    :cond_8
    :goto_3
    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/a$f;->connect(Lcom/google/android/gms/common/internal/a$c;)V

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-static {v1}, Ltzd;->c(Ltzd;)Lb0e;

    new-instance v2, Lcom/google/android/gms/common/api/internal/i;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/i;-><init>(Lcom/google/android/gms/common/api/internal/zaao;Lzzd;Lcom/google/android/gms/common/ConnectionResult;)V

    throw v1
.end method
