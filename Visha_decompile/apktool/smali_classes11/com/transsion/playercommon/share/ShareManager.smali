.class public final Lcom/transsion/playercommon/share/ShareManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/playercommon/share/ShareManager;

.field public static final b:Ljava/util/Map;

.field public static final c:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/share/ShareManager;

    invoke-direct {v0}, Lcom/transsion/playercommon/share/ShareManager;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/share/ShareManager;->b:Ljava/util/Map;

    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/transsion/playercommon/share/ShareManager;->c:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object p0, Lcom/transsion/playercommon/share/ShareManager;->c:Landroid/util/LruCache;

    invoke-virtual {p0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    sget-object v0, Lkf;->a:Lkf;

    invoke-virtual {v0, p1, p2}, Lkf;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/playercommon/share/ShareManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfw4;

    invoke-interface {v1}, Lfw4;->a()Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    move-result-object v1

    sget-object v2, Lkf;->a:Lkf;

    invoke-virtual {v1}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lkf;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {v1}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/transsion/playercommon/share/ShareManager;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/transsion/playercommon/share/ShareManager$getAvailableSharePlatforms$$inlined$sortedBy$1;

    invoke-direct {p0}, Lcom/transsion/playercommon/share/ShareManager$getAvailableSharePlatforms$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p0}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/transsion/playercommon/share/model/ShareOption;->WHATSAPP:Lcom/transsion/playercommon/share/model/ShareOption;

    new-instance v1, Lrkc;

    invoke-direct {v1}, Lrkc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/share/ShareManager;->d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V

    sget-object v0, Lcom/transsion/playercommon/share/model/ShareOption;->TELEGRAM:Lcom/transsion/playercommon/share/model/ShareOption;

    new-instance v1, Loea;

    invoke-direct {v1}, Loea;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/share/ShareManager;->d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V

    sget-object v0, Lcom/transsion/playercommon/share/model/ShareOption;->MESSAGES:Lcom/transsion/playercommon/share/model/ShareOption;

    new-instance v1, Lvn6;

    invoke-direct {v1}, Lvn6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/share/ShareManager;->d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V

    sget-object v0, Lcom/transsion/playercommon/share/model/ShareOption;->MESSENGER:Lcom/transsion/playercommon/share/model/ShareOption;

    new-instance v1, Lyn6;

    invoke-direct {v1}, Lyn6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/share/ShareManager;->d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V

    sget-object v0, Lcom/transsion/playercommon/share/model/ShareOption;->WHATSAPP_BUSINESS:Lcom/transsion/playercommon/share/model/ShareOption;

    new-instance v1, Lilc;

    invoke-direct {v1}, Lilc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/share/ShareManager;->d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V

    return-void
.end method

.method public final d(Lcom/transsion/playercommon/share/model/ShareOption;Lfw4;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerShareProvider: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShareManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/playercommon/share/ShareManager;->b:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Landroid/content/Context;Lcom/transsion/playercommon/share/model/ShareContent;Lcom/transsion/playercommon/share/model/ShareOption;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "content"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "option"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/playercommon/share/ShareManager;->b:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfw4;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lfw4;->b(Landroid/content/Context;Lcom/transsion/playercommon/share/model/ShareContent;Lcom/transsion/playercommon/share/model/ShareOption;)V

    :cond_0
    return-void
.end method
