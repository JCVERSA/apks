.class Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/HiB/Ym;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:[B

.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/sP;

.field final synthetic TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

.field final synthetic sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

.field final synthetic vS:Lcom/bytedance/sdk/component/HiB/HiB/Ym;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/HiB/Ym;Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/TKC/vS;Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->vS:Lcom/bytedance/sdk/component/HiB/HiB/Ym;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->Sj:Lcom/bytedance/sdk/component/HiB/sP;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->HiB:[B

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->Sj:Lcom/bytedance/sdk/component/HiB/sP;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sP;->Jcg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->sP:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->TKC:Lcom/bytedance/sdk/component/HiB/TKC/TKC;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ()Lcom/bytedance/sdk/component/HiB/sP;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->EjP:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/HiB/Ym$1;->HiB:[B

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
