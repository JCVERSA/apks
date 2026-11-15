.class public Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public final b:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b:Lcom/tencent/mmkv/MMKV;

    .line 4
    invoke-virtual {p0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Lyy0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;-><init>()V

    return-void
.end method

.method public static b()Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper$a;->a:Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b:Lcom/tencent/mmkv/MMKV;

    const-string v0, "cloud_ctrl_config"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(I)Z
    .locals 5

    iget-object p0, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->a:Ljava/util/List;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    if-ne p1, v0, :cond_2

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;->getOnlineStatus()I

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/cloudctrlconfigbean/CloudCtrlConfigBean$CloudCtrl;->getOnlineStatus()I

    move-result p0

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-ne p1, v0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->b:Lcom/tencent/mmkv/MMKV;

    const-string v1, "cloud_ctrl_config"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper$1;-><init>(Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->a:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/cloudctrlconfigrequest/CloudCtrlConfigHelper;->a(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponse:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudCtrlConfigRequestUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
