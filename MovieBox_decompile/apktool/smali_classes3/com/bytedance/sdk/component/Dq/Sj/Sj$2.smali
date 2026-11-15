.class Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/component/Dq/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Dq/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->sP:Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/component/Dq/Sj/Sj$2;->Sj:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
