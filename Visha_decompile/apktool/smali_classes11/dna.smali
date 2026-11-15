.class public final Ldna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldna;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldna;

    invoke-direct {v0}, Ldna;-><init>()V

    sput-object v0, Ldna;->a:Ldna;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JLcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Ldna;->d(JLcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ldna;->e(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;Ljava/util/List;J)Ljava/util/List;
    .locals 3

    const-string v0, "allArticles"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getReqId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p0

    new-instance p1, Lbna;

    invoke-direct {p1, p2, p3}, Lbna;-><init>(J)V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Lcna;

    invoke-direct {p1}, Lcna;-><init>()V

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->B(Lpc9;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final d(JLcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;

    move-result-object p2

    invoke-static {p2, p0, p1}, Ldna;->f(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;J)Z

    move-result p0

    return p0
.end method

.method public static final e(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;)Ljava/lang/String;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;->getDocId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final f(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;->getUrlExpire()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gtz p0, :cond_0

    return v0

    :cond_0
    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
