.class public Lo/lg7;
.super Ljava/lang/Object;

# interfaces
.implements Lo/dc3;
.implements Lo/vi3;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public volatile d:[Lo/dc3;

.field public volatile e:[Lo/vi3;

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/snaptube/extractor/pluginlib/PluginProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/lg7;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [Lo/dc3;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    iput-object v2, p0, Lo/lg7;->d:[Lo/dc3;

    new-array v1, v1, [Lo/vi3;

    aput-object v0, v1, v3

    aput-object v0, v1, v4

    iput-object v1, p0, Lo/lg7;->e:[Lo/vi3;

    iput-boolean v3, p0, Lo/lg7;->f:Z

    invoke-virtual {p0, p1}, Lo/lg7;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lo/df3;Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V
    .locals 0

    invoke-static {p0, p1}, Lo/lg7;->f(Lo/df3;Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "plugin"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "native"

    return-object p0

    :cond_1
    const-string p0, "unknow"

    return-object p0
.end method

.method public static e(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setSource(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isVideoInfoValid(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic f(Lo/df3;Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "url_redirect_success"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->g()Lcom/snaptube/extractor/pluginlib/models/PageContext;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "redirected_url"

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/sj8;->a:Lo/sj8;

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/PageContext;->j()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lo/sj8;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lo/df3;->a(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginExtractor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lg7;->d:[Lo/dc3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " NativeExtractor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/lg7;->d:[Lo/dc3;

    aget-object v1, v1, v3

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lo/dc3;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    :try_start_0
    invoke-interface {p1, p2}, Lo/dc3;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lo/sc2;

    invoke-direct {v0}, Lo/sc2;-><init>()V

    iget-object v1, p0, Lo/lg7;->d:[Lo/dc3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v7, v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lo/lg7;->d:[Lo/dc3;

    aget-object v7, v7, v6

    invoke-static {v6}, Lo/lg7;->b(I)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_1

    goto/16 :goto_7

    :cond_1
    :try_start_0
    const-string v9, "start extract form"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/snaptube/premium/extractor/TraceContext;->log([Ljava/lang/String;)V

    if-nez p2, :cond_2

    invoke-interface {v7, p1, v3}, Lo/dc3;->extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object v7

    goto :goto_3

    :catchall_0
    move-exception v7

    goto :goto_4

    :cond_2
    new-instance v9, Lo/kg7;

    invoke-direct {v9, p2}, Lo/kg7;-><init>(Lo/df3;)V

    invoke-interface {v7, p1, v9}, Lo/dc3;->extract(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lo/df3;)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object v7

    :goto_3
    invoke-virtual {v0, v7}, Lo/sc2;->z(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-virtual {v0, v8}, Lo/sc2;->A(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/lg7;->e(Lcom/snaptube/extractor/pluginlib/models/PageContext;Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_6

    return-object v0

    :goto_4
    if-nez v5, :cond_5

    instance-of v5, v7, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v5, :cond_4

    new-instance v5, Lcom/snaptube/premium/extractor/ExtractorException;

    move-object v9, v7

    check-cast v9, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v5, v9, v8}, Lcom/snaptube/premium/extractor/ExtractorException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance v5, Lcom/snaptube/premium/extractor/ExtractorException;

    invoke-direct {v5, v7, v8}, Lcom/snaptube/premium/extractor/ExtractorException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Lcom/snaptube/premium/extractor/TraceContext;->save()V

    goto :goto_6

    :cond_5
    invoke-static {}, Lcom/snaptube/premium/extractor/TraceContext;->restore()V

    :goto_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    if-nez v5, :cond_9

    return-object v0

    :cond_9
    throw v5
.end method

.method public final g(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    sget-object v0, Lo/lg7;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/y06;->k(Ljava/lang/ClassLoader;Ljava/lang/String;)Lo/y06;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lo/y06;->h()Lo/od2;

    move-result-object v0

    invoke-virtual {p1}, Lo/y06;->j()Lo/kp8;

    move-result-object p1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/lg7;->d:[Lo/dc3;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lo/lg7;->e:[Lo/vi3;

    aput-object p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    const-string v0, "UnExpectedException"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public getInjectionCode(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v3, p1}, Lo/vu3;->getInjectionCode(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMuxAudioFormat(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            "Ljava/util/List<",
            "Lcom/snaptube/extractor/pluginlib/models/Format;",
            ">;)",
            "Lcom/snaptube/extractor/pluginlib/models/Format;"
        }
    .end annotation

    iget-object v0, p0, Lo/lg7;->e:[Lo/vi3;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v3, p1, p2}, Lo/vi3;->getMuxAudioFormat(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/lang/ClassLoader;)Z
    .locals 3

    sget-object v0, Lo/lg7;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/y06;->k(Ljava/lang/ClassLoader;Ljava/lang/String;)Lo/y06;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lo/y06;->h()Lo/od2;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lo/y06;->j()Lo/kp8;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lo/lg7;->d:[Lo/dc3;

    aput-object v1, v2, v0

    iget-object v1, p0, Lo/lg7;->e:[Lo/vi3;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    return p1
.end method

.method public hostMatches(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/dc3;->hostMatches(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isFormatNeedMux(Lcom/snaptube/extractor/pluginlib/models/Format;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->e:[Lo/vi3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/vi3;->isFormatNeedMux(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isJavaScriptControlled(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/vu3;->isJavaScriptControlled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isMetaSearch(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/dc3;->isMetaSearch(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isUrlSupported(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/dc3;->isUrlSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lo/lg7;->d:[Lo/dc3;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lo/lg7;->d(Lo/dc3;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p1}, Lo/lg7;->d(Lo/dc3;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public test(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lo/lg7;->d:[Lo/dc3;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {v4, p1}, Lo/dc3;->test(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
