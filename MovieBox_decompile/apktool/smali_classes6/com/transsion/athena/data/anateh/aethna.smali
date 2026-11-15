.class public Lcom/transsion/athena/data/anateh/aethna;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/data/anateh/aethna$athena;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/transsion/athena/data/anateh/aethna;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/transsion/athena/data/anateh/anehat;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/anehat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/data/anateh/aethna;->a:Lcom/transsion/athena/data/anateh/aethna;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/transsion/athena/data/anateh/aethna;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/athena/data/anateh/aethna;->a:Lcom/transsion/athena/data/anateh/aethna;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/athena/data/anateh/aethna;

    invoke-direct {v1, p0}, Lcom/transsion/athena/data/anateh/aethna;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/athena/data/anateh/aethna;->a:Lcom/transsion/athena/data/anateh/aethna;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/data/anateh/aethna;->a:Lcom/transsion/athena/data/anateh/aethna;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/transsion/athena/data/anateh/enatha;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;ILcom/transsion/athena/data/anateh/enatha;)I

    move-result p1
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 69
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 70
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/transsion/athena/data/Track;)I
    .locals 4

    .line 35
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 37
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v3, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v3, p1, v2}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/data/Track;I)I

    move-result p1
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 38
    sget v0, Lcom/transsion/ga/anateh;->a:I

    .line 39
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    return v1
.end method

.method public a(Ljava/util/ArrayList;Lcom/transsion/athena/data/anateh/enatha;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/athena/data/Track;",
            ">;",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/anateh/anehat;->b(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Lcom/transsion/athena/data/anateh/enatha;)I

    move-result p1
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 41
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 42
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized a(JJLjava/lang/String;II)Lcom/transsion/athena/data/anehat;
    .locals 11

    move-object v1, p0

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v2, v1, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v3, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;JJLjava/lang/String;II)Lcom/transsion/athena/data/anehat;

    move-result-object v0
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    :try_start_1
    sget v2, Lcom/transsion/ga/anateh;->a:I

    .line 45
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    invoke-virtual {v0}, Lcom/transsion/athena/data/anateh/anehat;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(JLcom/transsion/athena/data/anateh/aethna$athena;)V
    .locals 7

    monitor-enter p0

    .line 7
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-static {v0, p1, p2}, Lcom/transsion/athena/taaneh/athena;->a(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "f_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "r_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v1, v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    .line 15
    :cond_2
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "upload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 17
    new-instance v2, Lcom/transsion/athena/hatnea/taaneh;

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/transsion/athena/aethna/athena;->a(J)Lcom/transsion/athena/config/data/model/aethna;

    move-result-object v3

    invoke-direct {v2, p1, p2, v1, v3}, Lcom/transsion/athena/hatnea/taaneh;-><init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/aethna;)V

    invoke-interface {p3, v2}, Lcom/transsion/athena/data/anateh/aethna$athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    goto :goto_0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_6

    .line 21
    :try_start_1
    iget-object p2, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 22
    :try_start_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/transsion/athena/config/data/model/athena;Z)V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/config/data/model/athena;Z)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    :try_start_1
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 28
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcom/transsion/athena/data/AppIdData;)V
    .locals 2

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Lcom/transsion/athena/data/AppIdData;)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    sget v0, Lcom/transsion/ga/anateh;->a:I

    .line 31
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/transsion/athena/data/anateh/enatha;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;>;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/enatha;)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    sget v0, Lcom/transsion/ga/anateh;->a:I

    .line 25
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    :try_start_1
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 82
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    sget v0, Lcom/transsion/ga/anateh;->a:I

    .line 34
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 75
    :try_start_1
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 76
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/anateh/enatha;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/athena/data/enatha;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/anateh/enatha;)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 85
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 79
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;ZLcom/transsion/athena/data/anateh/enatha;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/transsion/athena/data/anateh/enatha<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_4

    .line 46
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-static {p2}, Lcom/transsion/athena/taaneh/athena;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "f_"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "r_"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEvents deleteFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_1
    const/16 v2, 0x2d

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEvents deleteFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 64
    :try_start_2
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :cond_4
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v0, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {p2, v0, p1, p3}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;Ljava/util/List;Lcom/transsion/athena/data/anateh/enatha;)V
    :try_end_3
    .catch Lcom/transsion/ga/anateh; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 66
    :try_start_4
    sget p2, Lcom/transsion/ga/anateh;->a:I

    .line 67
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(I)Z
    .locals 2

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->a:Lcom/transsion/athena/data/anateh/anehat$athena;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;I)Z

    move-result p1
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    :try_start_1
    sget v0, Lcom/transsion/ga/anateh;->a:I

    .line 73
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/transsion/athena/data/anateh/anehat;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/data/anateh/aethna;->c:Lcom/transsion/athena/data/anateh/anehat;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/athena/data/anateh/anehat$athena;->d:Lcom/transsion/athena/data/anateh/anehat$athena;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/athena/data/anateh/anehat;->a(Lcom/transsion/athena/data/anateh/anehat$athena;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Lcom/transsion/ga/anateh; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    sget v1, Lcom/transsion/ga/anateh;->a:I

    .line 12
    .line 13
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method
