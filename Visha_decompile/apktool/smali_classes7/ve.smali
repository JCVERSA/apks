.class public Lve;
.super Lvec;
.source "SourceFile"


# static fields
.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lve;->b:Ljava/util/List;

    const-class v1, Lec2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lve;->b:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lve;->b:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lvec;-><init>()V

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

    invoke-virtual {p0, p1}, Lve;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lve;->b:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->restoreAppLayoutConfigFromCache()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x47f

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
