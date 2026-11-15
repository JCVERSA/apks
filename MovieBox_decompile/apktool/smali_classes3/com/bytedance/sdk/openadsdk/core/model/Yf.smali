.class public Lcom/bytedance/sdk/openadsdk/core/model/Yf;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private EjP:Ljava/lang/String;

.field private Sj:I

.field private TKC:I

.field private sP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->TKC:I

    return v0
.end method

.method public Sj(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->Sj:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->EjP:Ljava/lang/String;

    return-void
.end method

.method public TKC(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->TKC:I

    .line 2
    .line 3
    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/Yf;->sP:I

    return-void
.end method
