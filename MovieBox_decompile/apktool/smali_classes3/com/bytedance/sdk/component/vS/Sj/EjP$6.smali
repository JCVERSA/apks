.class Lcom/bytedance/sdk/component/vS/Sj/EjP$6;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Z

.field final synthetic sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/HiB;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->TKC:Z

    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->sP:Lcom/bytedance/sdk/component/vS/Sj/HiB;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->vS()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/vS/Sj/EjP$6;->TKC:Z

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP;Ljava/lang/String;IZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
