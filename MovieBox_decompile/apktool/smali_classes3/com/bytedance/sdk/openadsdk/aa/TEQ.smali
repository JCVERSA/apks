.class public Lcom/bytedance/sdk/openadsdk/aa/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final Sj:Landroid/media/AudioManager;

.field private TKC:Z

.field private sP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "audio"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/media/AudioManager;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    .line 23
    .line 24
    return-void
.end method

.method private Sj(III)V
    .locals 1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    return v0
.end method

.method public Sj(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(ZZ)V

    return-void
.end method

.method public Sj(ZZ)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(III)V

    .line 7
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    return-void

    .line 8
    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    const/4 v3, -0x1

    if-nez p1, :cond_4

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->uA()I

    move-result p1

    .line 10
    div-int/lit8 p1, p1, 0xf

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_6

    if-eqz p2, :cond_5

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->uA()I

    move-result p1

    .line 12
    div-int/lit8 p1, p1, 0xf

    goto :goto_1

    :cond_5
    return-void

    .line 13
    :cond_6
    :goto_2
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    .line 14
    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(III)V

    .line 15
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    return-void
.end method
