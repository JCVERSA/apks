.class public abstract Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj$Sj;
    }
.end annotation


# instance fields
.field protected Sj:Lorg/json/JSONObject;

.field private TKC:Ljava/lang/String;

.field protected sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->TKC:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->TKC:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP()V

    return-void
.end method

.method public abstract Sj(II)V
.end method

.method public abstract Sj(Landroid/graphics/Canvas;)V
.end method

.method public abstract TKC()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sP()V
.end method

.method public abstract sP(Landroid/graphics/Canvas;)V
.end method
