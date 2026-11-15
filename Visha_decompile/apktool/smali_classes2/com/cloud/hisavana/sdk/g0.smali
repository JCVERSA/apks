.class public final Lcom/cloud/hisavana/sdk/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/g0;

.field public static b:J

.field public static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/hisavana/sdk/g0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/g0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/cloud/hisavana/sdk/g0;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cloud/hisavana/sdk/g0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/g0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://transsion-eagllwin-material-static-test.oss-ap-southeast-1.aliyuncs.com/adInternal/json/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lr6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd8;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/g0;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://material-static-oss.eagllwin.com/adInternal/json/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lr6;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd8;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/g0;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/g0;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->l(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V

    return-void
.end method

.method public static synthetic c(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/cloud/hisavana/sdk/g0;->u(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V

    return-void
.end method

.method public static final synthetic e(Lcom/cloud/hisavana/sdk/g0;ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->d(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/cloud/hisavana/sdk/g0;)Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g0;->C()Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/cloud/hisavana/sdk/g0;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->g(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/g0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final l(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cachedAdInfos"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->getAdsDTOList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->getAdStatusStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lxh5;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic n(Lcom/cloud/hisavana/sdk/g0;Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->m(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;Z)V

    return-void
.end method

.method public static final o(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/l0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic s(Lcom/cloud/hisavana/sdk/g0;Lwh1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->r(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/g0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final u(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V
    .locals 8

    const-string v0, "$codeSeatId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/l0;->a(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;)Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;

    move-result-object p0

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance p2, Llfd;

    invoke-direct {p2, p6, p0}, Llfd;-><init>(Lxh5;Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;)V

    invoke-virtual {p1, p2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic v(Lcom/cloud/hisavana/sdk/g0;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g0;->E()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    sget-object p0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    new-instance v0, Ljfd;

    invoke-direct {v0}, Ljfd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/HttpRequest;->b(Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;)V

    return-void
.end method

.method public final B()Z
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final C()Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lyu3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g0;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lr6;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default_ad_data.txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default_ad_data path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultAdManager"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "default ad data path is not exist"

    invoke-virtual {p0, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/File;->setReadable(Z)Z

    invoke-virtual {v0, p0}, Ljava/io/File;->setWritable(Z)Z

    invoke-static {v0, v1, p0, v1}, Ldv3;->d(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    invoke-static {p0, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v3, "default_local_version"

    invoke-virtual {v0, v3}, Lo9;->h(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localVersion is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , zip version is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getVersion()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getVersion()Ljava/lang/Long;

    move-result-object v0

    const-string v5, "getVersion(...)"

    invoke-static {v0, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse default ad data failed, error is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public final D()V
    .locals 6

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f()Lnk1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e()Lhk1;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/sdk/g0$f;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/g0$f;-><init>(Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final E()Z
    .locals 5

    const-string p0, "DefaultAdManager"

    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lr6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lyu3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/g0;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lwzc;->a(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unzip result is ----> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v0, v2}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lly0;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "Please check whether the default advertising zip package is configured correctly"

    invoke-virtual {v0, p0, v1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(ILjava/lang/String;)I
    .locals 4

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0x7d2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-class p1, Lcom/cloud/hisavana/sdk/data/bean/response/DefaultResponse;

    invoke-static {p2, p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/DefaultResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DefaultResponse;->getData()Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "default_local_version"

    invoke-virtual {p0, v0}, Lo9;->h(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", online version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getVersion()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DefaultAdManager"

    invoke-virtual {p0, v2, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DefaultResponse;->getData()Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getVersion()Ljava/lang/Long;

    move-result-object p0

    const-string p2, "getVersion(...)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    const/4 p2, 0x0

    if-gez p0, :cond_2

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DefaultResponse;->getData()Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;

    move-result-object p1

    const-string v0, "getData(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->m(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;Z)V

    :cond_2
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "default_last_request_time"

    invoke-virtual {p0, p1, v0, v1}, Lo9;->q(Ljava/lang/String;J)V

    return p2

    :cond_3
    return p0

    :catch_0
    const/16 p0, 0x7d1

    :cond_4
    :goto_0
    return p0
.end method

.method public final g(Lwh1;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/g0$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/g0$a;

    iget v1, v0, Lcom/cloud/hisavana/sdk/g0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/cloud/hisavana/sdk/g0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/g0$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/g0$a;-><init>(Lcom/cloud/hisavana/sdk/g0;Lwh1;)V

    :goto_0
    iget-object p0, v0, Lcom/cloud/hisavana/sdk/g0$a;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    iget v1, v0, Lcom/cloud/hisavana/sdk/g0$a;->e:I

    const/4 v2, 0x1

    const-string v3, "DefaultAdManager"

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/g0$a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/g0$a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v4, p0

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    sget-object p0, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/l0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v5, Lcom/cloud/hisavana/sdk/g0$b;

    invoke-direct {v5}, Lcom/cloud/hisavana/sdk/g0$b;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal()Z

    move-result v7

    :cond_7
    if-nez v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sget-object v6, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    new-instance v7, Lcom/cloud/hisavana/sdk/g0$c;

    invoke-direct {v7, v1, v5, p0}, Lcom/cloud/hisavana/sdk/g0$c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    iput-object v4, v0, Lcom/cloud/hisavana/sdk/g0$a;->a:Ljava/lang/Object;

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/g0$a;->b:Ljava/lang/Object;

    iput v2, v0, Lcom/cloud/hisavana/sdk/g0$a;->e:I

    const-wide/32 v8, 0x16378

    invoke-virtual {v6, v8, v9, v7, v0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->w(JLe74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_9

    return-object p1

    :cond_9
    :goto_3
    check-cast p0, Lzfb;

    if-nez p0, :cond_3

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadMaterial timeout for codeSeatId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v1, "parse ad data json failed"

    invoke-virtual {p0, v3, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "download default material completed"

    invoke-virtual {p0, v3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final j(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V
    .locals 10

    const-string v0, "codeSeatId"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v9, Lkfd;

    move-object v1, v9

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lkfd;-><init>(ILjava/lang/String;IZILjava/util/concurrent/ConcurrentHashMap;Lxh5;)V

    invoke-virtual {v0, v9}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(J)V
    .locals 6

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "default_is_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo9;->d(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/cloud/hisavana/sdk/g0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default ad is open ---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DefaultAdManager"

    invoke-virtual {v1, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g0;->A()V

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f()Lnk1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e()Lhk1;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/sdk/g0$g;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p0}, Lcom/cloud/hisavana/sdk/g0$g;-><init>(JLwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final m(Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;Z)V
    .locals 12

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getNativeAds()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getBannerAds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getInterstitialAds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getSplashAds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getIconAds()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v3

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getRewardedAds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v4

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getPsAppInfoList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v5

    :cond_6
    move-object v8, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v6, Lcom/cloud/hisavana/sdk/l0;->a:Lcom/cloud/hisavana/sdk/l0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultDataDTO;->getVersion()Ljava/lang/Long;

    move-result-object p0

    const-string p1, "getVersion(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/cloud/hisavana/sdk/l0;->i(Ljava/util/List;Ljava/util/List;ZJ)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string p0, "adCreativeId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "codeSeatId"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f()Lnk1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e()Lhk1;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/sdk/g0$h;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p2, p0}, Lcom/cloud/hisavana/sdk/g0$h;-><init>(Ljava/lang/String;Ljava/lang/String;Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final q(Z)V
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final r(Lwh1;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/g0$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/g0$d;

    iget v1, v0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/g0$d;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/g0$d;-><init>(Lcom/cloud/hisavana/sdk/g0;Lwh1;)V

    :goto_0
    iget-object p1, v0, Lcom/cloud/hisavana/sdk/g0$d;->a:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {}, Luva;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->P(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/g0;->w()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Q(Ljava/lang/String;I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_3
    invoke-static {}, Lp9;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {v2}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    const-string v4, "Accept-Timezone"

    const-string v5, "UTC"

    invoke-virtual {v2, v4, v5}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a:Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;

    new-instance v5, Lcom/cloud/hisavana/sdk/g0$e;

    invoke-direct {v5, p0, v2, p1}, Lcom/cloud/hisavana/sdk/g0$e;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Ljava/lang/String;)V

    iput v3, v0, Lcom/cloud/hisavana/sdk/g0$d;->c:I

    const-wide/32 p0, 0x16378

    invoke-virtual {v4, p0, p1, v5, v0}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->w(JLe74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Lzfb;

    const-string p0, "DefaultAdManager"

    if-nez p1, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "requestDefaultData timeout"

    invoke-virtual {p1, p0, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "requestDefaultData finished"

    invoke-virtual {p1, p0, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final w()I
    .locals 8

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x7d4

    return p0

    :cond_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v0, "default_last_request_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    sget-wide v4, Lcom/cloud/hisavana/sdk/g0;->b:J

    const-string v6, "default_interval"

    invoke-virtual {p0, v6, v4, v5}, Lo9;->i(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastRequestTime is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", currentTIme is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", default interval is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DefaultAdManager"

    invoke-virtual {p0, v7, v6}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v2, v0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1

    const/16 p0, 0x7d5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Ljava/lang/String;
    .locals 0

    const-string p0, "default_ad_data"

    invoke-static {p0}, Lvl4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final z()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->e:Ljava/lang/String;

    return-object p0
.end method
