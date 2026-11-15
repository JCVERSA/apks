.class Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->HiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->sP:Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP$3;->Sj:Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/sP/TKC/TKC;->TKC(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
