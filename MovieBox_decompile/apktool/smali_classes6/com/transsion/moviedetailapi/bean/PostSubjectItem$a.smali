.class public final Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 39

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 9
    .line 10
    move-object v2, v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCreatedAt()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isSubjectRate()Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getLink()Lcom/transsion/moviedetailapi/bean/Link;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStatus()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubjectRate()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v14

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUpdatedAt()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v16

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    .line 68
    .line 69
    .line 70
    move-result-object v17

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v18

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getItemType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v19

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBlur()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v20

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTran_ops()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v21

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isCache()Z

    .line 88
    .line 89
    .line 90
    move-result v22

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getBuiltIn()Z

    .line 92
    .line 93
    .line 94
    move-result v31

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHotComment()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 96
    .line 97
    .line 98
    move-result-object v35

    .line 99
    const/16 v37, 0x0

    .line 100
    .line 101
    const/16 v38, 0x0

    .line 102
    .line 103
    const/16 v23, 0x0

    .line 104
    .line 105
    const/16 v24, 0x0

    .line 106
    .line 107
    const/16 v25, 0x0

    .line 108
    .line 109
    const/16 v26, 0x0

    .line 110
    .line 111
    const/16 v27, 0x0

    .line 112
    .line 113
    const/16 v28, 0x0

    .line 114
    .line 115
    const/16 v29, 0x0

    .line 116
    .line 117
    const/16 v30, 0x0

    .line 118
    .line 119
    const/16 v32, 0x0

    .line 120
    .line 121
    const/16 v33, 0x0

    .line 122
    .line 123
    const/16 v34, 0x0

    .line 124
    .line 125
    const/high16 v36, -0x10100000

    .line 126
    .line 127
    invoke-direct/range {v2 .. v38}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method
