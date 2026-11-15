.class public final Lcom/transsion/ugcvideodetail/hepler/g;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ugcvideodetail/hepler/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/g;->a:Lcom/transsion/ugcvideodetail/hepler/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/ugcvideodetail/hepler/g;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lbj/b;
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v8, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v8, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v9, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v10, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v10, p7

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v0, v0, 0x80

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    move-object v11, v2

    .line 33
    goto :goto_3

    .line 34
    :cond_3
    move-object/from16 v11, p8

    .line 35
    .line 36
    :goto_3
    move-object v3, p0

    .line 37
    move-object v4, p1

    .line 38
    move-object v5, p2

    .line 39
    move-object v6, p3

    .line 40
    move-object/from16 v7, p4

    .line 41
    .line 42
    invoke-virtual/range {v3 .. v11}, Lcom/transsion/ugcvideodetail/hepler/g;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lbj/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lbj/b;
    .locals 11

    .line 1
    move-object v0, p1

    .line 2
    const-string v1, "recyclerView"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "viewModel"

    .line 8
    .line 9
    move-object v4, p2

    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "getItemAtPosition"

    .line 14
    .line 15
    move-object v3, p4

    .line 16
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lbj/b;

    .line 20
    .line 21
    new-instance v10, Lcom/transsion/ugcvideodetail/hepler/g$a;

    .line 22
    .line 23
    move-object v2, v10

    .line 24
    move-object v5, p3

    .line 25
    move-object/from16 v6, p5

    .line 26
    .line 27
    move-object/from16 v7, p6

    .line 28
    .line 29
    move-object/from16 v8, p7

    .line 30
    .line 31
    move-object/from16 v9, p8

    .line 32
    .line 33
    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/hepler/g$a;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    const/4 v3, 0x0

    .line 38
    const v4, 0x3f19999a    # 0.6f

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    move-object p2, v1

    .line 43
    move p3, v4

    .line 44
    move-object p4, v10

    .line 45
    move/from16 p5, v5

    .line 46
    .line 47
    move/from16 p6, v2

    .line 48
    .line 49
    move-object/from16 p7, v3

    .line 50
    .line 51
    invoke-direct/range {p2 .. p7}, Lbj/b;-><init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    invoke-virtual {v1, v2}, Lbj/b;->n(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 59
    .line 60
    .line 61
    return-object v1
.end method

.method public final c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    .line 6
    .line 7
    move-object v1, p3

    .line 8
    move-object v2, p1

    .line 9
    move v3, p2

    .line 10
    move-object v4, p4

    .line 11
    move-object v5, p5

    .line 12
    move-object v6, p6

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/hepler/h;->f(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
