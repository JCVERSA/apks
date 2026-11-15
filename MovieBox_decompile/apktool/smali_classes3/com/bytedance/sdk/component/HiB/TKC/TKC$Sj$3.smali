.class Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

.field final synthetic Sj:I

.field final synthetic TKC:Ljava/lang/Throwable;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->EjP:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->Sj:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->sP:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->TKC:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->EjP:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;)Lcom/bytedance/sdk/component/HiB/uvD;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->EjP:Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;)Lcom/bytedance/sdk/component/HiB/uvD;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->Sj:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->sP:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj$3;->TKC:Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
