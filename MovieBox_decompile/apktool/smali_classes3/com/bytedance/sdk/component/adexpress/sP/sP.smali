.class public Lcom/bytedance/sdk/component/adexpress/sP/sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field private HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->TKC:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    .line 11
    .line 12
    if-eqz p8, :cond_0

    .line 13
    .line 14
    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p6, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    .line 18
    .line 19
    move-object v0, p6

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p3

    .line 22
    move v3, p4

    .line 23
    move-object v4, p5

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p7

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    .line 27
    .line 28
    .line 29
    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    .line 36
    .line 37
    .line 38
    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x3

    .line 43
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const/4 p1, 0x2

    .line 47
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    .line 48
    .line 49
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/sP/sP;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->sP()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Sj(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/sP;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
