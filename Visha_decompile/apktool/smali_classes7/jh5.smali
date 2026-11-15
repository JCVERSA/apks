.class public final Ljh5;
.super Lvec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljh5$a;
    }
.end annotation


# static fields
.field public static final b:Ljh5$a;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljh5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljh5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljh5;->b:Ljh5$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljh5;->c:Ljava/util/List;

    const-class v1, Lbg;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lrr8;

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

    invoke-virtual {p0, p1}, Ljh5;->h(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Ljh5;->c:Ljava/util/List;

    return-object p0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/Void;
    .locals 2

    sget-object p0, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper;->Companion:Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;

    invoke-virtual {p0}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/CloudFeaturesConfigHelper$Companion;->loadFeaturesConfig()V

    sget-object p0, Lzz0;->a:Lzz0;

    invoke-virtual {p0}, Lzz0;->b()V

    invoke-static {}, Lzz0;->d()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create isSupportCloudDisk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KtCloudInitTask"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lzz0;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lte;->c()V

    :cond_0
    sget-object p0, Lmu1;->a:Lmu1;

    invoke-virtual {p0}, Lmu1;->a()V

    sget-object p0, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {p0}, Lcom/transsion/playercommon/share/ShareManager;->c()V

    invoke-static {}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->B()Lcom/transsion/sniffer_load/GlobalDownloadManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/GlobalDownloadManger;->D(Landroid/content/Context;)V

    invoke-static {}, Lzz0;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lri4;->e()Lri4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lri4;->i(Landroid/content/Context;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
