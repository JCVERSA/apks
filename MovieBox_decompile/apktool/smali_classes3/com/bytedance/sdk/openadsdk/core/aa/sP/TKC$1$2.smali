.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj(Lv5/a;J)V
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
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Fmk(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sef(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Zq(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->uvD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->uvD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->uvD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;

    .line 69
    .line 70
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;->vS()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
