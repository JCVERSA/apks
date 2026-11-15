.class public Lcom/bytedance/adsdk/sP/HiB/EjP;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method static EjP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB/WMZ;->Sj:Lcom/bytedance/adsdk/sP/HiB/WMZ;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method static HiB(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/bytedance/adsdk/sP/HiB/Mts;->Sj:Lcom/bytedance/adsdk/sP/HiB/Mts;

    .line 8
    .line 9
    invoke-static {p0, v1, p1, v2}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method static Jcg(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB/Jcg;->Sj:Lcom/bytedance/adsdk/sP/HiB/Jcg;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Sj;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;I)Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;

    new-instance v1, Lcom/bytedance/adsdk/sP/HiB/Zq;

    invoke-direct {v1, p2}, Lcom/bytedance/adsdk/sP/HiB/Zq;-><init>(I)V

    .line 5
    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Z)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Z)Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB/aa;->Sj:Lcom/bytedance/adsdk/sP/HiB/aa;

    invoke-static {p0, p2, p1, v1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p2, p1, p3, v0}, Lcom/bytedance/adsdk/sP/HiB/dx;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;FLcom/bytedance/adsdk/sP/HiB/Ei;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            "Lcom/bytedance/adsdk/sP/HiB/Ei<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2, v1}, Lcom/bytedance/adsdk/sP/HiB/dx;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;FLcom/bytedance/adsdk/sP/HiB/Ei;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static TKC(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/vS;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/bytedance/adsdk/sP/HiB/LqL;->Sj:Lcom/bytedance/adsdk/sP/HiB/LqL;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {p0, p1, v1, v2, v3}, Lcom/bytedance/adsdk/sP/HiB/dx;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;FLcom/bytedance/adsdk/sP/HiB/Ei;Z)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/vS;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method static sP(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB/TzV;->Sj:Lcom/bytedance/adsdk/sP/HiB/TzV;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method static vS(Landroid/util/JsonReader;Lcom/bytedance/adsdk/sP/Jcg;)Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/adsdk/sP/vS/vS;->Sj()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/bytedance/adsdk/sP/HiB/uA;->Sj:Lcom/bytedance/adsdk/sP/HiB/uA;

    .line 8
    .line 9
    invoke-static {p0, v1, p1, v2}, Lcom/bytedance/adsdk/sP/HiB/EjP;->Sj(Landroid/util/JsonReader;FLcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/HiB/Ei;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/sP/TKC/Sj/TEQ;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
