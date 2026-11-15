.class public final Lcom/google/android/gms/measurement/internal/h;
.super Lnlh;
.source "SourceFile"


# instance fields
.field public volatile c:Lu2j;

.field public volatile d:Lu2j;

.field public e:Lu2j;

.field public final f:Ljava/util/Map;

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:Lu2j;

.field public j:Lu2j;

.field public k:Z

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lnlh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic p(Lcom/google/android/gms/measurement/internal/h;)Lu2j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->j:Lu2j;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/google/android/gms/measurement/internal/h;Lu2j;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->j:Lu2j;

    return-void
.end method

.method public static bridge synthetic u(Lcom/google/android/gms/measurement/internal/h;Lu2j;Lu2j;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/h;->n(Lu2j;Lu2j;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/measurement/internal/h;Landroid/os/Bundle;Lu2j;Lu2j;J)V
    .locals 8

    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "screen_view"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc9j;->s0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/h;->n(Lu2j;Lu2j;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/google/android/gms/measurement/internal/h;Lu2j;ZJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/h;->o(Lu2j;ZJ)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/h;->k:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->g:Landroid/app/Activity;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->g:Landroid/app/Activity;

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/h;->h:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v1

    invoke-virtual {v1}, Loce;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->i:Lu2j;

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/h;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->i:Lu2j;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/h;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/h;->E(Landroid/app/Activity;)Lu2j;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/h;->F(Landroid/app/Activity;Lu2j;Z)V

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->y()Lcom/google/android/gms/measurement/internal/b;

    move-result-object p0

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzc;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzc;-><init>(Lcom/google/android/gms/measurement/internal/b;J)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final B(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2j;

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    iget-wide v1, p0, Lu2j;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "name"

    iget-object v1, p0, Lu2j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "referrer_name"

    iget-object p0, p0, Lu2j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final C(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "setCurrentScreen cannot be called while screen reporting is disabled."

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    if-nez v0, :cond_1

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v1, "Activity"

    invoke-virtual {p0, p3, v1}, Lcom/google/android/gms/measurement/internal/h;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v1, v0, Lu2j;->b:Ljava/lang/String;

    invoke-static {v1, p3}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, v0, Lu2j;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/16 v0, 0x64

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    if-nez p2, :cond_a

    const-string v1, "null"

    goto :goto_3

    :cond_a
    move-object v1, p2

    :goto_3
    const-string v2, "Setting current screen to name, class"

    invoke-virtual {v0, v2, v1, p3}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lu2j;

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v1}, Lc9j;->p0()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lu2j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/h;->F(Landroid/app/Activity;Lu2j;Z)V

    return-void
.end method

.method public final D(Landroid/os/Bundle;J)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/h;->k:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "Cannot log screen view event when the app is in the background."

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const-string v1, "screen_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x64

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    if-le v2, v1, :cond_2

    :cond_1
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "Invalid screen name length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    const-string v2, "screen_class"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    if-le v4, v1, :cond_4

    :cond_3
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "Invalid screen class length for screen view. Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_4
    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->g:Landroid/app/Activity;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Activity"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/h;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_5
    const-string v1, "Activity"

    goto :goto_0

    :cond_6
    move-object v4, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/h;->h:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/h;->h:Z

    iget-object v2, v1, Lu2j;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, v1, Lu2j;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object p0

    const-string p1, "Ignoring call to log screen view event with duplicate parameters."

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    if-nez v3, :cond_8

    const-string v1, "null"

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    if-nez v4, :cond_9

    const-string v2, "null"

    goto :goto_3

    :cond_9
    move-object v2, v4

    :goto_3
    const-string v5, "Logging screen view with name, class"

    invoke-virtual {v0, v5, v1, v2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->d:Lu2j;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    :goto_4
    new-instance v1, Lu2j;

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    invoke-virtual {v2}, Lc9j;->p0()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v1

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Lu2j;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->d:Lu2j;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->i:Lu2j;

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p2

    invoke-interface {p2}, Lfy0;->elapsedRealtime()J

    move-result-wide v10

    iget-object p2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/measurement/internal/zzim;

    move-object v5, p3

    move-object v6, p0

    move-object v7, p1

    move-object v8, v1

    move-object v9, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/h;Landroid/os/Bundle;Lu2j;Lu2j;J)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final E(Landroid/app/Activity;)Lu2j;
    .locals 5

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2j;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Activity"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/h;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lu2j;

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    invoke-virtual {v2}, Lc9j;->p0()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Lu2j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->i:Lu2j;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->i:Lu2j;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final F(Landroid/app/Activity;Lu2j;Z)V
    .locals 12

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->d:Lu2j;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    goto :goto_0

    :goto_1
    iget-object v2, p2, Lu2j;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "Activity"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/h;->s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    new-instance v2, Lu2j;

    iget-object v5, p2, Lu2j;->a:Ljava/lang/String;

    iget-wide v7, p2, Lu2j;->c:J

    iget-boolean v9, p2, Lu2j;->e:Z

    iget-wide v10, p2, Lu2j;->f:J

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lu2j;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    goto :goto_4

    :cond_2
    move-object v2, p2

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->d:Lu2j;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzin;

    move-object v0, v8

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/h;Lu2j;Lu2j;JZ)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n(Lu2j;Lu2j;JZLandroid/os/Bundle;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual {p0}, Lini;->g()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    iget-wide v8, v2, Lu2j;->c:J

    iget-wide v10, v1, Lu2j;->c:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    iget-object v8, v2, Lu2j;->b:Ljava/lang/String;

    iget-object v9, v1, Lu2j;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v2, Lu2j;->a:Ljava/lang/String;

    iget-object v9, v1, Lu2j;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lx2j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    if-eqz p5, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/h;->e:Lu2j;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    if-eqz v8, :cond_c

    if-eqz v5, :cond_3

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    move-object v14, v8

    goto :goto_2

    :cond_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    invoke-static {v1, v14, v7}, Lc9j;->x(Lu2j;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lu2j;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lu2j;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v5, "_pi"

    iget-wide v8, v2, Lu2j;->c:J

    invoke-virtual {v14, v5, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v2

    iget-object v2, v2, Lb7j;->e:Lw6j;

    iget-wide v10, v2, Lw6j;->b:J

    sub-long v10, v3, v10

    iput-wide v3, v2, Lw6j;->b:J

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    invoke-virtual {v2, v14, v10, v11}, Lc9j;->v(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v2

    invoke-virtual {v2}, Loce;->w()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "_mst"

    const-wide/16 v10, 0x1

    invoke-virtual {v14, v2, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-boolean v2, v1, Lu2j;->e:Z

    if-eq v7, v2, :cond_9

    const-string v2, "auto"

    :goto_3
    move-object v10, v2

    goto :goto_4

    :cond_9
    const-string v2, "app"

    goto :goto_3

    :goto_4
    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v11

    iget-boolean v2, v1, Lu2j;->e:Z

    if-eqz v2, :cond_b

    move-wide/from16 p5, v11

    iget-wide v11, v1, Lu2j;->f:J

    cmp-long v2, v11, v8

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-wide v12, v11

    goto :goto_6

    :cond_b
    move-wide/from16 p5, v11

    :goto_5
    move-wide/from16 v12, p5

    :goto_6
    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v9

    const-string v11, "_vs"

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/g;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/h;->e:Lu2j;

    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/h;->o(Lu2j;ZJ)V

    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/h;->e:Lu2j;

    iget-boolean v2, v1, Lu2j;->e:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/h;->j:Lu2j;

    :cond_e
    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/j;->t(Lu2j;)V

    return-void
.end method

.method public final o(Lu2j;ZJ)V
    .locals 3

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->y()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/b;->m(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lu2j;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object p0

    iget-object p0, p0, Lb7j;->e:Lw6j;

    invoke-virtual {p0, v1, p2, p3, p4}, Lw6j;->d(ZZJ)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lu2j;->d:Z

    :cond_1
    return-void
.end method

.method public final q()Lu2j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    return-object p0
.end method

.method public final r(Z)Lu2j;
    .locals 0

    invoke-virtual {p0}, Lnlh;->h()V

    invoke-virtual {p0}, Lini;->g()V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->e:Lu2j;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/h;->e:Lu2j;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->j:Lu2j;

    return-object p0
.end method

.method public final s(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Activity"

    return-object p0

    :cond_0
    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    const/16 v0, 0x64

    if-le p2, v0, :cond_2

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final x(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, Lu2j;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lu2j;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final y(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->g:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/h;->g:Landroid/app/Activity;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->w()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/h;->f:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final z(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/h;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/h;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v2

    invoke-virtual {v2}, Loce;->w()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzip;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzip;-><init>(Lcom/google/android/gms/measurement/internal/h;J)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/h;->E(Landroid/app/Activity;)Lu2j;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/h;->d:Lu2j;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/h;->c:Lu2j;

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/h;Lu2j;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
