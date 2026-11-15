.class public final Lcom/google/android/gms/measurement/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/g;Lv1j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/h;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_6

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    const-string v1, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android-app://com.google.appcrawler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "auto"

    :goto_1
    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_3
    :goto_2
    const-string v0, "gs"

    goto :goto_1

    :goto_3
    :try_start_2
    const-string v0, "referrer"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_4

    const/4 v0, 0x1

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzia;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzia;-><init>(Lcom/google/android/gms/measurement/internal/f;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    goto :goto_0

    :cond_5
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    goto :goto_0

    :goto_7
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v1, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    goto/16 :goto_0

    :goto_8
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/h;->x(Landroid/app/Activity;Landroid/os/Bundle;)V

    throw v0
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/h;->y(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/h;->z(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object p0

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object p1

    invoke-interface {p1}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lb7j;J)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object v0, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object v0

    iget-object v1, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzka;-><init>(Lb7j;J)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/h;->A(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/g;

    iget-object p0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->K()Lcom/google/android/gms/measurement/internal/h;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/h;->B(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
