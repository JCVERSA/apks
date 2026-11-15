.class public abstract Lgu/c;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lgu/c;->d(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lgu/c;->j(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getVideos()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lgu/a;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Lgu/a;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lhu/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static final d(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    const-string v0, "navigator"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from_opt_id"

    .line 7
    .line 8
    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    const-string p2, "tab_id"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_7

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const v2, -0x7697b173

    .line 16
    .line 17
    .line 18
    if-eq v1, v2, :cond_5

    .line 19
    .line 20
    const v2, 0x1e76f7ac

    .line 21
    .line 22
    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    const p1, 0x7938df55    # 5.999452E34f

    .line 26
    .line 27
    .line 28
    if-eq v1, p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string p1, "VERTICAL_RANK"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVerticalRank()Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_7

    .line 45
    .line 46
    invoke-static {p0}, Lgu/c;->g(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const-string v1, "UGC_COLLECTION"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_7

    .line 64
    .line 65
    invoke-static {p0, p1, p2}, Lgu/c;->c(Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    const-string v1, "UGC_VIDEO"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    if-eqz p0, :cond_7

    .line 83
    .line 84
    invoke-static {p0, p1, p2}, Lgu/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_7
    :goto_1
    return-void
.end method

.method public static synthetic f(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lgu/c;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static final g(Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getDeeplink()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getDeeplink()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v0, v1, v0}, Lij/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void

    .line 32
    :cond_3
    :goto_1
    const-string v1, "/home/ugc_ranking"

    .line 33
    .line 34
    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz p0, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getVideos()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    move-object v2, v0

    .line 60
    :goto_2
    const-string v3, "category"

    .line 61
    .line 62
    invoke-virtual {v1, v3, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;->getId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_5
    const-string p0, "tabId"

    .line 73
    .line 74
    invoke-virtual {v1, p0, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lij/k;->p(Lcom/therouter/router/Navigator;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static final h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lgu/b;

    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Lgu/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lhu/b;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2}, Lgu/c;->h(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/Integer;Lcom/therouter/router/Navigator;)Lcom/therouter/router/Navigator;
    .locals 1

    .line 1
    const-string v0, "navigator"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from_opt_id"

    .line 7
    .line 8
    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    const-string p2, "tab_id"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
