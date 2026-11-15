.class public final Lwzg;
.super Lnlh;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public final i:J

.field public j:Ljava/util/List;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e;J)V
    .locals 2

    invoke-direct {p0, p1}, Lnlh;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwzg;->p:J

    const/4 p1, 0x0

    iput-object p1, p0, Lwzg;->q:Ljava/lang/String;

    iput-wide p2, p0, Lwzg;->i:J

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 11

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "unknown"

    const-string v6, "Unknown"

    if-nez v1, :cond_1

    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v6

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v4

    :cond_3
    :goto_1
    :try_start_1
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    :try_start_2
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v2, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v7, v6

    move-object v6, v8

    goto :goto_3

    :catch_2
    move-object v7, v6

    :goto_3
    iget-object v8, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v6}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v7

    :goto_4
    iput-object v0, p0, Lwzg;->c:Ljava/lang/String;

    iput-object v5, p0, Lwzg;->f:Ljava/lang/String;

    iput-object v6, p0, Lwzg;->d:Ljava/lang/String;

    iput v2, p0, Lwzg;->e:I

    iput-object v8, p0, Lwzg;->g:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lwzg;->h:J

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->P()Ljava/lang/String;

    move-result-object v2

    const-string v6, "am"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    iget-object v6, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->x()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v7

    const-string v8, "App measurement disabled due to denied storage consent"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v7

    const-string v8, "App measurement disabled via the global data collection setting"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v7

    const-string v8, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v7

    const-string v8, "App measurement disabled via the init parameters"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v7

    const-string v8, "App measurement disabled via the manifest"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v7

    const-string v8, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v7

    const-string v8, "App measurement deactivated via the init parameters"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->t()Lu6h;

    move-result-object v7

    const-string v8, "App measurement deactivated via the manifest"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v7

    const-string v8, "App measurement collection enabled"

    invoke-virtual {v7, v8}, Lu6h;->a(Ljava/lang/String;)V

    :goto_6
    iput-object v4, p0, Lwzg;->m:Ljava/lang/String;

    iput-object v4, p0, Lwzg;->n:Ljava/lang/String;

    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->O()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwzg;->n:Ljava/lang/String;

    :cond_6
    :try_start_3
    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->R()Ljava/lang/String;

    move-result-object v7

    const-string v8, "google_app_id"

    invoke-static {v2, v8, v7}, Lr2j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eq v5, v7, :cond_7

    move-object v4, v2

    :cond_7
    iput-object v4, p0, Lwzg;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->R()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v2}, Lizh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    const-string v2, "admob_app_id"

    invoke-static {v2, v5, v4}, Lizh;->b(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwzg;->n:Ljava/lang/String;

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_a

    :cond_9
    :goto_8
    if-nez v6, :cond_b

    iget-object v2, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v2

    const-string v4, "App measurement enabled for app package, google app id"

    iget-object v5, p0, Lwzg;->c:Ljava/lang/String;

    iget-object v6, p0, Lwzg;->m:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lwzg;->n:Ljava/lang/String;

    goto :goto_9

    :cond_a
    iget-object v6, p0, Lwzg;->m:Ljava/lang/String;

    :goto_9
    invoke-virtual {v2, v4, v5, v6}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :goto_a
    iget-object v4, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v4

    const-string v5, "Fetching Google App Id failed with exception. appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v2}, Lu6h;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lwzg;->j:Ljava/util/List;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d()Lb7e;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    const-string v2, "analytics.safelisted_events"

    invoke-virtual {v0, v2}, Loce;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v0

    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v5

    const-string v6, "safelisted event"

    invoke-virtual {v5, v6, v4}, Lc9j;->O(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_d

    :cond_f
    :goto_c
    iput-object v0, p0, Lwzg;->j:Ljava/util/List;

    :goto_d
    if-eqz v1, :cond_10

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk15;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lwzg;->l:I

    return-void

    :cond_10
    iput v3, p0, Lwzg;->l:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n()I
    .locals 0

    invoke-virtual {p0}, Lnlh;->h()V

    iget p0, p0, Lwzg;->l:I

    return p0
.end method

.method public final o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzq;
    .locals 36

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lini;->g()V

    new-instance v32, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-virtual/range {p0 .. p0}, Lwzg;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lwzg;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget-object v4, v1, Lwzg;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget v0, v1, Lwzg;->e:I

    int-to-long v5, v0

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget-object v0, v1, Lwzg;->f:Ljava/lang/String;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lwzg;->f:Ljava/lang/String;

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v0

    invoke-virtual {v0}, Loce;->l()J

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    invoke-virtual/range {p0 .. p0}, Lini;->g()V

    iget-wide v8, v1, Lwzg;->h:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const/4 v12, 0x0

    if-nez v0, :cond_4

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v8

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v9, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lini;->g()V

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lwd8;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-static {}, Lc9j;->s()Ljava/security/MessageDigest;

    move-result-object v14

    const-wide/16 v15, -0x1

    if-nez v14, :cond_0

    iget-object v0, v8, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v0

    const-string v8, "Could not get MD5 instance"

    invoke-virtual {v0, v8}, Lu6h;->a(Ljava/lang/String;)V

    :goto_0
    move-wide v8, v15

    goto :goto_2

    :cond_0
    if-eqz v13, :cond_3

    :try_start_0
    invoke-virtual {v8, v0, v9}, Lc9j;->T(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v0}, Lmpc;->a(Landroid/content/Context;)Lkv7;

    move-result-object v0

    iget-object v9, v8, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x40

    invoke-virtual {v0, v9, v13}, Lkv7;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v9, v0

    if-lez v9, :cond_1

    aget-object v0, v0, v12

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lc9j;->o0([B)J

    move-result-wide v15

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, v8, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->v()Lu6h;

    move-result-object v0

    const-string v9, "Could not get signatures"

    invoke-virtual {v0, v9}, Lu6h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-wide v15, v10

    goto :goto_0

    :goto_1
    iget-object v8, v8, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->q()Lu6h;

    move-result-object v8

    const-string v9, "Package name not found"

    invoke-virtual {v8, v9, v0}, Lu6h;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v8, v10

    :goto_2
    iput-wide v8, v1, Lwzg;->h:J

    :cond_4
    move-wide v13, v8

    iget-object v0, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v0

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v8

    iget-boolean v8, v8, Lroh;->p:Z

    xor-int/lit8 v15, v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lini;->g()V

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_5

    :catch_1
    :goto_3
    move-object/from16 v19, v9

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lngj;->b()Z

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v8

    sget-object v12, Lkwg;->c0:Llvg;

    invoke-virtual {v8, v9, v12}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->u()Lu6h;

    move-result-object v8

    const-string v12, "Disabled IID for tests."

    invoke-virtual {v8, v12}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :try_start_1
    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const-string v12, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v8, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    :try_start_2
    const-class v12, Landroid/content/Context;

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    const-string v10, "getInstance"

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iget-object v11, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e;->e()Landroid/content/Context;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    :try_start_3
    const-string v11, "getFirebaseInstanceId"

    invoke-virtual {v8, v11, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v19, v8

    goto :goto_4

    :catch_2
    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->w()Lu6h;

    move-result-object v8

    const-string v10, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v8, v10}, Lu6h;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c;->x()Lu6h;

    move-result-object v8

    const-string v10, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v8, v10}, Lu6h;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_4
    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v10

    iget-object v10, v10, Lroh;->e:Likh;

    invoke-virtual {v10}, Likh;->a()J

    move-result-wide v10

    const-wide/16 v17, 0x0

    cmp-long v12, v10, v17

    if-nez v12, :cond_9

    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/e;->G:J

    move-wide/from16 v22, v10

    move-wide/from16 v20, v13

    goto :goto_5

    :cond_9
    move-wide/from16 v20, v13

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/e;->G:J

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide/from16 v22, v10

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget v14, v1, Lwzg;->l:I

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v8

    invoke-virtual {v8}, Loce;->u()Z

    move-result v24

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v8

    invoke-virtual {v8}, Lini;->g()V

    invoke-virtual {v8}, Lroh;->n()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "deferred_analytics_collection"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lnlh;->h()V

    iget-object v13, v1, Lwzg;->n:Ljava/lang/String;

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v8

    const-string v10, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v8, v10}, Loce;->o(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_a

    move-object/from16 v26, v9

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v26, v8

    :goto_6
    iget-wide v10, v1, Lwzg;->i:J

    iget-object v12, v1, Lwzg;->j:Ljava/util/List;

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v8

    invoke-virtual {v8}, Lroh;->p()Luee;

    move-result-object v8

    invoke-virtual {v8}, Luee;->g()Ljava/lang/String;

    move-result-object v29

    iget-object v8, v1, Lwzg;->k:Ljava/lang/String;

    if-nez v8, :cond_c

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v8

    move-wide/from16 v30, v10

    sget-object v10, Lkwg;->z0:Llvg;

    invoke-virtual {v8, v9, v10}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v8

    invoke-virtual {v8}, Lc9j;->p()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lwzg;->k:Ljava/lang/String;

    goto :goto_7

    :cond_b
    const-string v8, ""

    iput-object v8, v1, Lwzg;->k:Ljava/lang/String;

    goto :goto_7

    :cond_c
    move-wide/from16 v30, v10

    :goto_7
    iget-object v10, v1, Lwzg;->k:Ljava/lang/String;

    invoke-static {}, Lsfj;->b()Z

    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->z()Loce;

    move-result-object v8

    sget-object v11, Lkwg;->u0:Llvg;

    invoke-virtual {v8, v9, v11}, Loce;->v(Ljava/lang/String;Llvg;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lini;->g()V

    iget-wide v8, v1, Lwzg;->p:J

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-nez v8, :cond_d

    move-object/from16 v18, v10

    goto :goto_8

    :cond_d
    iget-object v8, v1, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v8

    invoke-interface {v8}, Lfy0;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v18, v10

    iget-wide v10, v1, Lwzg;->p:J

    sub-long/2addr v8, v10

    iget-object v10, v1, Lwzg;->o:Ljava/lang/String;

    if-eqz v10, :cond_e

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    iget-object v8, v1, Lwzg;->q:Ljava/lang/String;

    if-nez v8, :cond_e

    invoke-virtual/range {p0 .. p0}, Lwzg;->t()V

    :cond_e
    :goto_8
    iget-object v8, v1, Lwzg;->o:Ljava/lang/String;

    if-nez v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lwzg;->t()V

    :cond_f
    iget-object v1, v1, Lwzg;->o:Ljava/lang/String;

    move-object/from16 v33, v1

    goto :goto_9

    :cond_10
    move-object/from16 v18, v10

    move-object/from16 v33, v9

    :goto_9
    const-wide/16 v16, 0x0

    const/16 v28, 0x0

    const-wide/32 v8, 0x11d28

    move-object/from16 v1, v32

    move-object/from16 v34, v18

    move-wide/from16 v10, v20

    move-object/from16 v27, v12

    move-object/from16 v12, p1

    move-object/from16 v35, v13

    move v13, v0

    move v0, v14

    move v14, v15

    move-object/from16 v15, v19

    move-wide/from16 v18, v22

    move/from16 v20, v0

    move/from16 v21, v24

    move/from16 v22, v25

    move-object/from16 v23, v35

    move-object/from16 v24, v26

    move-wide/from16 v25, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v33

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v32
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object p0, p0, Lwzg;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lwzg;->c:Ljava/lang/String;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lwzg;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lini;->g()V

    invoke-virtual {p0}, Lnlh;->h()V

    iget-object v0, p0, Lwzg;->m:Ljava/lang/String;

    invoke-static {v0}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lwzg;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final s()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lwzg;->j:Ljava/util/List;

    return-object p0
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Lini;->g()V

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()Lroh;

    move-result-object v0

    invoke-virtual {v0}, Lroh;->p()Luee;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Luee;->h(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v0

    const-string v1, "Analytics Storage consent is not granted"

    invoke-virtual {v0, v1}, Lu6h;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Lc9j;

    move-result-object v1

    invoke-virtual {v1}, Lc9j;->t()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%032x"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->p()Lu6h;

    move-result-object v1

    if-nez v0, :cond_1

    const-string v2, "null"

    goto :goto_1

    :cond_1
    const-string v2, "not null"

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Resetting session stitching token to %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu6h;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lwzg;->o:Ljava/lang/String;

    iget-object v0, p0, Lini;->a:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->c()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lwzg;->p:J

    return-void
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lwzg;->q:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-object p1, p0, Lwzg;->q:Ljava/lang/String;

    return v1
.end method
