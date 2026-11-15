.class public final Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;
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
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p6, :cond_1

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    move-object p4, v0

    .line 18
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;
    .locals 3

    .line 1
    const-string v0, "commentId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "POST_ITEM"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "comment_id"

    .line 18
    .line 19
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const-string v1, "PAGE_NAME"

    .line 24
    .line 25
    invoke-static {v1, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const-string v1, "page_from"

    .line 30
    .line 31
    invoke-static {v1, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    const/4 v1, 0x4

    .line 36
    new-array v1, v1, [Lkotlin/Pair;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object p1, v1, v2

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    aput-object p2, v1, p1

    .line 43
    .line 44
    const/4 p1, 0x2

    .line 45
    aput-object p3, v1, p1

    .line 46
    .line 47
    const/4 p1, 0x3

    .line 48
    aput-object p4, v1, p1

    .line 49
    .line 50
    invoke-static {v1}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method
