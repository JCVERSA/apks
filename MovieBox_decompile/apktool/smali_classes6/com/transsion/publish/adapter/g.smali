.class public final Lcom/transsion/publish/adapter/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/publish/adapter/g$a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/adapter/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/adapter/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/adapter/g;->e:Lcom/transsion/publish/adapter/g$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v1, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    mul-int/lit8 v1, v1, 0x5

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    div-int/lit8 v0, v0, 0x4

    .line 25
    .line 26
    iput v0, p0, Lcom/transsion/publish/adapter/g;->c:I

    .line 27
    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    iget v1, p0, Lcom/transsion/publish/adapter/g;->c:I

    .line 31
    .line 32
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/publish/adapter/g;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->q(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/g;->p(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->k(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-eqz p2, :cond_4

    .line 12
    .line 13
    const-string v0, "0/9"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p2, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    check-cast p2, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move v1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p2, "/9"

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sub-int/2addr v2, v0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->f()Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    new-instance v0, Lcom/transsion/publish/adapter/f;

    .line 120
    .line 121
    invoke-direct {v0, p1, p0}, Lcom/transsion/publish/adapter/f;-><init>(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method private static final k(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/c;->f()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object p2, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    rsub-int/lit8 p1, p1, 0x9

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, p0, v1, p1, v0}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private final o(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->h()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sget v2, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 37
    .line 38
    new-instance v1, Lcom/transsion/publish/adapter/d;

    .line 39
    .line 40
    invoke-direct {v1, p0, p1, p3}, Lcom/transsion/publish/adapter/d;-><init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->g()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance p3, Lcom/transsion/publish/adapter/e;

    .line 53
    .line 54
    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/e;-><init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method private static final p(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    sget-object p0, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, v2}, Lcom/transsion/publish/n;->f(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    .line 15
    .line 16
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string p0, "getContext(...)"

    .line 23
    .line 24
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    const/16 v5, 0x9

    .line 29
    .line 30
    move v3, p2

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/publish/ui/GalleryActivity$a;->a(Landroid/content/Context;Ljava/util/List;III)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final q(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/g;->t(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 10
    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    .line 13
    .line 14
    return-void
.end method

.method private final t(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljo/b;

    .line 7
    .line 8
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1, v1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v2, "getName(...)"

    .line 34
    .line 35
    const-class v3, Ljo/b;

    .line 36
    .line 37
    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v7, 0x1

    .line 50
    if-ne v1, v7, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/16 v8, 0x8

    .line 74
    .line 75
    if-ne v1, v8, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Lcom/transsion/publish/api/PhotoEntity;

    .line 96
    .line 97
    invoke-virtual {v8}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_1

    .line 102
    .line 103
    move v0, v7

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-nez v0, :cond_3

    .line 106
    .line 107
    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v7}, Lcom/transsion/publish/api/PhotoEntity;->setAdd(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_3
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1, p1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 153
    .line 154
    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, p1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 168
    .line 169
    .line 170
    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final l()Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 7
    .line 8
    check-cast v1, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/publish/adapter/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->r(Lcom/transsion/publish/adapter/c;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public r(Lcom/transsion/publish/adapter/c;I)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/adapter/g;->j(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/publish/adapter/g;->o(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eq p2, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/publish/adapter/c;

    .line 14
    .line 15
    invoke-direct {p1, v1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget p2, Lcom/transsion/publish/R$layout;->item_publish_add_image:I

    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Lcom/transsion/publish/adapter/c;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget p2, Lcom/transsion/publish/R$layout;->item_publish_image:I

    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/transsion/publish/adapter/c;

    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
