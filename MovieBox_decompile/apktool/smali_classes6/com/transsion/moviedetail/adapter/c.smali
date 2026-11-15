.class public final Lcom/transsion/moviedetail/adapter/c;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/adapter/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0007\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0015B1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0012\u001a\u00020\u00082\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/moviedetail/adapter/c;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "Lt6/i;",
        "Lcom/transsion/moviedetail/fragment/ForYouFragment;",
        "fragment",
        "",
        "pageName",
        "",
        "spanCount",
        "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "movieDetailViewModel",
        "subject",
        "<init>",
        "(Lcom/transsion/moviedetail/fragment/ForYouFragment;Ljava/lang/String;ILcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "",
        "data",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "G",
        "a",
        "MovieDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final G:Lcom/transsion/moviedetail/adapter/c$a;

.field public static final H:I = 0x3ea

.field public static final I:I = -0x26ad


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/moviedetail/adapter/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/adapter/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/moviedetail/adapter/c;->G:Lcom/transsion/moviedetail/adapter/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;Ljava/lang/String;ILcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 2

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "movieDetailViewModel"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;

    .line 22
    .line 23
    invoke-direct {v0, p5, p3}, Lcom/transsion/moviedetail/adapter/ForYouSubjectProvider;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 27
    .line 28
    .line 29
    new-instance p3, Lcom/transsion/moviedetail/adapter/i;

    .line 30
    .line 31
    invoke-direct {p3, p1, p2, p4}, Lcom/transsion/moviedetail/adapter/i;-><init>(Lcom/transsion/moviedetail/fragment/ForYouFragment;Ljava/lang/String;Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method protected N1(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/16 p2, -0x26ad

    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/16 p2, 0x3ea

    .line 29
    .line 30
    :goto_1
    return p2
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt6/h;->a(Lt6/i;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lt6/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
