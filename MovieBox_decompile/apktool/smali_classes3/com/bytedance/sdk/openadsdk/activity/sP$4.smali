.class Lcom/bytedance/sdk/openadsdk/activity/sP$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:I

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

.field final synthetic TKC:I

.field final synthetic sP:Z

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->sP:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->TKC:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->HiB:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->vS:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Jcg:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->Sj:Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->sP:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->TKC:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->EjP:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->HiB:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$4;->vS:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Sj(Lcom/bytedance/sdk/openadsdk/activity/vS;ZILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
