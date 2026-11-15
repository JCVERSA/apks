.class public final Lcom/google/android/gms/measurement/internal/j;
.super Lnlh;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/i;

.field public d:Lcom/google/android/gms/measurement/internal/zzee;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lcom/google/android/gms/measurement/internal/a;

.field public final g:Ld7j;

.field public final h:Ljava/util/List;

.field public final i:Lcom/google/android/gms/measurement/internal/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 2

    invoke-direct {p0, p1}, Lnlh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    new-instance v0, Ld7j;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-direct {v0, v1}, Ld7j;-><init>(Lfy0;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->g:Ld7j;

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/j;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    new-instance v0, Lm4j;

    invoke-direct {v0, p0, p1}, Lm4j;-><init>(Lcom/google/android/gms/measurement/internal/j;Luoi;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->f:Lcom/google/android/gms/measurement/internal/a;

    new-instance v0, Ls4j;

    invoke-direct {v0, p0, p1}, Ls4j;-><init>(Lcom/google/android/gms/measurement/internal/j;Luoi;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->i:Lcom/google/android/gms/measurement/internal/a;

    return-void
.end method

.method public static bridge synthetic G(Lcom/google/android/gms/measurement/internal/j;)Lcom/google/android/gms/measurement/internal/zzee;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/google/android/gms/measurement/internal/j;)Lcom/google/android/gms/measurement/internal/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    return-object p0
.end method

.method public static bridge synthetic J(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzee;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    return-void
.end method

.method public static bridge synthetic K(Lcom/google/android/gms/measurement/internal/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->C()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/google/android/gms/measurement/internal/j;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->O()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic M(Lcom/google/android/gms/measurement/internal/j;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->D()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 7

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v4

    invoke-virtual {v4}, Lwzg;->n()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    move v3, v1

    goto/16 :goto_4

    :cond_2
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v4

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    const v5, 0xbdfcb8

    invoke-virtual {v4, v5}, Lc9j;->n0(I)I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Unexpected service status"

    invoke-virtual {v0, v4, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move v1, v3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    const-string v3, "Service updating"

    invoke-virtual {v0, v3}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    const-string v1, "Service invalid"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    const-string v1, "Service disabled"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v4

    const-string v5, "Service container out of date"

    invoke-virtual {v4, v5}, Lu6h;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v4

    invoke-virtual {v4}, Lc9j;->m0()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v4, "Service missing"

    invoke-virtual {v0, v4}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v3, "Service available"

    invoke-virtual {v0, v3}, Lu6h;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v3, :cond_b

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->y()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v0

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {v0}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final B(Z)Lcom/google/android/gms/measurement/internal/zzq;
    .locals 2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->d:Lnmh;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p0

    iget-object p0, p0, Lroh;->d:Lnmh;

    invoke-virtual {p0}, Lnmh;->a()Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lroh;->x:Landroid/util/Pair;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lwzg;->o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p0

    return-object p0
.end method

.method public final C()V
    .locals 4

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->i:Lcom/google/android/gms/measurement/internal/a;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/a;->b()V

    return-void
.end method

.method public final D()V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->g:Ld7j;

    invoke-virtual {v0}, Ld7j;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->f:Lcom/google/android/gms/measurement/internal/a;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    sget-object p0, Lkwg;->K:Llvg;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Llvg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/a;->d(J)V

    return-void
.end method

.method public final E(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->i:Lcom/google/android/gms/measurement/internal/a;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/a;->d(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->O()V

    return-void
.end method

.method public final F()Z
    .locals 0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    const/4 p0, 0x1

    return p0
.end method

.method public final I()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final N()V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v1

    invoke-virtual {v1}, Lv1h;->q()Z

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziz;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zziz;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final O()V
    .locals 5

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->A()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/i;->b(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string v0, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {p0, v0}, Lu6h;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/i;->c()V

    return-void
.end method

.method public final P()V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->d()V

    :try_start_0
    invoke-static {}, Lcf1;->b()Lcf1;

    move-result-object v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {v0, v1, v2}, Lcf1;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    return-void
.end method

.method public final Q(Lcom/google/android/gms/internal/measurement/zzcf;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziy;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zziy;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/zzcf;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final R(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzix;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzix;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final S(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjk;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzjk;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;Lcom/google/android/gms/internal/measurement/zzcf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final T(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjj;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzjj;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziv;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzq;Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final V(Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzit;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v6

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzjl;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Lcom/google/android/gms/measurement/internal/j;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;Z)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->F()Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1h;->u(Lcom/google/android/gms/measurement/internal/zzaw;)Z

    move-result v5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjh;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjh;-><init>(Lcom/google/android/gms/measurement/internal/j;ZLcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/measurement/zzcf;Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lc9j;->n0(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lu6h;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-virtual {p0, p1, p2}, Lc9j;->E(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjd;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzjd;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->F()Z

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v1

    invoke-virtual {v1}, Lv1h;->p()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zziw;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(Lcom/google/android/gms/measurement/internal/zzee;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 10

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->F()Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    const/16 v0, 0x64

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lv1h;->o(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v0, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzaw;

    if-eqz v8, :cond_2

    :try_start_0
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzee;->zzk(Lcom/google/android/gms/measurement/internal/zzaw;Lcom/google/android/gms/measurement/internal/zzq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    iget-object v8, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    invoke-virtual {v8, v9, v7}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzlc;

    if-eqz v8, :cond_3

    :try_start_1
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzlc;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzee;->zzt(Lcom/google/android/gms/measurement/internal/zzlc;Lcom/google/android/gms/measurement/internal/zzq;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    iget-object v8, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v8

    const-string v9, "Failed to send user property to the service"

    invoke-virtual {v8, v9, v7}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzac;

    if-eqz v8, :cond_4

    :try_start_2
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/zzee;->zzn(Lcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzq;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    iget-object v8, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v8

    const-string v9, "Failed to send conditional user property to the service"

    invoke-virtual {v8, v9, v7}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final r(Lcom/google/android/gms/measurement/internal/zzac;)V
    .locals 8

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1h;->t(Lcom/google/android/gms/measurement/internal/zzac;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzac;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzji;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzji;-><init>(Lcom/google/android/gms/measurement/internal/j;ZLcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzac;Lcom/google/android/gms/measurement/internal/zzac;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->F()Z

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object p1

    invoke-virtual {p1}, Lv1h;->p()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzjg;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final t(Lu2j;)V
    .locals 1

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzja;-><init>(Lcom/google/android/gms/measurement/internal/j;Lu2j;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzjb;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjf;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzjf;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Lcom/google/android/gms/measurement/internal/zzee;)V
    .locals 0

    invoke-virtual {p0}, Lini;->g()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->D()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->C()V

    return-void
.end method

.method public final x(Lcom/google/android/gms/measurement/internal/zzlc;)V
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->F()Z

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1h;->v(Lcom/google/android/gms/measurement/internal/zzlc;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/j;->B(Z)Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zziu;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Lcom/google/android/gms/measurement/internal/j;Lcom/google/android/gms/measurement/internal/zzq;ZLcom/google/android/gms/measurement/internal/zzlc;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/j;->E(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y()Z
    .locals 0

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j;->d:Lcom/google/android/gms/measurement/internal/zzee;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 3

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p0

    invoke-virtual {p0}, Lc9j;->m0()I

    move-result p0

    sget-object v0, Lkwg;->h0:Llvg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Llvg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method
