.class public Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dx;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/sP/Sj;


# instance fields
.field private Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dx;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dx;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;

    return-object v0
.end method

.method public Sj(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dx;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;->Sj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dx;->sP()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
