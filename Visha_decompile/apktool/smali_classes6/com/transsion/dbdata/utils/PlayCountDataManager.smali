.class public Lcom/transsion/dbdata/utils/PlayCountDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "PlayCountDataManager"

.field public static c:Lcom/transsion/dbdata/utils/PlayCountDataManager;


# instance fields
.field public a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/utils/PlayCountDataManager;

    invoke-direct {v0}, Lcom/transsion/dbdata/utils/PlayCountDataManager;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->c:Lcom/transsion/dbdata/utils/PlayCountDataManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/transsion/dbdata/utils/PlayCountDataManager;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->c:Lcom/transsion/dbdata/utils/PlayCountDataManager;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->c()V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "playCount"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/dbdata/utils/PlayCountDataManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/dbdata/utils/PlayCountDataManager$1;-><init>(Lcom/transsion/dbdata/utils/PlayCountDataManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    :cond_1
    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->c()V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a:Ljava/util/Map;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "playCount"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
