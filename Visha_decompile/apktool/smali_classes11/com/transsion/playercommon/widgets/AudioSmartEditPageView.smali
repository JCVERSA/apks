.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;
    }
.end annotation


# static fields
.field public static final SELECT_PHOTO:I = 0x7d1


# instance fields
.field public final A:Z

.field public B:I

.field public final C:Ljava/lang/Runnable;

.field public D:Landroid/graphics/Rect;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;

.field public b:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public volatile c:Ljava/util/List;

.field public d:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field public e:Ljava/lang/String;

.field public f:Lgd1;

.field public g:Z

.field public h:Z

.field public i:Ls87;

.field public j:Landroid/view/View;

.field public k:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/transsion/widgets/RoundImageView;

.field public n:Landroid/widget/ImageView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/view/View;

.field public w:Z

.field public x:Landroidx/core/widget/NestedScrollView;

.field public y:Landroid/view/View;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c:Ljava/util/List;

    .line 3
    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f:Lgd1;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    .line 7
    invoke-static {}, Lpp3;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    .line 8
    iput v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    .line 9
    new-instance v0, Ld10;

    invoke-direct {v0, p0}, Ld10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c:Ljava/util/List;

    .line 18
    new-instance p2, Lgd1;

    invoke-direct {p2}, Lgd1;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f:Lgd1;

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    .line 20
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    .line 21
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    .line 22
    invoke-static {}, Lpp3;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    .line 23
    iput p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    .line 24
    new-instance p2, Ld10;

    invoke-direct {p2, p0}, Ld10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    .line 25
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c:Ljava/util/List;

    .line 33
    new-instance p2, Lgd1;

    invoke-direct {p2}, Lgd1;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f:Lgd1;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    .line 35
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    .line 36
    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    .line 37
    invoke-static {}, Lpp3;->m()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    .line 38
    iput p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    .line 39
    new-instance p2, Ld10;

    invoke-direct {p2, p0}, Ld10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->T(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic B(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->e:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->K()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->O()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l0()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic F(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->n0()V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->o0()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setNewCover(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setSmartEditInfo(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V

    return-void
.end method

.method public static varargs N([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setSaveEnabled(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static W(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static synthetic Z(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    if-lt p0, p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->over_text_length:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic a0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x4b

    if-lt p0, p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->over_text_length:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->S(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->Z(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c0()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->d0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->R(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g0(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getNestedScrollMaxY()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic h(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b0()V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->a0(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g0(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->Q()V

    return-void
.end method

.method public static m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->Y()V

    return-void
.end method

.method public static needLargeScreenImeAdapt(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lpp3;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic o(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->X(Landroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    return-object p0
.end method

.method private setNewCover(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s0()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setSmartEditInfo(Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;)V
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;->getAlbumYear()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " artistName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " albumName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " albumYear:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "AudioSmartEditPageView"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    invoke-static {v1, v3}, Lrj4;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-static {v2, v1}, Lrj4;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-static {p1, v1}, Lrj4;->a(Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iput-boolean v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    const-string p0, "smartedit"

    sput-object p0, Lqy5;->a:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    return p0
.end method

.method public static bridge synthetic u(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->g:Z

    return p0
.end method

.method public static bridge synthetic v(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    return-void
.end method


# virtual methods
.method public final J(I)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ime scroll space="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", keyboard="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioSmartEditPageView"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final K()V
    .locals 2

    new-instance v0, Le10;

    invoke-direct {v0, p0}, Le10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final L()I
    .locals 8

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-lez v2, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x2

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    const/4 v6, 0x1

    aget v2, v2, v6

    aget v7, v3, v6

    sub-int/2addr v2, v7

    add-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v2

    iget v7, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    sub-int/2addr v2, v7

    aget v3, v3, v6

    add-int/2addr v3, v5

    sub-int/2addr v2, v0

    sub-int/2addr v3, v2

    if-gtz v3, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr v3, p0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iput-object p3, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iput-object p4, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    return-object v0
.end method

.method public final O()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    invoke-virtual {v0}, Ls87;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final P(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v2, v0, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/4 v4, 0x1

    aget v2, v2, v4

    aget v5, v1, v4

    sub-int/2addr v2, v5

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-static {p1, v2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->W(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    new-array p1, v0, [I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    aget p1, p1, v4

    aget v5, v1, v4

    sub-int/2addr p1, v5

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v2

    iget v5, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    sub-int/2addr v2, v5

    aget v1, v1, v4

    add-int/2addr v1, v3

    sub-int p1, v2, p1

    sub-int/2addr v1, p1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->getNestedScrollMaxY()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollTo y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cur="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyboardTop="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "AudioSmartEditPageView"

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lh10;

    invoke-direct {v1, p0}, Lh10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final R(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error saving audio edit info: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioSmartEditPageView"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public final S(Ljava/lang/Boolean;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio edit info saved result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AudioSmartEditPageView"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x4a3

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p1

    const-string v0, "change_audio_cover"

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->I:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;->b()V

    :cond_1
    return-void
.end method

.method public final T(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$layout;->audio_smart_edit_page_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->v:Landroid/view/View;

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->d:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_smart_edit:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/RoundImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m:Lcom/transsion/widgets/RoundImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_cover:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->n:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_edit_cover:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->o:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->iv_delete_cover:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/playercommon/R$id;->et_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget p1, Lcom/transsion/playercommon/R$id;->et_album:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget p1, Lcom/transsion/playercommon/R$id;->et_artist:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget p1, Lcom/transsion/playercommon/R$id;->et_year:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget p1, Lcom/transsion/playercommon/R$id;->tv_save:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    sget p1, Lcom/transsion/playercommon/R$id;->v_smart_match_loading_blocker:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j:Landroid/view/View;

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->k:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    new-instance p1, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$1;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-static {p1}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->o:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$d;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$d;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$e;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$f;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$g;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$g;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m:Lcom/transsion/widgets/RoundImageView;

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$h;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->V()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->U()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    sget p1, Lcom/transsion/playercommon/R$id;->nsv_smart_edit_content:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    sget p1, Lcom/transsion/playercommon/R$id;->v_ime_scroll_space:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y:Landroid/view/View;

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    filled-new-array {p1, v0, v1, p0}, [Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->N([Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    :cond_0
    return-void
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->k:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public final V()V
    .locals 4

    new-instance v0, Lf10;

    invoke-direct {v0}, Lf10;-><init>()V

    new-instance v1, Lg10;

    invoke-direct {v1}, Lg10;-><init>()V

    new-instance v2, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$7;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v2, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    new-instance v2, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$i;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    new-instance v3, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;

    invoke-direct {v3, p0, v2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$9;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/text/TextWatcher;)V

    invoke-static {v3, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->t(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic X(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-lez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final synthetic Y()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v3

    iget-object v6, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v3

    aget v1, v1, v3

    add-int/2addr v5, v2

    const/4 v3, 0x0

    if-le v5, v4, :cond_0

    sub-int/2addr v5, v4

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    sub-int/2addr v0, v1

    sub-int v5, v0, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v0, v5

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->getNestedScrollMaxY()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ime hide ensure save visible, scrollTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AudioSmartEditPageView"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, v3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(II)V

    :cond_2
    return-void
.end method

.method public final synthetic b0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->z:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->P(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->z:Landroid/view/View;

    return-void
.end method

.method public final synthetic c0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic d0()Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->p0()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    int-to-long v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lzl6;->g(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lao;->x0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic h0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->I:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic i0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->o0()V

    return-void
.end method

.method public final j0(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-static {v0, p1, v1}, Lvk1;->j(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;Ltn$c;)V

    return-void
.end method

.method public final k0(Ls87;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x8

    const v0, 0x20008

    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "makeDialogNotFocusable failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioSmartEditPageView"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final l0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadAudioCover(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/database/AudioAlbum;

    iget-object v3, v2, Lcom/transsion/dbdata/database/AudioAlbum;->id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v3, v4, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j0(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {v0}, Lav3;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    iget-object p1, v1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j0(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final n0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u0()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->I:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o0()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lag5;->h(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    invoke-static {v0, v1, v2, v3}, Lqy5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const-string v0, "vd_audio_play_smartedit_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m:Lcom/transsion/widgets/RoundImageView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lmq;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->J(I)Z

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    iput-boolean v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    invoke-virtual {v0}, Ls87;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    :cond_4
    return-void
.end method

.method public onKeyboardHeightChanged(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-lez v1, :cond_0

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->l0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->J(I)Z

    return-void

    :cond_1
    iget p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-gtz p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->J(I)Z

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lw00;

    invoke-direct {v0, p0}, Lw00;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->L()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->J(I)Z

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    new-instance v0, Lc10;

    invoke-direct {v0, p0}, Lc10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public onPhotoSelected(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;

    invoke-direct {v0, p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$12;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final p0()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->d:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pickPhoto()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "IntentReset"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s0()V

    invoke-static {}, Lmfb;->g()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lmfb;->n()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x7d1

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "pickPhoto"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Lk10;

    invoke-direct {v0, p0}, Lk10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-static {v0}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object v0

    new-instance v1, Lx00;

    invoke-direct {v1, p0, p1, p2, p3}, Lx00;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object v1

    new-instance v8, Ly00;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Ly00;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lxm9;->j(Ljava/util/concurrent/Callable;)Lxm9;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {v0, p2}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {v1, p3}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p3

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lxm9;->r(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p1

    new-instance p4, Lz00;

    invoke-direct {p4}, Lz00;-><init>()V

    invoke-static {p2, p3, p1, p4}, Lxm9;->z(Lmn9;Lmn9;Lmn9;Lv74;)Lxm9;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lxm9;->m(Lio/reactivex/Scheduler;)Lxm9;

    move-result-object p1

    new-instance p2, La10;

    invoke-direct {p2, p0}, La10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    new-instance p3, Lb10;

    invoke-direct {p3, p0}, Lb10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, p2, p3}, Lxm9;->p(Lzf1;Lzf1;)Lrc2;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->f:Lgd1;

    invoke-virtual {p0, p1}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public final r0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->B:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->z:Landroid/view/View;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x:Landroidx/core/widget/NestedScrollView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public requestAudioInfoFromMusicBrain(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->w:Z

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->visha_smart_edit_complete:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v0, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->net_not_connect:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t0()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->k:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->f(Ljava/lang/String;)Lxm9;

    move-result-object p1

    new-instance v0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$b;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {p1, v0}, Lxm9;->a(Lin9;)V

    return-void
.end method

.method public restoreEditDraft(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "smart_edit_draft_title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    const-string v1, "smart_edit_draft_artist"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    const-string v1, "smart_edit_draft_album"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    const-string v1, "smart_edit_draft_year"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->m0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v5

    :goto_2
    iget-object v2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->h:Z

    if-eqz p0, :cond_8

    :cond_7
    move v1, v5

    :cond_8
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final s0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->d:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public saveEditDraft(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart_edit_draft_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart_edit_draft_artist"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smart_edit_draft_album"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "smart_edit_draft_year"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->updateContent()V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->loadAudioCover(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setOnSmartEditPageChangeListener(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->I:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;

    return-void
.end method

.method public final t0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    if-nez v0, :cond_0

    new-instance v0, Ls87$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ls87$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->loading:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls87$a;->a(IZ)Ls87$a;

    move-result-object v0

    invoke-virtual {v0}, Ls87$a;->c()Ls87;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->i:Ls87;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->k0(Ls87;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final u0()V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/playercommon/R$string;->visha_save_smart_edit_info_hint_title:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Li10;

    invoke-direct {v2, p0}, Li10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->Save:I

    new-instance v2, Lj10;

    invoke-direct {v2, p0}, Lj10;-><init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public updateContent()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->q:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->s:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->r:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->t:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
