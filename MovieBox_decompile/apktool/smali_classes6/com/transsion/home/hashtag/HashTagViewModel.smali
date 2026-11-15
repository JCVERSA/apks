.class public final Lcom/transsion/home/hashtag/HashTagViewModel;
.super Landroidx/lifecycle/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;,
        Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;
    }
.end annotation


# instance fields
.field private final b:Landroid/app/Application;

.field private final c:Lyk/a;

.field private d:Ljava/util/List;

.field private e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/Map;

.field private final l:Ljava/util/Map;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private o:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->b:Landroid/app/Application;

    .line 10
    .line 11
    sget-object p1, Lkg/c;->e:Lkg/c$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lkg/c$a;->a()Lkg/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-class v0, Lyk/a;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lyk/a;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->c:Lyk/a;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->d:Ljava/util/List;

    .line 32
    .line 33
    const-string p1, "ForYou"

    .line 34
    .line 35
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 43
    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->k:Ljava/util/Map;

    .line 50
    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->l:Ljava/util/Map;

    .line 57
    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 64
    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 71
    .line 72
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;)Lokhttp3/RequestBody;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/hashtag/HashTagViewModel;->l(Ljava/lang/String;ILjava/util/Set;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/hashtag/HashTagViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/hashtag/HashTagViewModel;)Lyk/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->c:Lyk/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/home/hashtag/HashTagViewModel;->n(Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;ZLcom/tn/lib/net/bean/BaseDto;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/home/hashtag/HashTagViewModel;->o(Ljava/lang/String;ILjava/util/Set;ZLcom/tn/lib/net/bean/BaseDto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(Ljava/util/Set;Z)Ljava/util/List;
    .locals 9

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 4
    .line 5
    check-cast p2, Ljava/util/Collection;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p2, Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 17
    .line 18
    sget-object v1, Lcom/transsion/home/hashtag/model/HashTagItemType;->TAGS:Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v7, 0x38

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v0, p2

    .line 35
    invoke-direct/range {v0 .. v8}, Lcom/transsion/home/hashtag/model/HashTagItem;-><init>(Lcom/transsion/home/hashtag/model/HashTagItemType;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    :goto_1
    return-object p1
.end method

.method private final i(Ljava/util/List;Ljava/util/Set;Z)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 10
    .line 11
    check-cast v2, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v2, Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 23
    .line 24
    sget-object v4, Lcom/transsion/home/hashtag/model/HashTagItemType;->TAGS:Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 25
    .line 26
    iget-object v5, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 27
    .line 28
    move-object/from16 v3, p2

    .line 29
    .line 30
    check-cast v3, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const/16 v10, 0x38

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    move-object v3, v2

    .line 43
    invoke-direct/range {v3 .. v11}, Lcom/transsion/home/hashtag/model/HashTagItem;-><init>(Lcom/transsion/home/hashtag/model/HashTagItemType;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v2, 0x0

    .line 65
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v5, "buildFinalData: insert tags item, tags size="

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", selected size="

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    const/16 v16, 0x4

    .line 95
    .line 96
    const/16 v17, 0x0

    .line 97
    .line 98
    const-string v13, "HashTagViewModel"

    .line 99
    .line 100
    const/4 v15, 0x0

    .line 101
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    move-object/from16 v2, p1

    .line 105
    .line 106
    check-cast v2, Ljava/util/Collection;

    .line 107
    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    move-object/from16 v1, p1

    .line 117
    .line 118
    :goto_2
    return-object v1
.end method

.method private final j(Ljava/util/Set;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private final k(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)Lcom/transsion/home/hashtag/model/HashTagItem;
    .locals 17

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "UGC_VIDEO"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 21
    .line 22
    sget-object v3, Lcom/transsion/home/hashtag/model/HashTagItemType;->HASHTAG_CARD:Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 23
    .line 24
    const/16 v9, 0x36

    .line 25
    .line 26
    const/4 v10, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    move-object v2, v1

    .line 32
    invoke-direct/range {v2 .. v10}, Lcom/transsion/home/hashtag/model/HashTagItem;-><init>(Lcom/transsion/home/hashtag/model/HashTagItemType;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "convertToHashTagItem: unknown or unsupported content type="

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    const/4 v15, 0x4

    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    const-string v12, "HashTagViewModel"

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    invoke-static/range {v11 .. v16}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-object v1
.end method

.method private final l(Ljava/lang/String;ILjava/util/Set;)Lokhttp3/RequestBody;
    .locals 7

    .line 1
    invoke-direct {p0, p3}, Lcom/transsion/home/hashtag/HashTagViewModel;->j(Ljava/util/Set;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget v5, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->h:I

    .line 8
    .line 9
    new-instance p3, Lcom/transsion/home/net/HashTagListRequest;

    .line 10
    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    move-object v0, p3

    .line 14
    move v1, p2

    .line 15
    move-object v6, p1

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/net/HashTagListRequest;-><init>(IILjava/util/List;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p3, "createRequestBody: request="

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v4, 0x4

    .line 43
    const/4 v5, 0x0

    .line 44
    const-string v1, "HashTagViewModel"

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p2, Lmg/b;->a:Lmg/b$a;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private final n(Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Landroidx/lifecycle/b0;

    .line 17
    .line 18
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    move-object v9, v3

    .line 25
    check-cast v9, Landroidx/lifecycle/b0;

    .line 26
    .line 27
    move-object/from16 v2, p2

    .line 28
    .line 29
    invoke-direct {v0, v2, v8}, Lcom/transsion/home/hashtag/HashTagViewModel;->h(Ljava/util/Set;Z)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "handleError: errorMsg="

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-object/from16 v3, p4

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v6, ", errorCode="

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-object/from16 v6, p5

    .line 66
    .line 67
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v7, ", errorData size="

    .line 71
    .line 72
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    const/4 v14, 0x4

    .line 83
    const/4 v15, 0x0

    .line 84
    const-string v11, "HashTagViewModel"

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 91
    .line 92
    const-string v7, ""

    .line 93
    .line 94
    move-object v2, v10

    .line 95
    move-object/from16 v4, p5

    .line 96
    .line 97
    move-object v6, v7

    .line 98
    move/from16 v7, p3

    .line 99
    .line 100
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 109
    .line 110
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-nez v3, :cond_2

    .line 115
    .line 116
    new-instance v3, Landroidx/lifecycle/b0;

    .line 117
    .line 118
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_2
    check-cast v3, Landroidx/lifecycle/b0;

    .line 127
    .line 128
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method private final o(Ljava/lang/String;ILjava/util/Set;ZLcom/tn/lib/net/bean/BaseDto;)V
    .locals 6

    .line 1
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "0"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    move-object v5, p5

    .line 24
    check-cast v5, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    move v2, p2

    .line 29
    move-object v3, p3

    .line 30
    move v4, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/hashtag/HashTagViewModel;->p(Ljava/lang/String;ILjava/util/Set;ZLcom/transsion/ugcvideodetail/api/bean/UGCContentList;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 36
    .line 37
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "loadHashTagList failed: code="

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", msg="

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x1

    .line 71
    const-string v2, "HashTagViewModel"

    .line 72
    .line 73
    invoke-virtual {p2, v2, v0, v1}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-nez p2, :cond_1

    .line 81
    .line 82
    const-string p2, ""

    .line 83
    .line 84
    :cond_1
    move-object v4, p2

    .line 85
    invoke-virtual {p5}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-nez p2, :cond_2

    .line 90
    .line 91
    const-string p2, "-1"

    .line 92
    .line 93
    :cond_2
    move-object v5, p2

    .line 94
    move-object v0, p0

    .line 95
    move-object v1, p1

    .line 96
    move-object v2, p3

    .line 97
    move v3, p4

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/hashtag/HashTagViewModel;->n(Ljava/lang/String;Ljava/util/Set;ZLjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method private final p(Ljava/lang/String;ILjava/util/Set;ZLcom/transsion/ugcvideodetail/api/bean/UGCContentList;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move/from16 v8, p4

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getItems()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_1
    check-cast v2, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 40
    .line 41
    invoke-direct {p0, v4}, Lcom/transsion/home/hashtag/HashTagViewModel;->k(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;)Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-eqz p5, :cond_4

    .line 52
    .line 53
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v5, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->l:Ljava/util/Map;

    .line 76
    .line 77
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v7, "loadHashTagList success, tabSort="

    .line 92
    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v7, ", page="

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move/from16 v7, p2

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v7, ", size="

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, ", hasMore="

    .line 118
    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    const/4 v13, 0x4

    .line 130
    const/4 v14, 0x0

    .line 131
    const-string v10, "HashTagViewModel"

    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    move-object v9, v4

    .line 135
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v2, p3

    .line 139
    .line 140
    invoke-direct {p0, v3, v2, v8}, Lcom/transsion/home/hashtag/HashTagViewModel;->i(Ljava/util/List;Ljava/util/Set;Z)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v6, "loadHashTagList: finalData size="

    .line 154
    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    const-string v10, "HashTagViewModel"

    .line 166
    .line 167
    invoke-static/range {v9 .. v14}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 171
    .line 172
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-nez v3, :cond_5

    .line 177
    .line 178
    new-instance v3, Landroidx/lifecycle/b0;

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    :cond_5
    move-object v9, v3

    .line 188
    check-cast v9, Landroidx/lifecycle/b0;

    .line 189
    .line 190
    new-instance v10, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 191
    .line 192
    const-string v4, "0"

    .line 193
    .line 194
    const-string v6, ""

    .line 195
    .line 196
    const-string v3, ""

    .line 197
    .line 198
    move-object v2, v10

    .line 199
    move/from16 v7, p4

    .line 200
    .line 201
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v10}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    if-eqz v8, :cond_7

    .line 208
    .line 209
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 210
    .line 211
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    if-nez v3, :cond_6

    .line 216
    .line 217
    new-instance v3, Landroidx/lifecycle/b0;

    .line 218
    .line 219
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    :cond_6
    check-cast v3, Landroidx/lifecycle/b0;

    .line 228
    .line 229
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-virtual {v3, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_7
    return-void
.end method

.method private final t(Ljava/lang/String;Z)V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v7, Lcom/transsion/home/hashtag/HashTagViewModel;->k:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    move v3, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget-object v0, v7, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Set;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_1
    move-object v4, v0

    .line 39
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v5, "loadHashTagList: start, tabSort="

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ", page="

    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ", isRefresh="

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move/from16 v5, p2

    .line 72
    .line 73
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v6, ", selectedTags="

    .line 77
    .line 78
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const/4 v12, 0x4

    .line 89
    const/4 v13, 0x0

    .line 90
    const-string v9, "HashTagViewModel"

    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 101
    .line 102
    .line 103
    move-result-object v15

    .line 104
    new-instance v17, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    move-object/from16 v0, v17

    .line 108
    .line 109
    move-object/from16 v1, p0

    .line 110
    .line 111
    move-object/from16 v2, p1

    .line 112
    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/hashtag/HashTagViewModel$loadHashTagList$1;-><init>(Lcom/transsion/home/hashtag/HashTagViewModel;Ljava/lang/String;ILjava/util/Set;ZLkotlin/coroutines/Continuation;)V

    .line 114
    .line 115
    .line 116
    const/16 v18, 0x2

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    const/16 v16, 0x0

    .line 121
    .line 122
    invoke-static/range {v14 .. v19}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private final z(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroidx/lifecycle/b0;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    check-cast v1, Landroidx/lifecycle/b0;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/List;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/util/Set;

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v3, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 56
    .line 57
    check-cast v3, Ljava/util/Collection;

    .line 58
    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    new-instance v2, Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 69
    .line 70
    sget-object v5, Lcom/transsion/home/hashtag/model/HashTagItemType;->TAGS:Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 73
    .line 74
    check-cast p1, Ljava/lang/Iterable;

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const/16 v11, 0x38

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v4, v2

    .line 87
    invoke-direct/range {v4 .. v12}, Lcom/transsion/home/hashtag/model/HashTagItem;-><init>(Lcom/transsion/home/hashtag/model/HashTagItemType;Ljava/util/List;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_0
    if-nez v2, :cond_6

    .line 91
    .line 92
    :goto_1
    move-object v5, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_6
    move-object p1, v0

    .line 95
    check-cast p1, Ljava/util/Collection;

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_7

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Lcom/transsion/home/hashtag/model/HashTagItem;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/transsion/home/hashtag/model/HashTagItem;->getType()Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    sget-object v4, Lcom/transsion/home/hashtag/model/HashTagItemType;->TAGS:Lcom/transsion/home/hashtag/model/HashTagItemType;

    .line 115
    .line 116
    if-ne v3, v4, :cond_7

    .line 117
    .line 118
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    check-cast v0, Ljava/lang/Iterable;

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->d0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/Collection;

    .line 133
    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    goto :goto_1

    .line 157
    :goto_2
    new-instance p1, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 158
    .line 159
    const-string v6, ""

    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    const-string v3, ""

    .line 163
    .line 164
    const-string v4, "0"

    .line 165
    .line 166
    move-object v2, p1

    .line 167
    invoke-direct/range {v2 .. v7}, Lcom/transsion/home/bean/RefreshBaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "tabSort"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->k:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "refresh: tabSort="

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", reset page to 1"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x0

    .line 42
    const-string v4, "HashTagViewModel"

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    new-instance v2, Landroidx/lifecycle/b0;

    .line 57
    .line 58
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-direct {v2, v3}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_0
    check-cast v2, Landroidx/lifecycle/b0;

    .line 67
    .line 68
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1, v1}, Lcom/transsion/home/hashtag/HashTagViewModel;->t(Ljava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "tabSort"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->l:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    :goto_0
    return p1
.end method

.method public final r(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/util/List;ILjava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->e:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    move-object/from16 v7, p2

    .line 17
    .line 18
    check-cast v7, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance v8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-eqz v9, :cond_4

    .line 34
    .line 35
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    move-object v10, v9

    .line 40
    check-cast v10, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 41
    .line 42
    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    if-eqz v10, :cond_2

    .line 47
    .line 48
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-nez v10, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v10, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    move v10, v5

    .line 58
    :goto_2
    if-nez v10, :cond_0

    .line 59
    .line 60
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    move-object v8, v6

    .line 65
    :cond_4
    iput-object v8, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->f:Ljava/util/List;

    .line 66
    .line 67
    iput v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->h:I

    .line 68
    .line 69
    iput-object v3, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->i:Ljava/lang/String;

    .line 70
    .line 71
    const-string v7, "ForYou"

    .line 72
    .line 73
    iput-object v7, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 76
    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move-object v1, v6

    .line 85
    :goto_3
    if-eqz p2, :cond_6

    .line 86
    .line 87
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v10, "init: hashTag="

    .line 101
    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", hashTags size="

    .line 109
    .line 110
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", tabId="

    .line 117
    .line 118
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", ugcVideoId="

    .line 125
    .line 126
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    const/4 v12, 0x4

    .line 137
    const/4 v13, 0x0

    .line 138
    const-string v9, "HashTagViewModel"

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 145
    .line 146
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->b:Landroid/app/Application;

    .line 147
    .line 148
    sget v3, Lcom/transsion/home/R$string;->item_tab_hash_tag_for_you:I

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v3, "getString(...)"

    .line 155
    .line 156
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v7, v2, v5}, Lcom/transsion/home/hashtag/model/HashTagTab;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 163
    .line 164
    iget-object v6, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->b:Landroid/app/Application;

    .line 165
    .line 166
    sget v7, Lcom/transsion/home/R$string;->item_tab_hash_tag_most_viewed:I

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v9, "MostViewed"

    .line 176
    .line 177
    move-object v8, v2

    .line 178
    invoke-direct/range {v8 .. v13}, Lcom/transsion/home/hashtag/model/HashTagTab;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    .line 180
    .line 181
    new-instance v6, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 182
    .line 183
    iget-object v7, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->b:Landroid/app/Application;

    .line 184
    .line 185
    sget v8, Lcom/transsion/home/R$string;->item_tab_hash_tag_new:I

    .line 186
    .line 187
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/16 v18, 0x4

    .line 195
    .line 196
    const/16 v19, 0x0

    .line 197
    .line 198
    const-string v15, "New"

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    move-object v14, v6

    .line 203
    move-object/from16 v16, v7

    .line 204
    .line 205
    invoke-direct/range {v14 .. v19}, Lcom/transsion/home/hashtag/model/HashTagTab;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 206
    .line 207
    .line 208
    const/4 v3, 0x3

    .line 209
    new-array v3, v3, [Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 210
    .line 211
    aput-object v1, v3, v4

    .line 212
    .line 213
    aput-object v2, v3, v5

    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    aput-object v6, v3, v1

    .line 217
    .line 218
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iput-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->d:Ljava/util/List;

    .line 223
    .line 224
    check-cast v1, Ljava/lang/Iterable;

    .line 225
    .line 226
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_7

    .line 235
    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 241
    .line 242
    iget-object v3, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 243
    .line 244
    invoke-virtual {v2}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 249
    .line 250
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_7
    return-void
.end method

.method public final s(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3

    .line 1
    const-string v0, "tabSort"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/lifecycle/b0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 24
    .line 25
    return-object v1
.end method

.method public final u(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "tabSort"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/home/hashtag/HashTagViewModel;->q(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "loadMore: no more data, tabSort="

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v5, 0x4

    .line 32
    const/4 v6, 0x0

    .line 33
    const-string v2, "HashTagViewModel"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->k:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v0, v1

    .line 57
    :goto_0
    add-int/2addr v0, v1

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->k:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "loadMore: tabSort="

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", page="

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/4 v7, 0x4

    .line 95
    const/4 v8, 0x0

    .line 96
    const-string v4, "HashTagViewModel"

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/transsion/home/hashtag/HashTagViewModel;->t(Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final v(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3

    .line 1
    const-string v0, "tabSort"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroidx/lifecycle/b0;

    .line 15
    .line 16
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 25
    .line 26
    return-object v1
.end method

.method public final w(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "tabSort"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "onTabSelected: tabSort="

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, ", previous="

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x4

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, "HashTagViewModel"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->d:Ljava/util/List;

    .line 48
    .line 49
    check-cast v2, Ljava/lang/Iterable;

    .line 50
    .line 51
    new-instance v3, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/16 v4, 0xa

    .line 54
    .line 55
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    move-object v5, v4

    .line 77
    check-cast v5, Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    const/4 v9, 0x3

    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static/range {v5 .. v10}, Lcom/transsion/home/hashtag/model/HashTagTab;->copy$default(Lcom/transsion/home/hashtag/model/HashTagTab;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/transsion/home/hashtag/model/HashTagTab;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iput-object v3, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->d:Ljava/util/List;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->m:Ljava/util/Map;

    .line 104
    .line 105
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v4, 0x0

    .line 110
    if-nez v3, :cond_1

    .line 111
    .line 112
    new-instance v3, Landroidx/lifecycle/b0;

    .line 113
    .line 114
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_1
    check-cast v3, Landroidx/lifecycle/b0;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/transsion/home/bean/RefreshBaseDto;

    .line 127
    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    move-object v4, v2

    .line 135
    check-cast v4, Ljava/util/List;

    .line 136
    .line 137
    :cond_2
    move-object v2, v4

    .line 138
    check-cast v2, Ljava/util/Collection;

    .line 139
    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 150
    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v3, "onTabSelected: data exists, size="

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    const/4 v9, 0x4

    .line 173
    const/4 v10, 0x0

    .line 174
    const-string v6, "HashTagViewModel"

    .line 175
    .line 176
    const/4 v8, 0x0

    .line 177
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    :goto_1
    sget-object v11, Lwf/a;->a:Lwf/a$a;

    .line 182
    .line 183
    const/4 v15, 0x4

    .line 184
    const/16 v16, 0x0

    .line 185
    .line 186
    const-string v12, "HashTagViewModel"

    .line 187
    .line 188
    const-string v13, "onTabSelected: no data, start loading"

    .line 189
    .line 190
    const/4 v14, 0x0

    .line 191
    invoke-static/range {v11 .. v16}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->n:Ljava/util/Map;

    .line 195
    .line 196
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-nez v3, :cond_5

    .line 201
    .line 202
    new-instance v3, Landroidx/lifecycle/b0;

    .line 203
    .line 204
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-direct {v3, v4}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_5
    check-cast v3, Landroidx/lifecycle/b0;

    .line 213
    .line 214
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {v3, v2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p0 .. p1}, Lcom/transsion/home/hashtag/HashTagViewModel;->A(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :goto_2
    return-void
.end method

.method public final x(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "tag"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v3, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Set;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    :cond_0
    move-object v3, v2

    .line 28
    check-cast v3, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    move-object v6, v4

    .line 46
    check-cast v6, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move-object v4, v5

    .line 64
    :goto_0
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 65
    .line 66
    const-string v3, ", current selected="

    .line 67
    .line 68
    const-string v6, ", tabSort="

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 76
    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v4, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v10, "onTagClicked: unselect tag="

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    const/4 v11, 0x4

    .line 117
    const/4 v12, 0x0

    .line 118
    const-string v8, "HashTagViewModel"

    .line 119
    .line 120
    const/4 v10, 0x0

    .line 121
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v4, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v9, "onTagClicked: select tag="

    .line 146
    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    const/16 v17, 0x4

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    const-string v14, "HashTagViewModel"

    .line 174
    .line 175
    const/16 v16, 0x0

    .line 176
    .line 177
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :goto_1
    iget-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->j:Ljava/util/Map;

    .line 181
    .line 182
    iget-object v3, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->g:Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/transsion/home/hashtag/HashTagViewModel;->z(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->o:Lkotlinx/coroutines/t1;

    .line 193
    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    invoke-static {v1, v5, v2, v5}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_4
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 201
    .line 202
    const/4 v10, 0x4

    .line 203
    const/4 v11, 0x0

    .line 204
    const-string v7, "HashTagViewModel"

    .line 205
    .line 206
    const-string v8, "onTagClicked: cancel previous debounce job, will refresh after 700ms"

    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    new-instance v15, Lcom/transsion/home/hashtag/HashTagViewModel$onTagClicked$1;

    .line 217
    .line 218
    invoke-direct {v15, v0, v5}, Lcom/transsion/home/hashtag/HashTagViewModel$onTagClicked$1;-><init>(Lcom/transsion/home/hashtag/HashTagViewModel;Lkotlin/coroutines/Continuation;)V

    .line 219
    .line 220
    .line 221
    const/16 v16, 0x3

    .line 222
    .line 223
    const/16 v17, 0x0

    .line 224
    .line 225
    const/4 v13, 0x0

    .line 226
    const/4 v14, 0x0

    .line 227
    invoke-static/range {v12 .. v17}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iput-object v1, v0, Lcom/transsion/home/hashtag/HashTagViewModel;->o:Lkotlinx/coroutines/t1;

    .line 232
    .line 233
    return-void
.end method

.method public final y(Ljava/lang/String;)Lkotlin/Pair;
    .locals 9

    .line 1
    const-string v0, "raw"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/o;->f()Lcom/google/gson/Gson;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-class v2, Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;->getMainHashtag()Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;->toUgcTag()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_0
    move-object v1, v0

    .line 38
    :goto_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/home/hashtag/HashTagViewModel$HashtagPayload;->getSubHashtag()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    const/16 v3, 0xa

    .line 51
    .line 52
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/transsion/home/hashtag/HashTagViewModel$DeeplinkTag;->toUgcTag()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-object v2, v0

    .line 84
    :cond_2
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 85
    .line 86
    const-string v4, "HashTagViewModel"

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTitle()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object p1, v0

    .line 96
    :goto_2
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move-object v5, v0

    .line 108
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v7, "parse hashtag json success: main="

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, ", subs="

    .line 122
    .line 123
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    const/4 v7, 0x4

    .line 134
    const/4 v8, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance p1, Lkotlin/Pair;

    .line 140
    .line 141
    invoke-direct {p1, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    goto :goto_5

    .line 149
    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 150
    .line 151
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v4, "parse hashtag json failed: "

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const/4 v3, 0x1

    .line 189
    const-string v4, "HashTagViewModel"

    .line 190
    .line 191
    invoke-virtual {v2, v4, v1, v3}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_6

    .line 199
    .line 200
    move-object p1, v0

    .line 201
    :cond_6
    check-cast p1, Lkotlin/Pair;

    .line 202
    .line 203
    if-nez p1, :cond_7

    .line 204
    .line 205
    new-instance p1, Lkotlin/Pair;

    .line 206
    .line 207
    invoke-direct {p1, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_7
    return-object p1
.end method
