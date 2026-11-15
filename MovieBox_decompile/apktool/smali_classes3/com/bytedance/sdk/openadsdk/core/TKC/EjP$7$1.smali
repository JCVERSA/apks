.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$7;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
