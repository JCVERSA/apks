.class Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->Sj(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

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
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->sP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->TKC(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->Sj:I

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->EjP(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x5

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP$2;->sP:Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;->HiB(Lcom/bytedance/sdk/openadsdk/kF/Sj/sP;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method
