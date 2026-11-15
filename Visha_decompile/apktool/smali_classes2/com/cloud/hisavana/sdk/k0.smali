.class public final Lcom/cloud/hisavana/sdk/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/k0;

.field public static final b:Lcom/cloud/hisavana/sdk/k0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/k0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/k0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    new-instance v0, Lcom/cloud/hisavana/sdk/k0$a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/k0$a;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/k0;->b:Lcom/cloud/hisavana/sdk/k0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ldnd;
    .locals 3

    const-string p0, "ads"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ldnd;

    invoke-direct {v2, v1}, Ldnd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-nez v0, :cond_1

    move-object p1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ldnd;->b(Ldnd;)V

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final b()V
    .locals 7

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyu3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/g0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lr6;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length p0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Lcom/cloud/hisavana/sdk/k0;->g(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Lcom/cloud/hisavana/sdk/k0;->h(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-gt p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "default_file_save_finished"

    invoke-virtual {p0, v0, v1}, Lo9;->o(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "DefaultMaterialManager"

    invoke-virtual {v0, v1, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final c(I)V
    .locals 0

    if-lez p1, :cond_0

    sget-object p0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/HttpRequest;->k(I)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 10

    sget-object v0, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/i0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v8, p1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v8, p1

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/cloud/hisavana/sdk/k0$b;

    invoke-direct {v8, p1}, Lcom/cloud/hisavana/sdk/k0$b;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    const/4 p0, 0x1

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->i0(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    const-string v1, "codeSeatId"

    invoke-static {v4, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "count"

    invoke-static {v3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v6, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-interface/range {p4 .. p4}, Lc74;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ldnd;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ldnd;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Ldnd;->c()Ldnd;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v3, v6}, Lcom/cloud/hisavana/sdk/k0;->f(Ljava/lang/String;Ldnd;Ljava/util/concurrent/atomic/AtomicInteger;Lc74;)V

    return-void

    :cond_1
    sget-object v1, Lcom/cloud/hisavana/sdk/i0;->a:Lcom/cloud/hisavana/sdk/i0;

    invoke-static {v10}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v10}, Lcom/cloud/hisavana/sdk/i0;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v9

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-ne v1, v12, :cond_2

    const/4 v1, 0x1

    move v13, v1

    goto :goto_0

    :cond_2
    move v13, v11

    :goto_0
    new-instance v14, Lcom/cloud/hisavana/sdk/k0$c;

    move-object v1, v14

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/k0$c;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ldnd;Lc74;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    move-object v1, v8

    move v3, v9

    move v7, v13

    move-object v8, v10

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    invoke-virtual {p0, v10}, Lcom/cloud/hisavana/sdk/k0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClickUrl(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "ssplocalhost=true"

    const/4 v4, 0x0

    invoke-static {v1, v3, v11, v12, v4}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/k0;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final g(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cloud/hisavana/sdk/k0;->b:Lcom/cloud/hisavana/sdk/k0$a;

    invoke-static {p1}, Lfv3;->k(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/k0$a;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Ljava/io/File;)Z
    .locals 6

    const-string p0, "DefaultMaterialManager"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->g(I)Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;

    move-result-object v0

    new-instance v2, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDefaultAdMaterial, sourceFile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", key is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->d(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->c(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, v2, v1}, Lcom/cloud/hisavana/net/disklrucache/impl/IDiskCache;->f(Lcom/cloud/hisavana/net/disklrucache/ImageCacheURL;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :goto_2
    const/4 v1, 0x0

    :goto_3
    :try_start_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_4
    :goto_4
    const/4 p0, 0x0

    return p0

    :catchall_3
    move-exception p0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :cond_5
    throw p0
.end method
