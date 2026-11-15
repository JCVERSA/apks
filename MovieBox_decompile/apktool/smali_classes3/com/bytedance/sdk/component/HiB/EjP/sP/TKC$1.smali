.class Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;->sP(Lcom/bytedance/sdk/component/HiB/sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:[B

.field final synthetic HiB:Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;

.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/component/HiB/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;Lcom/bytedance/sdk/component/HiB/sP;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->HiB:Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->sP:Lcom/bytedance/sdk/component/HiB/sP;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->TKC:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->EjP:[B

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->sP:Lcom/bytedance/sdk/component/HiB/sP;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->TKC:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/sP/TKC$1;->EjP:[B

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
