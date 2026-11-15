.class public final Lcom/transsion/postdetail/ui/adapter/favorite/b;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "source.java"

# interfaces
.implements Lt6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/adapter/favorite/b$a;,
        Lcom/transsion/postdetail/ui/adapter/favorite/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        ">;",
        "Lt6/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 !2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\"#B)\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000f\u001a\u00020\r2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/adapter/favorite/b;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "Lt6/i;",
        "",
        "data",
        "Lbj/b;",
        "exposureHelper",
        "",
        "showNumberTh",
        "<init>",
        "(Ljava/util/List;Lbj/b;Z)V",
        "",
        "",
        "position",
        "N1",
        "(Ljava/util/List;I)I",
        "Lcom/transsion/postdetail/ui/adapter/favorite/a;",
        "itemClickListener",
        "",
        "Q1",
        "(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "holder",
        "B0",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "G",
        "Lbj/b;",
        "H",
        "Z",
        "I",
        "Lcom/transsion/postdetail/ui/adapter/favorite/a;",
        "clickListener",
        "J",
        "a",
        "b",
        "PostDetail_psRelease"
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
.field public static final J:Lcom/transsion/postdetail/ui/adapter/favorite/b$a;

.field private static final K:Ljava/lang/String; = "UgcFavoriteFeedAdapter"

.field public static final L:I = 0x1


# instance fields
.field private final G:Lbj/b;

.field private final H:Z

.field private I:Lcom/transsion/postdetail/ui/adapter/favorite/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ui/adapter/favorite/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/adapter/favorite/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->J:Lcom/transsion/postdetail/ui/adapter/favorite/b$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lbj/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;",
            "Lbj/b;",
            "Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->G:Lbj/b;

    .line 4
    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->H:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lbj/b;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/adapter/favorite/b;-><init>(Ljava/util/List;Lbj/b;Z)V

    return-void
.end method


# virtual methods
.method public B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 8

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "\u66dd\u5149\u7684\u4f4d\u7f6eposition11: "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->G:Lbj/b;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v2, p1

    .line 44
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 45
    .line 46
    const/16 v6, 0x8

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v1 .. v7}, Lbj/b;->j(Lbj/b;Landroidx/recyclerview/widget/RecyclerView$m;IZZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method protected N1(Ljava/util/List;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string p2, "data"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public final Q1(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->I:Lcom/transsion/postdetail/ui/adapter/favorite/a;

    .line 2
    .line 3
    new-instance p1, Lcom/transsion/postdetail/ui/adapter/favorite/b$b;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->G:Lbj/b;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->H:Z

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Lcom/transsion/postdetail/ui/adapter/favorite/b$b;-><init>(Lbj/b;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/favorite/b;->I:Lcom/transsion/postdetail/ui/adapter/favorite/a;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ui/adapter/favorite/b$b;->C(Lcom/transsion/postdetail/ui/adapter/favorite/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->F1(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 18
    .line 19
    .line 20
    return-void
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

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/adapter/favorite/b;->B0(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
