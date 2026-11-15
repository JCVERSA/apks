.class public Lcom/transsion/athena/enatha/anehat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "%s"

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le4d;->a(Landroid/content/Context;)Le4d;

    move-result-object v2

    const-string v3, "athena_id"

    invoke-virtual {v2, v3}, Le4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v1}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Lcom/transsion/athena/taaneh/athena$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/athena/taaneh/athena$a;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v3, v5}, Le4d;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/a;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v7

    goto :goto_3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->R()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/transsion/athena/taaneh/a;->l(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v2, v8

    goto :goto_3

    :catch_1
    :goto_2
    move v2, v8

    :goto_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "device_id_transfer"

    const/16 v6, 0x270f

    if-eqz v2, :cond_3

    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v4, "en"

    const/4 v9, 0x2

    invoke-virtual {v2, v4, v3, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    const-string v3, "cnt"

    invoke-virtual {v2, v3, v8, v8}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    invoke-static {v6}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v3

    const-string v4, "data_discard"

    invoke-virtual {v3, v4, v2, v6}, Lcom/transsion/ga/AthenaAnalytics;->c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v2}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v9, "pre_gaid"

    invoke-virtual {v2, v9, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->q()Ljava/lang/String;

    move-result-object v4

    const-string v9, "sn"

    invoke-virtual {v2, v9, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    invoke-static {v6}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v6}, Lcom/transsion/ga/AthenaAnalytics;->c0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    :goto_4
    move-object v4, v5

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v4}, Lcom/transsion/athena/taaneh/a;->h(Ljava/lang/String;)V

    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1, v7}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move v7, v8

    :cond_8
    if-nez v7, :cond_9

    const-string v1, "device gaid and iid are null"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lc4d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
