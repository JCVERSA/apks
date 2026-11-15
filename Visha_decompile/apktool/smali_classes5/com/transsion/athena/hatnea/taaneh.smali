.class public Lcom/transsion/athena/hatnea/taaneh;
.super Lcom/transsion/athena/hatnea/anateh;
.source "SourceFile"


# instance fields
.field private final c:J

.field private d:Ljava/io/File;

.field private final e:Lcom/transsion/athena/config/data/model/aethna;


# direct methods
.method public constructor <init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/aethna;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    iput-wide p1, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    iput-object p3, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lz3d;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lz3d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lz3d;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const-string v0, ""

    :goto_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-lez v1, :cond_3

    iget-wide v2, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/transsion/athena/hatnea/b;->b(J[BILcom/transsion/athena/config/data/model/aethna;)Lrbd;

    move-result-object v0

    iget v0, v0, Lrbd;->a:I

    if-eqz v0, :cond_2

    const-string p0, "PostEventFileTask requestByPost error"

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/transsion/athena/taaneh/athena;->o(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    iget-wide v2, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "PostEventFileTask lines : %d, deleteFile : %s"

    invoke-static {v0, p0}, Lc4d;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "Upload-File"

    return-object p0
.end method
