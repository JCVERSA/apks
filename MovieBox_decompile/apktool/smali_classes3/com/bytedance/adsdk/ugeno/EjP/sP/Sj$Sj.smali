.class public Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# direct methods
.method public static Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/sP;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;

    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/sP/TKC;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-object v0
.end method
