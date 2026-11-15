.class Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->wE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;->sP(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    float-to-int v1, v1

    .line 16
    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1$1;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1$1;-><init>(Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$1;Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
