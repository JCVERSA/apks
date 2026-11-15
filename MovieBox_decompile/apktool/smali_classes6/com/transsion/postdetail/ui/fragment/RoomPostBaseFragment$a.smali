.class public final Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lbj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 10

    .line 1
    iget-object p4, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment$a;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    .line 5
    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMAdapter()Lcom/transsion/postdetail/ui/adapter/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$checkShowRefreshPopGuide(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->b0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->access$getMExposureList(Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;)Ljava/util/HashSet;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    :goto_0
    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMPageFrom()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->pageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->subpageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p4}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    move v5, p1

    .line 72
    move-wide v6, p2

    .line 73
    move-object v8, v0

    .line 74
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/postdetail/helper/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    instance-of p1, p4, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    check-cast p4, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;

    .line 82
    .line 83
    invoke-virtual {p4, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostExploreFragment;->deleteCacheRoom(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :goto_3
    return-void
.end method
