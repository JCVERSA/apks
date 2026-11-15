.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj(Lv5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v1, 0x9

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HiB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
