.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/Fmk;
.implements Lcom/bytedance/adsdk/ugeno/core/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/core/Fmk;

.field private final Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;

.field private sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->Sj:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->sP(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V

    return-void
.end method

.method private sP(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V
    .locals 3

    .line 1
    const/16 v0, 0xbb8

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->Sj:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const-string p1, "ugen render fail"

    .line 21
    .line 22
    invoke-interface {p3, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;->Sj(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$2;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    :try_start_1
    const-string p1, "language"

    .line 52
    .line 53
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa;->sP()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string p1, "os"

    .line 61
    .line 62
    const-string v2, "Android"

    .line 63
    .line 64
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_1
    :cond_3
    :try_start_2
    invoke-virtual {v1, p2}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    .line 70
    if-eqz p3, :cond_4

    .line 71
    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 73
    .line 74
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void

    .line 78
    :goto_1
    if-eqz p3, :cond_5

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "ugen render fail exception is"

    .line 83
    .line 84
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p3, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;->Sj(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/Fmk;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;

    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/aa$sP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    :cond_3
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/core/Fmk;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/Fmk;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->sP(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method
