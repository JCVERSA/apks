.class Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TKC"
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

.field private final sP:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->sP:Lorg/json/JSONObject;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/sef;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$TKC;->sP:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
