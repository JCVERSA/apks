.class public Lcom/transsion/athena/hatnea/athaen;
.super Lcom/transsion/athena/hatnea/anateh;
.source "SourceFile"


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/athena;

.field private d:J

.field private final e:I

.field private final f:Ly3d;


# direct methods
.method public constructor <init>(Lcom/transsion/athena/config/data/model/athena;JLy3d;)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "dimensionChanged, so set appConfig version to 0"

    invoke-static {v0}, Lc4d;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iput-wide p2, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    iput-object p4, p0, Lcom/transsion/athena/hatnea/athaen;->f:Ly3d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sname"

    :try_start_1
    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "sdkver"

    :try_start_2
    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/ehanat;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc4d;->d(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/transsion/athena/hatnea/b;->e(Ljava/lang/String;Ljava/lang/String;JI)Lrbd;

    move-result-object v0

    iget v1, v0, Lrbd;->a:I

    const-string v2, "<-- appIdConfig:%s"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->g()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/athena;->e(I)V

    goto :goto_1

    :cond_0
    const-string v0, "NOT_MODIFIED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iget v1, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lrbd;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Le5d;->o()Le5d;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v1, v2, v0}, Le5d;->h(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    iget v1, p0, Lcom/transsion/athena/hatnea/athaen;->e:I

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/athena;->b(I)V

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->e()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    :cond_2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/transsion/athena/hatnea/athaen;->d:J

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    :goto_2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/athaen;->f:Ly3d;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result p0

    invoke-virtual {v0, p0, v3}, Ly3d;->a(IZ)V

    :cond_3
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieve-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/athena/hatnea/athaen;->c:Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-Config"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
