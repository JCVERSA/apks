.class public abstract Luc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLur5;Lonb;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lgg5;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;FLonb;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Lonb;)Ljava/util/List;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lgg5;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;FLonb;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lcc;
    .locals 2

    new-instance v0, Lcc;

    sget-object v1, Lz81;->a:Lz81;

    invoke-static {p0, p1, v1}, Luc;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lmc;
    .locals 3

    new-instance v0, Lmc;

    invoke-static {}, Lplb;->e()F

    move-result v1

    sget-object v2, Lgw2;->a:Lgw2;

    invoke-static {p0, v1, p1, v2}, Luc;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lmc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Ldc;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Luc;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Z)Ldc;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Z)Ldc;
    .locals 2

    new-instance v0, Ldc;

    if-eqz p2, :cond_0

    invoke-static {}, Lplb;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lyy3;->a:Lyy3;

    invoke-static {p0, p2, p1, v1}, Luc;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ldc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;I)Lec;
    .locals 2

    new-instance v0, Lec;

    new-instance v1, Llj4;

    invoke-direct {v1, p2}, Llj4;-><init>(I)V

    invoke-static {p0, p1, v1}, Luc;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lec;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static h(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lfc;
    .locals 2

    new-instance v0, Lfc;

    sget-object v1, Lk25;->a:Lk25;

    invoke-static {p0, p1, v1}, Luc;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lfc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static i(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lic;
    .locals 4

    new-instance v0, Lic;

    invoke-static {}, Lplb;->e()F

    move-result v1

    sget-object v2, Lic8;->a:Lic8;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lgg5;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;FLonb;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lic;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static j(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Ljc;
    .locals 2

    new-instance v0, Ljc;

    sget-object v1, Lu19;->a:Lu19;

    invoke-static {p0, p1, v1}, Luc;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static k(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lur5;)Lkc;
    .locals 3

    new-instance v0, Lkc;

    invoke-static {}, Lplb;->e()F

    move-result v1

    sget-object v2, Ltf9;->a:Ltf9;

    invoke-static {p0, v1, p1, v2}, Luc;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;FLur5;Lonb;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkc;-><init>(Ljava/util/List;)V

    return-object v0
.end method
