.class public Lcom/mgtv/thirdsdk/config/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/thirdsdk/config/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/config/b;
    .locals 1

    .line 13
    sget-object v0, Lcom/mgtv/thirdsdk/config/b;->a:Lcom/mgtv/thirdsdk/config/b;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/mgtv/thirdsdk/config/b;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/config/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgtv/thirdsdk/config/b;->a:Lcom/mgtv/thirdsdk/config/b;

    .line 15
    :cond_0
    sget-object p0, Lcom/mgtv/thirdsdk/config/b;->a:Lcom/mgtv/thirdsdk/config/b;

    return-object p0
.end method

.method private a(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 2
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    if-eqz p0, :cond_4

    .line 3
    const-string v0, "player_merge"

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->play_merge:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->huawei_p2p_lazy:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->huawei_p2p_lazy:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 6
    :goto_0
    const-string v3, "p2p_delay"

    invoke-static {v3, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    .line 7
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->tcp_keeplive:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->tcp_keeplive:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    .line 9
    :goto_1
    const-string v0, "tcp_alive"

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    .line 10
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->p2p:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$P2P;

    if-eqz p0, :cond_4

    .line 11
    iget p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$P2P;->wifi:I

    if-ne p0, v2, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    const-string v0, "p2p_open"

    invoke-static {v0, p0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    .line 12
    iget-object p0, p1, Lcom/hunantv/imgo/net/entity/MobileConfigEntity;->data:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;

    iget-object p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$Data;->p2p:Lcom/hunantv/imgo/net/entity/MobileConfigEntity$P2P;

    iget p0, p0, Lcom/hunantv/imgo/net/entity/MobileConfigEntity$P2P;->cn:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    const-string p0, "p2p_open_cn"

    invoke-static {p0, v1}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;Z)Z

    :cond_4
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/config/b;Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/config/b;->a(Lcom/hunantv/imgo/net/entity/MobileConfigEntity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 16
    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/config/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v1, Lcom/hunantv/imgo/net/ImgoHttpParams;

    invoke-direct {v1}, Lcom/hunantv/imgo/net/ImgoHttpParams;-><init>()V

    .line 18
    const-string v2, "code"

    const-string v3, "rootSwitch,p2pSwitch,play_merge,tcp_keeplive"

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    .line 19
    const-string v2, "cxid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    const/16 v2, 0x3e8

    .line 20
    invoke-virtual {v0, v2}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/hunantv/imgo/net/b;->q()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mgtv/thirdsdk/config/b$1;

    invoke-direct {v3, p0}, Lcom/mgtv/thirdsdk/config/b$1;-><init>(Lcom/mgtv/thirdsdk/config/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    return-void
.end method
