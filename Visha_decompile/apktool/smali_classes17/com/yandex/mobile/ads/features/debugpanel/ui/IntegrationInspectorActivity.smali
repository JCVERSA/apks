.class public final Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;
.super Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity<",
        "Lcom/yandex/mobile/ads/impl/fp0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;",
        "Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;",
        "Lcom/yandex/mobile/ads/impl/fp0;",
        "<init>",
        "()V",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final d:Lyi5;

.field private final e:Lyi5;

.field private final f:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$a;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d:Lyi5;

    new-instance v0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$e;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->e:Lyi5;

    new-instance v0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$d;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$d;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->f:Lyi5;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/dx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d:Lyi5;

    .line 2
    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/dx;

    return-object p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->b()Lcom/yandex/mobile/ads/impl/ih2;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/fp0;

    sget-object p1, Lcom/yandex/mobile/ads/impl/dy$g;->a:Lcom/yandex/mobile/ads/impl/dy$g;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/dy;)V

    return-void
.end method

.method public static final b(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/fy;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/fy;

    return-object p0
.end method

.method public static final c(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/hy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->e:Lyi5;

    .line 2
    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hy;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)Lcom/yandex/mobile/ads/impl/fp0;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->b()Lcom/yandex/mobile/ads/impl/ih2;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/fp0;

    return-object p0
.end method

.method private final d()V
    .locals 2

    .line 3
    sget v0, Lcom/yandex/mobile/ads/R$id;->toolbar_share_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4
    new-instance v1, Ld35;

    invoke-direct {v1, p0}, Ld35;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->a(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Landroid/view/View;)V

    return-void
.end method

.method private final e()V
    .locals 8

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->a()Lnk1;

    move-result-object v6

    new-instance v3, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$b;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$b;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Lwh1;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    new-instance v3, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$c;

    invoke-direct {v3, p0, v7}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity$c;-><init>(Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;Lwh1;)V

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/mobile/ads/impl/jh2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/jh2<",
            "Lcom/yandex/mobile/ads/impl/fp0;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/dx;

    .line 4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/dx;->b()Lcom/yandex/mobile/ads/impl/jh2;

    move-result-object p0

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->b()Lcom/yandex/mobile/ads/impl/ih2;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/fp0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/dy$d;->a:Lcom/yandex/mobile/ads/impl/dy$d;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/dy;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/yandex/mobile/ads/R$layout;->activity_debug:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->b()Lcom/yandex/mobile/ads/impl/ih2;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/fp0;

    sget-object v0, Lcom/yandex/mobile/ads/impl/dy$a;->a:Lcom/yandex/mobile/ads/impl/dy$a;

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/fp0;->a(Lcom/yandex/mobile/ads/impl/dy;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->e()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/features/debugpanel/ui/IntegrationInspectorActivity;->d:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/dx;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/dx;->a()Lcom/yandex/mobile/ads/impl/lx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lx;->a()V

    invoke-super {p0}, Lcom/yandex/mobile/ads/features/debugpanel/common/BaseActivity;->onDestroy()V

    return-void
.end method
