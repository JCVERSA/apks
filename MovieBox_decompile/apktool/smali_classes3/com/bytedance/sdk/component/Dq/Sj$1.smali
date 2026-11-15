.class Lcom/bytedance/sdk/component/Dq/Sj$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Dq/Sj;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/Runnable;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Dq/Sj;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj$1;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/Dq/Sj$1;->Sj:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/Sj$1;->Sj:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
