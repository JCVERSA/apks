.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

.field private EjP:Ljava/lang/String;

.field private Fmk:Z

.field private HiB:Ljava/lang/String;

.field private Jcg:Landroidx/browser/customtabs/j;

.field public Sj:Landroidx/browser/customtabs/l;

.field private TEQ:Z

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TzV:Landroidx/browser/customtabs/c;

.field private Ym:Z

.field private Zq:Ljava/lang/Long;

.field private aa:Z

.field private dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

.field private sP:Landroid/content/Context;

.field private sef:J

.field private uA:Z

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

.field private vS:Landroidx/browser/customtabs/CustomTabsClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Fmk:Z

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    .line 28
    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj:Landroidx/browser/customtabs/l;

    .line 35
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TzV:Landroidx/browser/customtabs/c;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    .line 44
    .line 45
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 46
    .line 47
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Zq:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    return-wide v0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    return p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/j;)Landroidx/browser/customtabs/j;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    return-object p1
.end method

.method private Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;
    .locals 2

    .line 45
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(I)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    const/16 p1, 0x8

    .line 51
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;)Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Zq:Ljava/lang/Long;

    return-object p1
.end method

.method private Sj()V
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    .line 40
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 42
    const-string v1, "AdActAction"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Sj(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 4

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TzV:Landroidx/browser/customtabs/c;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    const/16 p1, 0x9

    .line 11
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/j;->g(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj:Landroidx/browser/customtabs/l;

    invoke-virtual {v0, v3, v1}, Landroidx/browser/customtabs/j;->j(Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    .line 14
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(I)V

    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(I)V

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP(I)V

    .line 17
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->sP(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 18
    :cond_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->sP(I)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(I)V

    .line 20
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(I)V

    .line 21
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz p1, :cond_2

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindSuccess(Landroidx/browser/customtabs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lorg/json/JSONObject;J)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    return p1
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Fmk:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)Landroidx/browser/customtabs/CustomTabsClient;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    return p1
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;)V
    .locals 2

    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 28
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 31
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/sP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    .line 32
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/f;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 34
    const-string v0, "AdActAction"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    .line 36
    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
