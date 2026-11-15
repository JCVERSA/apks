.class public Lcom/bytedance/sdk/openadsdk/TzV/sP;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;
    }
.end annotation


# static fields
.field private static volatile Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

.field private final sP:Lcom/bytedance/sdk/component/Jcg/Sj;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    const-wide/16 v1, 0x2710

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq;)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Jcg/Sj$Sj;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP:Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 51
    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/sP$1;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/Sj;->HiB()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/16 v0, 0x20

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/EjP;->Sj(I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method private EjP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;
    .locals 3

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/TzV/sP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 7
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj:Lcom/bytedance/sdk/openadsdk/TzV/sP;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private Sj(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v1, "ipv6"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dx;

    sget-object v2, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->UNKNOWN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dx;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public Sj(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 17
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    const/4 v0, 0x2

    .line 21
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    if-eqz p2, :cond_1

    .line 22
    new-instance p1, Lcom/bytedance/sdk/openadsdk/TzV/sP$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/TzV/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/HiB/uvD;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/uvD;",
            "Landroid/widget/ImageView;",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Lcom/bytedance/sdk/component/HiB/uvD<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    const/4 p3, 0x2

    .line 16
    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    invoke-static {p5, p1, p4}, Lcom/bytedance/sdk/openadsdk/uA/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method public Sj(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TzV/sP$4;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$4;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/TzV/sP$3;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP$3;-><init>(Lcom/bytedance/sdk/openadsdk/TzV/sP;Ljava/lang/ref/WeakReference;)V

    .line 30
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    :cond_1
    :goto_0
    return-void
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->EjP()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC:Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    .line 5
    .line 6
    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/Jcg/Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP:Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 2
    .line 3
    return-object v0
.end method
