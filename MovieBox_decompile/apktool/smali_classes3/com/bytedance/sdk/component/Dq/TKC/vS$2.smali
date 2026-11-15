.class Lcom/bytedance/sdk/component/Dq/TKC/vS$2;
.super Lcom/bytedance/sdk/component/Dq/TKC/sP;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Dq/TKC/vS;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/util/concurrent/RunnableFuture;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Dq/TKC/vS;ILjava/lang/String;Ljava/util/concurrent/RunnableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$2;->sP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$2;->Sj:Ljava/util/concurrent/RunnableFuture;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Dq/TKC/sP;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/TKC/vS$2;->Sj:Ljava/util/concurrent/RunnableFuture;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/RunnableFuture;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
