.class Lcom/bytedance/sdk/openadsdk/sU/Dq$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/sU/TKC;Lcom/bytedance/sdk/openadsdk/sU/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$4;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Dq$4;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Dq;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const-string v2, "webview is null"

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
