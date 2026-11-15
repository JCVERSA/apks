.class public Lcom/bytedance/adsdk/ugeno/uA/sP/sP;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/Sj<",
        "Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field private AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public synthetic Sj()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->TKC()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    .line 14
    .line 15
    return-object v0
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->QZ:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;->setEventMap(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->sP()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
