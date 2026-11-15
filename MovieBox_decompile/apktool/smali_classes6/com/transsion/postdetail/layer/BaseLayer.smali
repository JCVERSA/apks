.class public abstract Lcom/transsion/postdetail/layer/BaseLayer;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/player/orplayer/f;

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private final e:Lkotlin/Lazy;

.field private f:Lcom/transsion/player/ui/ORPlayerView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/transsion/postdetail/layer/a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$2;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$3;

    .line 36
    .line 37
    invoke-direct {v3, v0, p1}, Lcom/transsion/postdetail/layer/BaseLayer$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->e:Lkotlin/Lazy;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final varargs F(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "flag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->h:Lcom/transsion/postdetail/layer/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    array-length v1, p2

    .line 16
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected final G()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final H()Lcom/transsion/player/orplayer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->b:Lcom/transsion/player/orplayer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final I()Lcom/transsion/player/ui/ORPlayerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->f:Lcom/transsion/player/ui/ORPlayerView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/BaseLayer;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final K(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public final L(Lcom/transsion/postdetail/layer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->h:Lcom/transsion/postdetail/layer/a;

    .line 2
    .line 3
    return-void
.end method

.method public M(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 7

    .line 1
    const-string v0, "orPlayer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "orPlayerView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "TAG"

    .line 16
    .line 17
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v3, "setPlayer----->"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->b:Lcom/transsion/player/orplayer/f;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->f:Lcom/transsion/player/ui/ORPlayerView;

    .line 31
    .line 32
    return-void
.end method

.method public final N(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 7

    .line 1
    const-string v0, "postId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "TAG"

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v3, "setPostData----->"

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->c:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/transsion/postdetail/layer/BaseLayer;->d:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 26
    .line 27
    return-void
.end method

.method protected final O(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected final P(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/layer/BaseLayer;->i:Z

    .line 2
    .line 3
    return-void
.end method
