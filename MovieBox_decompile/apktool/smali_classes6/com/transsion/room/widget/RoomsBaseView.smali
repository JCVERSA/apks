.class public abstract Lcom/transsion/room/widget/RoomsBaseView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"

# interfaces
.implements Lep/e;
.implements Lqx/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lep/e;",
        "Lqx/b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005B\'\u0008\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008!\u0010\u0010J\u000f\u0010\"\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\"\u0010\u0010J\u0015\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u001d\u0010(\u001a\u00020\u000e2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0%H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010-\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020*H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u00082\u0010\u0010J\u000f\u00103\u001a\u00020\u000eH\u0004\u00a2\u0006\u0004\u00083\u0010\u0010J\u001f\u00106\u001a\u00020\u000e2\u0006\u00104\u001a\u00020&2\u0006\u00105\u001a\u00020\nH\u0004\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u000eH&\u00a2\u0006\u0004\u00088\u0010\u0010J\u0011\u0010:\u001a\u0004\u0018\u000109H&\u00a2\u0006\u0004\u0008:\u0010;J\u0011\u0010=\u001a\u0004\u0018\u00010<H&\u00a2\u0006\u0004\u0008=\u0010>R$\u0010E\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u0018\u0010Q\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010NR\u001a\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\n0R8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u001d\u0010[\u001a\u0004\u0018\u00010V8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008W\u0010X\u001a\u0004\u0008Y\u0010ZR\u001b\u0010`\u001a\u00020\\8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010X\u001a\u0004\u0008^\u0010_R\"\u0010h\u001a\u00020a8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010g\u00a8\u0006i"
    }
    d2 = {
        "Lcom/transsion/room/widget/RoomsBaseView;",
        "Lf4/a;",
        "T",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lep/e;",
        "Lqx/b;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "r",
        "()V",
        "q",
        "position",
        "C",
        "(I)V",
        "s",
        "",
        "p",
        "()Z",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "x",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "user",
        "onLogin",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "getView",
        "()Lcom/transsion/room/widget/RoomsBaseView;",
        "",
        "Lcom/transsion/moviedetailapi/bean/RoomItem;",
        "dataList",
        "setList",
        "(Ljava/util/List;)V",
        "",
        "pageName",
        "moduleName",
        "setReportName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "title",
        "updateTitle",
        "(Ljava/lang/String;)V",
        "B",
        "A",
        "item",
        "index",
        "z",
        "(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V",
        "initRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "Landroid/widget/TextView;",
        "getTitleView",
        "()Landroid/widget/TextView;",
        "a",
        "Lf4/a;",
        "getMViewBinding",
        "()Lf4/a;",
        "setMViewBinding",
        "(Lf4/a;)V",
        "mViewBinding",
        "b",
        "Ljava/lang/Integer;",
        "mCurJoinPosition",
        "Lcom/tn/lib/view/RoomJoinAnimationView;",
        "c",
        "Lcom/tn/lib/view/RoomJoinAnimationView;",
        "mCurJoinView",
        "d",
        "Ljava/lang/String;",
        "mPageName",
        "e",
        "mModuleName",
        "",
        "f",
        "Ljava/util/Set;",
        "mExposedItems",
        "Lqx/a;",
        "g",
        "Lkotlin/Lazy;",
        "getMLoginApi",
        "()Lqx/a;",
        "mLoginApi",
        "Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
        "h",
        "getMDetailViewModel",
        "()Lcom/transsion/room/viewmodel/RoomDetailViewModel;",
        "mDetailViewModel",
        "Lcom/transsion/room/adapter/RecommendRoomsAdapter;",
        "i",
        "Lcom/transsion/room/adapter/RecommendRoomsAdapter;",
        "getMAdapter",
        "()Lcom/transsion/room/adapter/RecommendRoomsAdapter;",
        "setMAdapter",
        "(Lcom/transsion/room/adapter/RecommendRoomsAdapter;)V",
        "mAdapter",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:Lf4/a;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/tn/lib/view/RoomJoinAnimationView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/Set;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->f:Ljava/util/Set;

    .line 6
    new-instance p2, Lcom/transsion/room/widget/d;

    invoke-direct {p2}, Lcom/transsion/room/widget/d;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->g:Lkotlin/Lazy;

    .line 7
    new-instance p2, Lcom/transsion/room/widget/e;

    invoke-direct {p2, p1}, Lcom/transsion/room/widget/e;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->h:Lkotlin/Lazy;

    .line 8
    new-instance p2, Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    invoke-direct {p2}, Lcom/transsion/room/adapter/RecommendRoomsAdapter;-><init>()V

    .line 9
    sget p3, Lcom/transsion/room/R$id;->v_join:I

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    .line 10
    new-instance p3, Lcom/transsion/room/widget/f;

    invoke-direct {p3, p0}, Lcom/transsion/room/widget/f;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lr6/b;)V

    .line 11
    new-instance p3, Lcom/transsion/room/widget/g;

    invoke-direct {p3, p0}, Lcom/transsion/room/widget/g;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 12
    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 13
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 14
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMDetailViewModel()Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->s()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance p3, Lcom/transsion/room/widget/h;

    invoke-direct {p3, p0}, Lcom/transsion/room/widget/h;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    new-instance v0, Lcom/transsion/room/widget/RoomsBaseView$b;

    invoke-direct {v0, p3}, Lcom/transsion/room/widget/RoomsBaseView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->x(Landroidx/fragment/app/FragmentActivity;)V

    .line 16
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->r()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final C(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->f:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->f:Ljava/util/Set;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/room/widget/RoomsBaseView;->e:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    sget-object v2, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v1, p1}, Lcom/transsion/room/helper/l;->e(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public static final synthetic access$handleExposureEvent(Lcom/transsion/room/widget/RoomsBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getMDetailViewModel()Lcom/transsion/room/viewmodel/RoomDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMLoginApi()Lqx/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;->t(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/room/widget/RoomsBaseView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/widget/RoomsBaseView;->setList$lambda$8(Lcom/transsion/room/widget/RoomsBaseView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->o(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/room/widget/RoomsBaseView;->w()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Landroid/content/Context;)Lcom/transsion/room/viewmodel/RoomDetailViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/room/widget/RoomsBaseView;->v(Landroid/content/Context;)Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/room/widget/RoomsBaseView;->y(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/widget/RoomsBaseView;->u(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsion/moviedetailapi/bean/RoomNet;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/tn/lib/view/RoomJoinStatus;->JOIN:Lcom/tn/lib/view/RoomJoinStatus;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/tn/lib/view/RoomJoinStatus;->JOINED:Lcom/tn/lib/view/RoomJoinStatus;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->b:Ljava/lang/Integer;

    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method private final p()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMLoginApi()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lqx/a;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMLoginApi()Lqx/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "getContext(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lqx/a;->k(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method private final q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    move-object v2, v0

    .line 37
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 38
    .line 39
    instance-of v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    instance-of v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_2
    const/4 v2, -0x1

    .line 59
    if-eq v1, v2, :cond_3

    .line 60
    .line 61
    if-eq v0, v2, :cond_3

    .line 62
    .line 63
    if-gt v1, v0, :cond_3

    .line 64
    .line 65
    :goto_3
    invoke-direct {p0, v1}, Lcom/transsion/room/widget/RoomsBaseView;->C(I)V

    .line 66
    .line 67
    .line 68
    if-eq v1, v0, :cond_3

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    return-void
.end method

.method private final r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/room/widget/RoomsBaseView$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/room/widget/RoomsBaseView$a;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final s()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tn/lib/view/RoomJoinAnimationView;->isLoading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->p()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->b:Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-gez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/room/widget/RoomsBaseView;->b:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 50
    .line 51
    sget-object v1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 52
    .line 53
    const/16 v2, 0x3e9

    .line 54
    .line 55
    const-wide/16 v3, 0x7d0

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    sget-object v1, Lyg/l;->a:Lyg/l;

    .line 65
    .line 66
    invoke-virtual {v1}, Lyg/l;->e()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 73
    .line 74
    sget v1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    sget-object v1, Lcom/tn/lib/view/RoomJoinStatus;->LOADING:Lcom/tn/lib/view/RoomJoinStatus;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/RoomJoinAnimationView;->setStatus(Lcom/tn/lib/view/RoomJoinStatus;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMDetailViewModel()Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Lcom/transsion/room/viewmodel/RoomDetailViewModel;->w(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v3, :cond_6

    .line 105
    .line 106
    sget-object v2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 107
    .line 108
    const/16 v9, 0x38

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    const-string v4, "join"

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    invoke-static/range {v2 .. v10}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_0
    return-void
.end method

.method private static final setList$lambda$8(Lcom/transsion/room/widget/RoomsBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final t(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-wide/16 v2, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of v0, p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getHasJoin()Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1, p3}, Lcom/transsion/room/widget/RoomsBaseView;->z(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->b:Ljava/lang/Integer;

    .line 62
    .line 63
    check-cast p2, Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->c:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->s()V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-void
.end method

.method private static final u(Lcom/transsion/room/widget/RoomsBaseView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/16 v1, 0x1f4

    .line 18
    .line 19
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p2, p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    check-cast p1, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-nez p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/transsion/room/widget/RoomsBaseView;->z(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static final v(Landroid/content/Context;)Lcom/transsion/room/viewmodel/RoomDetailViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 11
    .line 12
    .line 13
    const-class p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/transsion/room/viewmodel/RoomDetailViewModel;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final w()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final x(Landroidx/fragment/app/FragmentActivity;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/room/widget/j;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/room/widget/j;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p1

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final y(Lcom/transsion/room/widget/RoomsBaseView;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;
    .locals 4

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;->getGroupId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v1, -0x1

    .line 48
    :goto_1
    if-ltz v1, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/transsion/moviedetailapi/bean/RoomItem;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;->getJoin()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lcom/transsion/moviedetailapi/bean/RoomItem;->setHasJoin(Ljava/lang/Boolean;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object p0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;->getJoin()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method protected final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/room/widget/RoomsBaseView;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/transsion/room/helper/l;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "/room/home"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v1, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected final B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/room/widget/RoomsBaseView;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/transsion/room/helper/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "/room/list"

    .line 13
    .line 14
    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "index"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v0, v1, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected final getMAdapter()Lcom/transsion/room/adapter/RecommendRoomsAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMViewBinding()Lf4/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->a:Lf4/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
.end method

.method public abstract getTitleView()Landroid/widget/TextView;
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getView()Lcom/transsion/room/widget/RoomsBaseView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/transsion/room/widget/RoomsBaseView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/room/widget/RoomsBaseView<",
            "TT;>;"
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public abstract initRecyclerView()V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqx/a;->e(Lqx/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getMLoginApi()Lqx/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0}, Lqx/a;->j(Lqx/b;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/room/widget/RoomsBaseView;->s()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLogout()V
    .locals 0

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqx/b$a;->c(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/RoomItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/room/widget/i;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/transsion/room/widget/i;-><init>(Lcom/transsion/room/widget/RoomsBaseView;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected final setMAdapter(Lcom/transsion/room/adapter/RecommendRoomsAdapter;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 7
    .line 8
    return-void
.end method

.method protected final setMViewBinding(Lf4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->a:Lf4/a;

    .line 2
    .line 3
    return-void
.end method

.method public setReportName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "pageName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "moduleName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/room/widget/RoomsBaseView;->getTitleView()Landroid/widget/TextView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected final z(Lcom/transsion/moviedetailapi/bean/RoomItem;I)V
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/RoomItem;->setNewPostCount(Ljava/lang/Long;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/room/widget/RoomsBaseView;->i:Lcom/transsion/room/adapter/RecommendRoomsAdapter;

    .line 16
    .line 17
    invoke-virtual {v1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/transsion/room/widget/RoomsBaseView;->d:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/transsion/room/widget/RoomsBaseView;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p2, v1, p1}, Lcom/transsion/room/helper/l;->g(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/RoomItem;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string p2, "/room/detail"

    .line 32
    .line 33
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "id"

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, v0, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "need_start_room_home"

    .line 48
    .line 49
    instance-of v0, p0, Lcom/transsion/room/widget/TrendingRoomsView;

    .line 50
    .line 51
    invoke-virtual {p1, p2, v0}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/4 v0, 0x2

    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {p1, p2, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
