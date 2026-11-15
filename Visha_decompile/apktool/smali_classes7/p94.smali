.class public Lp94;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lp94;->b:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lp94;->b:Ljava/util/List;

    const-class v1, Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

    return-void
.end method

.method public static bridge synthetic h(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lp94;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/moduleservice/IOnlineVideoService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IOnlineVideoService;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_1

    invoke-static {}, Lge;->e()Z

    move-result v2

    sput-boolean v2, Lyv9;->a:Z

    check-cast p0, Landroid/app/Application;

    invoke-interface {v1, p0, v0, v2}, Lcom/transsion/moduleservice/IOnlineVideoService;->initPlayer(Landroid/app/Application;Ljava/lang/String;Z)V

    sget-boolean p0, Lcom/transsion/playercommon/vishaapis/APIServiceConfig;->bTestMode:Z

    invoke-interface {v1, p0}, Lcom/transsion/moduleservice/IOnlineVideoService;->setAPIServiceDebugMode(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lp94;->i(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lp94;->b:Ljava/util/List;

    return-object p0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->k()Lcom/transsion/utils/deviceinfo/a;

    move-result-object v0

    new-instance v1, Lp94$a;

    invoke-direct {v1, p0, p1}, Lp94$a;-><init>(Lp94;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/transsion/utils/deviceinfo/a;->g(Lcom/transsion/utils/deviceinfo/a$b;)V

    const/4 p0, 0x0

    return-object p0
.end method
