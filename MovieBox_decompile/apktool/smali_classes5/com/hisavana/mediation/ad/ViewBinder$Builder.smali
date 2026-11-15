.class public final Lcom/hisavana/mediation/ad/ViewBinder$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/ad/ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public actionView:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/view/View;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->q:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->a:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->q:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->p:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->r:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->l:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->m:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic k(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->u:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic o(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->v:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic q(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic r(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->g:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic v(Lcom/hisavana/mediation/ad/ViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->i:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final varargs actionIds([Ljava/lang/Integer;)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->p:Ljava/util/List;

    .line 6
    .line 7
    return-object p0
.end method

.method public final adBadgeView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final adChoicesView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final adCloseView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final adDisclaimerView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->l:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final build()Lcom/hisavana/mediation/ad/ViewBinder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/hisavana/mediation/ad/ViewBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/hisavana/mediation/ad/ViewBinder;-><init>(Lcom/hisavana/mediation/ad/ViewBinder$Builder;Lcom/hisavana/mediation/ad/ViewBinder$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final callToActionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->d:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final contextMode(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->r:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final descriptionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->f:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final domainView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->t:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final downloadsId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->k:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final feedbackView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->u:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final iconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final iconId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final likesId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final mediaId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final priceId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->j:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final ratingId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->actionView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public final sourceSizeId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->v:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final sponsoredId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final storeMarkView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->s:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final titleId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->b:I

    .line 2
    .line 3
    return-object p0
.end method
