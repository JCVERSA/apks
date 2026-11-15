.class Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->Sj:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
