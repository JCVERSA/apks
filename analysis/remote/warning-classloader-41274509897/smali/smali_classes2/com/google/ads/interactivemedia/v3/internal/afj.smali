.class public Lcom/google/ads/interactivemedia/v3/internal/afj;
.super Lcom/google/ads/interactivemedia/v3/internal/afi;


# static fields
.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:J

.field private static t:Lcom/google/ads/interactivemedia/v3/internal/afq;

.field private static u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;Lcom/google/ads/interactivemedia/v3/internal/afp;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/afi;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;Lcom/google/ads/interactivemedia/v3/internal/afp;)V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/afo;->a([BZ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/afj;->q:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;)V
    .locals 16

    const/4 v1, 0x0

    const-class v2, Lcom/google/ads/interactivemedia/v3/internal/afj;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/google/ads/interactivemedia/v3/internal/afj;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    :try_start_1
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/afq;

    const/4 v4, 0x0

    move-object/from16 v5, p2

    invoke-direct {v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/afq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afo;Ljava/security/SecureRandom;)V

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/afj;->t:Lcom/google/ads/interactivemedia/v3/internal/afq;

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/afj;->p:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afq;->a(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->t:Lcom/google/ads/interactivemedia/v3/internal/afq;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/afq;->a([BLjava/lang/String;)[B

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "dex"

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :cond_1
    move-object/from16 v7, p1

    :goto_0
    const-string v8, "ads"

    const-string v9, ".jar"

    invoke-static {v8, v9, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v10, v5

    invoke-virtual {v9, v5, v1, v10}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/afr; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 p2, v8

    goto/16 :goto_3

    :cond_2
    :goto_2
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v9, v10, v4, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->D()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->x()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->t()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->F()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->r()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->B()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->z()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 p0, v6

    :try_start_4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 p2, v8

    :try_start_5
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 p1, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/google/ads/interactivemedia/v3/internal/afj;->c:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->E()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/google/ads/interactivemedia/v3/internal/afj;->d:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->y()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->e:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->u()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v11, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->f:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->G()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/view/MotionEvent;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/util/DisplayMetrics;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v12, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->g:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v13, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->h:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v14, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->i:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v15, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/google/ads/interactivemedia/v3/internal/afj;->j:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->k:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->l:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->m:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->n:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/qi;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->o:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p0

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/afr; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->s:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->u:Z
    :try_end_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v6, p0

    goto/16 :goto_1

    :goto_3
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/afr; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    :try_start_9
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_5
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_6
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_7
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_8
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_9
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_6
    monitor-exit v2

    return-void

    :catch_7
    :cond_3
    monitor-exit v2

    return-void

    :goto_a
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method private static b()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->r:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->i:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/afo;->a([BZ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/ads/interactivemedia/v3/internal/afj;->r:Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->t:Lcom/google/ads/interactivemedia/v3/internal/afq;

    invoke-virtual {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/afq;->a([BLjava/lang/String;)[B

    move-result-object p0

    const-string p1, "UTF-8"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afr; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw v0
.end method

.method private static d()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static h(Landroid/content/Context;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static i(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method

.method private static j(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/afk;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afj;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/afk;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afk;-><init>()V

    throw p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    :catch_0
    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x19

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    sget-wide v3, Lcom/google/ads/interactivemedia/v3/internal/afj;->s:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    sub-long/2addr v1, v3

    const/16 v3, 0x11

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    sget-wide v1, Lcom/google/ads/interactivemedia/v3/internal/afj;->s:J

    const/16 v3, 0x17

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :catch_2
    :cond_0
    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x1f

    invoke-virtual {p0, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    :catch_3
    :try_start_4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x21

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :catch_4
    :try_start_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/afi;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    invoke-static {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afj;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1b

    invoke-virtual {p0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    :catch_5
    :try_start_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/afi;->b:Lcom/google/ads/interactivemedia/v3/internal/afo;

    invoke-static {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/afo;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {p0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    :catch_6
    :try_start_7
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->h(Landroid/content/Context;)[I

    move-result-object v2

    aget v1, v2, v1

    int-to-long v3, v1

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    aget v0, v2, v0

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :catch_7
    :try_start_8
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->i(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_8
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :catch_8
    :try_start_9
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->j(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :catch_9
    :try_start_a
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_a
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    :catch_a
    :try_start_b
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_b
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    :try_start_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :catch_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/afj;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x19

    invoke-virtual {p0, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :catch_2
    :try_start_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/afi;->a:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/afj;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0xe

    invoke-virtual {p0, v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :catch_3
    :cond_0
    :try_start_4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_4
    :try_start_5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/afj;->f(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x23

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/afi;->a(IJ)V
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/afk; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
