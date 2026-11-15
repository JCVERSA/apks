.class public final Lcom/google/android/gms/measurement/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luoi;


# static fields
.field public static volatile H:Lcom/google/android/gms/measurement/internal/e;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public volatile D:Z

.field public E:I

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lb7e;

.field public final g:Loce;

.field public final h:Lroh;

.field public final i:Lcom/google/android/gms/measurement/internal/c;

.field public final j:Lcom/google/android/gms/measurement/internal/d;

.field public final k:Lb7j;

.field public final l:Lc9j;

.field public final m:Lr3h;

.field public final n:Lfy0;

.field public final o:Lcom/google/android/gms/measurement/internal/h;

.field public final p:Lcom/google/android/gms/measurement/internal/g;

.field public final q:Lcom/google/android/gms/measurement/internal/b;

.field public final r:Lm2j;

.field public final s:Ljava/lang/String;

.field public t:Lv1h;

.field public u:Lcom/google/android/gms/measurement/internal/j;

.field public v:Ltme;

.field public w:Lwzg;

.field public x:Z

.field public y:Ljava/lang/Boolean;

.field public z:J


# direct methods
.method public constructor <init>(Lzui;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/e;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lzui;->a:Landroid/content/Context;

    new-instance v2, Lb7e;

    invoke-direct {v2, v1}, Lb7e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->f:Lb7e;

    sput-object v2, Lwsg;->a:Lb7e;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    iget-object v2, p1, Lzui;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->b:Ljava/lang/String;

    iget-object v2, p1, Lzui;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->c:Ljava/lang/String;

    iget-object v2, p1, Lzui;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lzui;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/e;->e:Z

    iget-object v2, p1, Lzui;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    iget-object v2, p1, Lzui;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/e;->D:Z

    iget-object v3, p1, Lzui;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/e;->B:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->C:Ljava/lang/Boolean;

    :cond_1
    invoke-static {v1}, Lq1j;->e(Landroid/content/Context;)V

    invoke-static {}, Lm02;->a()Lfy0;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lfy0;

    iget-object v4, p1, Lzui;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lfy0;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    new-instance v3, Loce;

    invoke-direct {v3, p0}, Loce;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    new-instance v3, Lroh;

    invoke-direct {v3, p0}, Lroh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lboi;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->h:Lroh;

    new-instance v3, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lboi;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->i:Lcom/google/android/gms/measurement/internal/c;

    new-instance v3, Lc9j;

    invoke-direct {v3, p0}, Lc9j;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lboi;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->l:Lc9j;

    new-instance v3, Llui;

    invoke-direct {v3, p1, p0}, Llui;-><init>(Lzui;Lcom/google/android/gms/measurement/internal/e;)V

    new-instance v4, Lr3h;

    invoke-direct {v4, v3}, Lr3h;-><init>(Lu2h;)V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/e;->m:Lr3h;

    new-instance v3, Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->q:Lcom/google/android/gms/measurement/internal/b;

    new-instance v3, Lcom/google/android/gms/measurement/internal/h;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/h;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lnlh;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->o:Lcom/google/android/gms/measurement/internal/h;

    new-instance v3, Lcom/google/android/gms/measurement/internal/g;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/g;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lnlh;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->p:Lcom/google/android/gms/measurement/internal/g;

    new-instance v3, Lb7j;

    invoke-direct {v3, p0}, Lb7j;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lnlh;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->k:Lb7j;

    new-instance v3, Lm2j;

    invoke-direct {v3, p0}, Lm2j;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lboi;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->r:Lm2j;

    new-instance v3, Lcom/google/android/gms/measurement/internal/d;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/d;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v3}, Lboi;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/e;->j:Lcom/google/android/gms/measurement/internal/d;

    iget-object v4, p1, Lzui;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/zzcl;->zzb:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    if-nez v4, :cond_4

    new-instance v4, Lcom/google/android/gms/measurement/internal/f;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/f;-><init>(Lcom/google/android/gms/measurement/internal/g;Lv1j;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzfx;-><init>(Lcom/google/android/gms/measurement/internal/e;Lzui;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/d;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static H(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/e;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zze:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcl;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzd:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzcl;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    if-nez v1, :cond_2

    new-instance v1, Lzui;

    invoke-direct {v1, p0, p1, p2}, Lzui;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lzui;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    sget-object p0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {p0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/e;->H:Lcom/google/android/gms/measurement/internal/e;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/measurement/internal/e;Lzui;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v0}, Loce;->r()Ljava/lang/String;

    new-instance v0, Ltme;

    invoke-direct {v0, p0}, Ltme;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v0}, Lboi;->k()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->v:Ltme;

    new-instance v0, Lwzg;

    iget-wide v1, p1, Lzui;->f:J

    invoke-direct {v0, p0, v1, v2}, Lwzg;-><init>(Lcom/google/android/gms/measurement/internal/e;J)V

    invoke-virtual {v0}, Lnlh;->i()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->w:Lwzg;

    new-instance p1, Lv1h;

    invoke-direct {p1, p0}, Lv1h;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {p1}, Lnlh;->i()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->t:Lv1h;

    new-instance p1, Lcom/google/android/gms/measurement/internal/j;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/j;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {p1}, Lnlh;->i()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->u:Lcom/google/android/gms/measurement/internal/j;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->l:Lc9j;

    invoke-virtual {p1}, Lboi;->l()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->h:Lroh;

    invoke-virtual {p1}, Lboi;->l()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->w:Lwzg;

    invoke-virtual {p1}, Lnlh;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v1}, Loce;->l()J

    const-wide/32 v1, 0x11d28

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lwzg;->q()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc9j;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu6h;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/e;->E:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/e;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/e;->x:Z

    return-void
.end method

.method public static final t()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final u(Lini;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final v(Lnlh;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnlh;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final w(Lboi;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lboi;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Ltme;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->v:Ltme;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->w(Lboi;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->v:Ltme;

    return-object p0
.end method

.method public final B()Lwzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->w:Lwzg;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->w:Lwzg;

    return-object p0
.end method

.method public final C()Lv1h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->t:Lv1h;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->t:Lv1h;

    return-object p0
.end method

.method public final D()Lr3h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->m:Lr3h;

    return-object p0
.end method

.method public final E()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->i:Lcom/google/android/gms/measurement/internal/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lboi;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final F()Lroh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->h:Lroh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->u(Lini;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->h:Lroh;

    return-object p0
.end method

.method public final G()Lcom/google/android/gms/measurement/internal/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->j:Lcom/google/android/gms/measurement/internal/d;

    return-object p0
.end method

.method public final I()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->p:Lcom/google/android/gms/measurement/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->p:Lcom/google/android/gms/measurement/internal/g;

    return-object p0
.end method

.method public final J()Lm2j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->r:Lm2j;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->w(Lboi;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->r:Lm2j;

    return-object p0
.end method

.method public final K()Lcom/google/android/gms/measurement/internal/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->o:Lcom/google/android/gms/measurement/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->o:Lcom/google/android/gms/measurement/internal/h;

    return-object p0
.end method

.method public final L()Lcom/google/android/gms/measurement/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->u:Lcom/google/android/gms/measurement/internal/j;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->u:Lcom/google/android/gms/measurement/internal/j;

    return-object p0
.end method

.method public final M()Lb7j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->k:Lb7j;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->v(Lnlh;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->k:Lb7j;

    return-object p0
.end method

.method public final N()Lc9j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->l:Lc9j;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->u(Lini;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->l:Lc9j;

    return-object p0
.end method

.method public final O()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final P()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final Q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final R()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->s:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->j:Lcom/google/android/gms/measurement/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->w(Lboi;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->j:Lcom/google/android/gms/measurement/internal/d;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->i:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->w(Lboi;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->i:Lcom/google/android/gms/measurement/internal/c;

    return-object p0
.end method

.method public final c()Lfy0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lfy0;

    return-object p0
.end method

.method public final d()Lb7e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->f:Lb7e;

    return-object p0
.end method

.method public final e()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final synthetic h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "timestamp"

    const-string p5, "gclid"

    const-string v0, ""

    const-string v1, "deeplink"

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_0

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_0

    const/16 v2, 0x130

    if-ne p2, v2, :cond_8

    move p2, v2

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p2

    iget-object p2, p2, Lroh;->r:Llih;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Llih;->a(Z)V

    if-eqz p4, :cond_7

    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p3

    iget-object v0, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p3, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p5, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_cis"

    const-string p5, "ddp"

    invoke-virtual {p3, p4, p5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/e;->p:Lcom/google/android/gms/measurement/internal/g;

    const-string p5, "auto"

    const-string v0, "_cmp"

    invoke-virtual {p4, p5, v0, p3}, Lcom/google/android/gms/measurement/internal/g;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object p4, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    const-string p5, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {p4, p5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-interface {p4, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    :catch_1
    move-exception p1

    iget-object p2, p3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p0

    const-string p2, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p0, p2, p1}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p0

    const-string p1, "Deferred Deep Link response empty."

    invoke-virtual {p0, p1}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {p0, p2, p1, p3}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/e;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/e;->E:I

    return-void
.end method

.method public final j()V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->J()Lm2j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/e;->w(Lboi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lroh;->o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v2}, Loce;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->J()Lm2j;

    move-result-object v2

    invoke-virtual {v2}, Lboi;->j()V

    iget-object v2, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v3

    iget-object v3, v3, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v3}, Loce;->l()J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v1, v1, Lroh;->s:Likh;

    invoke-virtual {v1}, Likh;->a()J

    move-result-wide v3

    const-wide/16 v6, -0x1

    add-long/2addr v6, v3

    const-wide/32 v3, 0x11d28

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lc9j;->r(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->J()Lm2j;

    move-result-object v2

    new-instance v7, Ly3i;

    invoke-direct {v7, p0}, Ly3i;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    invoke-virtual {v2}, Lini;->g()V

    invoke-virtual {v2}, Lboi;->j()V

    invoke-static {v4}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object p0

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzig;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzig;-><init>(Lm2j;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Ly3i;[B)V

    invoke-virtual {p0, v9}, Lcom/google/android/gms/measurement/internal/d;->v(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p0

    const-string v0, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {p0, v0}, Lu6h;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object p0

    const-string v0, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {p0, v0}, Lu6h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    return-void
.end method

.method public final l(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/e;->D:Z

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/measurement/zzcl;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lroh;->p()Luee;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    iget-object v2, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lini;->g()V

    invoke-virtual {v1}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "consent_source"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    iget-object v4, v2, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    const-string v4, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v2, v4}, Loce;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    iget-object v5, v4, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    const-string v5, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v4, v5}, Loce;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, -0xa

    const/4 v6, 0x0

    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v7

    invoke-virtual {v7, v5}, Lroh;->v(I)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance p1, Luee;

    invoke-direct {p1, v2, v4}, Luee;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v2

    invoke-virtual {v2}, Lwzg;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v4, 0x1e

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    sget-object v1, Luee;->b:Luee;

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-virtual {p1, v1, v5, v7, v8}, Lcom/google/android/gms/measurement/internal/g;->F(Luee;IJ)V

    :cond_3
    move-object p1, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v1

    invoke-virtual {v1}, Lwzg;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    invoke-virtual {v1, v4}, Lroh;->v(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzcl;->zzg:Landroid/os/Bundle;

    invoke-static {p1}, Luee;->a(Landroid/os/Bundle;)Luee;

    move-result-object p1

    sget-object v1, Luee;->b:Luee;

    invoke-virtual {p1, v1}, Luee;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v4

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/g;->F(Luee;IJ)V

    move-object v0, p1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g;->I(Luee;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->e:Likh;

    invoke-virtual {p1}, Likh;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Persisting first open"

    invoke-virtual {p1, v1, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->e:Likh;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-virtual {p1, v0, v1}, Likh;->b(J)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/g;->n:Lvjj;

    invoke-virtual {p1}, Lvjj;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->r()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lc9j;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lc9j;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object p1

    invoke-virtual {p1}, Lkv7;->g()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {p1}, Loce;->y()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lc9j;->W(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc9j;->X(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object p1

    invoke-virtual {p1}, Lwzg;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object p1

    invoke-virtual {p1}, Lwzg;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v1

    invoke-virtual {v1}, Lini;->g()V

    invoke-virtual {v1}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "gmp_app_id"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v3

    invoke-virtual {v3}, Lwzg;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v4

    invoke-virtual {v4}, Lini;->g()V

    invoke-virtual {v4}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "admob_app_id"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lc9j;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    invoke-virtual {p1}, Lini;->g()V

    invoke-virtual {p1}, Lroh;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Lroh;->r(Ljava/lang/Boolean;)V

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->C()Lv1h;

    move-result-object p1

    invoke-virtual {p1}, Lv1h;->p()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->u:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j;->P()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->u:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j;->O()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->e:Likh;

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-virtual {p1, v0, v1}, Likh;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->g:Lpnh;

    invoke-virtual {p1, v6}, Lpnh;->b(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lini;->g()V

    invoke-virtual {p1}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lini;->g()V

    invoke-virtual {p1}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    invoke-virtual {p1}, Lroh;->p()Luee;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {p1, v0}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->g:Lpnh;

    invoke-virtual {p1, v6}, Lpnh;->b(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->g:Lpnh;

    invoke-virtual {v0}, Lpnh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/g;->B(Ljava/lang/String;)V

    invoke-static {}, Lkdj;->b()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    sget-object v0, Lkwg;->e0:Llvg;

    invoke-virtual {p1, v6, v0}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object p1

    :try_start_0
    iget-object p1, p1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->t:Lpnh;

    invoke-virtual {p1}, Lpnh;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lu6h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p1

    iget-object p1, p1, Lroh;->t:Lpnh;

    invoke-virtual {p1, v6}, Lpnh;->b(Ljava/lang/String;)V

    :cond_11
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object p1

    invoke-virtual {p1}, Lwzg;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object p1

    invoke-virtual {p1}, Lwzg;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lroh;->t()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v0}, Loce;->x()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lroh;->s(Z)V

    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->I()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g;->e0()V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->M()Lb7j;

    move-result-object p1

    iget-object p1, p1, Lb7j;->d:Lz6j;

    invoke-virtual {p1}, Lz6j;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/j;->R(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->L()Lcom/google/android/gms/measurement/internal/j;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    iget-object v0, v0, Lroh;->w:Ljjh;

    invoke-virtual {v0}, Ljjh;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/j;->u(Landroid/os/Bundle;)V

    :cond_15
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object p0

    iget-object p0, p0, Lroh;->n:Llih;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Llih;->a(Z)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->x()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/e;->D:Z

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final r()Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/e;->x:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/e;->z:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/e;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->z:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lc9j;->Q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lc9j;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object v0

    invoke-virtual {v0}, Lkv7;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v0}, Loce;->y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lc9j;->W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lc9j;->X(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v3

    invoke-virtual {v3}, Lwzg;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v4

    invoke-virtual {v4}, Lwzg;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc9j;->J(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->B()Lwzg;

    move-result-object v0

    invoke-virtual {v0}, Lwzg;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->y:Ljava/lang/Boolean;

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->y:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AppMeasurement is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Z

    return p0
.end method

.method public final x()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    invoke-virtual {v0}, Loce;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->a()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lini;->g()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/e;->D:Z

    if-nez v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lroh;->q()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    iget-object v2, v0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->f:Lb7e;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Loce;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x4

    return p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x5

    return p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->A:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x7

    return p0

    :cond_b
    return v1
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->q:Lcom/google/android/gms/measurement/internal/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z()Loce;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/e;->g:Loce;

    return-object p0
.end method
