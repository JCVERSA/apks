.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

.field final synthetic c:D

.field final synthetic d:D


# direct methods
.method constructor <init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;DD)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->c:D

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->d:D

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a:Z

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->setRefresh(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 21
    .line 22
    iget-wide v12, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->c:D

    .line 23
    .line 24
    iget-wide v14, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->d:D

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    move-object v10, v3

    .line 41
    check-cast v10, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 42
    .line 43
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLat()Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLon()Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    sget-object v3, Lij/s;->a:Lij/s;

    .line 56
    .line 57
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLat()Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    float-to-double v8, v4

    .line 69
    invoke-virtual {v10}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLon()Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    float-to-double v6, v4

    .line 81
    move-wide v4, v12

    .line 82
    move-wide/from16 v16, v6

    .line 83
    .line 84
    move-wide v6, v14

    .line 85
    move-object/from16 p2, v2

    .line 86
    .line 87
    move-object v2, v10

    .line 88
    move-wide/from16 v10, v16

    .line 89
    .line 90
    invoke-virtual/range {v3 .. v11}, Lij/s;->a(DDDD)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setDistanceStr(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move-object/from16 p2, v2

    .line 99
    .line 100
    :goto_1
    move-object/from16 v2, p2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object v2, v0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->b:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->k(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)Landroidx/lifecycle/b0;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object v1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getPostNearby$1$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
