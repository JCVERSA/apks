.class public final Lcom/yandex/mobile/ads/impl/hy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qw;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Le74;Lcom/yandex/mobile/ads/impl/lx;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/yandex/mobile/ads/impl/qw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;",
            "Le74;",
            "Lcom/yandex/mobile/ads/impl/lx;",
            "Landroidx/recyclerview/widget/LinearLayoutManager;",
            "Lcom/yandex/mobile/ads/impl/qw;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAction"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "layoutManager"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "debugPanelAdapter"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hy;->a:Lcom/yandex/mobile/ads/impl/qw;

    sget p3, Lcom/yandex/mobile/ads/R$id;->toolbar_navigation_button:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    sget v0, Lcom/yandex/mobile/ads/R$id;->toolbar_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hy;->b:Landroid/widget/TextView;

    sget v0, Lcom/yandex/mobile/ads/R$id;->loading_view:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hy;->c:Landroid/widget/ProgressBar;

    sget p0, Lcom/yandex/mobile/ads/R$id;->recycler_view:I

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/yandex/mobile/ads/impl/mx;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/mx;-><init>()V

    new-instance v0, Liid;

    invoke-direct {v0, p2}, Liid;-><init>(Le74;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private static final a(Le74;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "$onAction"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/yandex/mobile/ads/impl/dy$d;->a:Lcom/yandex/mobile/ads/impl/dy$d;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Le74;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/hy;->a(Le74;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gy;)V
    .locals 2

    .line 3
    const-string v0, "state"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hy;->a:Lcom/yandex/mobile/ads/impl/qw;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hy;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gy;->c()Ljava/util/List;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/hy;->a:Lcom/yandex/mobile/ads/impl/qw;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hy;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hy;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gy;->a()Lcom/yandex/mobile/ads/impl/fx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fx;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
