.class public Lcom/transsion/playercommon/widgets/SortGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/widgets/SortGroup$a;,
        Lcom/transsion/playercommon/widgets/SortGroup$c;,
        Lcom/transsion/playercommon/widgets/SortGroup$b;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/playercommon/widgets/SortItem$a;

.field public d:Lcom/transsion/playercommon/widgets/SortGroup$b;

.field public e:I

.field public f:Z

.field public g:I

.field public h:Lcom/transsion/playercommon/widgets/SortGroup$c;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/playercommon/widgets/SortGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/widgets/SortGroup;)Lcom/transsion/playercommon/widgets/SortItem$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->c:Lcom/transsion/playercommon/widgets/SortItem$a;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/widgets/SortGroup;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/transsion/playercommon/widgets/SortGroup;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup;->f(I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/playercommon/widgets/SortGroup;IIZI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/widgets/SortGroup;->i(IIZI)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/playercommon/widgets/SortGroup;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/widgets/SortGroup;->j(IZ)V

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {v0}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "sort_manually_is_red_point"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Lcom/transsion/playercommon/widgets/SortGroup$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/playercommon/widgets/SortGroup$a;-><init>(Lcom/transsion/playercommon/widgets/SortGroup;Lgs9;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->c:Lcom/transsion/playercommon/widgets/SortItem$a;

    new-instance p1, Lcom/transsion/playercommon/widgets/SortGroup$c;

    invoke-direct {p1, p0, v0}, Lcom/transsion/playercommon/widgets/SortGroup$c;-><init>(Lcom/transsion/playercommon/widgets/SortGroup;Lgs9;)V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->h:Lcom/transsion/playercommon/widgets/SortGroup$c;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public getIsAscending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    return p0
.end method

.method public getNewestAscending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->m:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->k:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    :goto_0
    return p0
.end method

.method public getNewestSortByNameValue()I
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->m:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->l:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    :goto_0
    return p0
.end method

.method public getSortByNameValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    return p0
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/playercommon/widgets/SortItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/SortItem;->getValue()I

    move-result v2

    iget v3, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    if-ne v2, v3, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/transsion/playercommon/widgets/SortItem;->setSelected(ZZ)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final i(IIZI)V
    .locals 0

    iput p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->m:Z

    iput p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->l:I

    iput-boolean p3, p0, Lcom/transsion/playercommon/widgets/SortGroup;->k:Z

    const/16 p1, 0x3e9

    if-ne p4, p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-gt p1, p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string p4, "audio_pref_sort_name_album"

    invoke-static {p1, p4, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string p4, "audio_pref_sort_by_album"

    invoke-static {p1, p4, p3}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    iget-boolean p4, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    if-eqz p4, :cond_2

    const-string p4, "video_pref_sort_name"

    goto :goto_1

    :cond_2
    const-string p4, "audio_pref_sort_name"

    :goto_1
    invoke-static {p1, p4, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    iget-boolean p4, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    if-eqz p4, :cond_3

    const-string p4, "video_pref_sort_by"

    goto :goto_2

    :cond_3
    const-string p4, "audio_pref_sort_by"

    :goto_2
    invoke-static {p1, p4, p3}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->j:Z

    if-eqz p1, :cond_4

    return-void

    :cond_4
    sget-object p1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->MANUAL:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result p1

    if-ne p2, p1, :cond_6

    invoke-static {p2}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->d:Lcom/transsion/playercommon/widgets/SortGroup$b;

    if-eqz p1, :cond_5

    iget p3, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    invoke-interface {p1, p0, p3, p2}, Lcom/transsion/playercommon/widgets/SortGroup$b;->a(Lcom/transsion/playercommon/widgets/SortGroup;II)V

    :cond_5
    iget-boolean p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    invoke-static {p0}, Lp06;->M(Z)V

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    if-eqz p1, :cond_7

    invoke-static {p3}, Lcom/transsion/dbdata/utils/SortUtil;->r(Z)V

    invoke-static {p2}, Lcom/transsion/dbdata/utils/SortUtil;->s(I)V

    goto :goto_4

    :cond_7
    invoke-static {p3}, Lcom/transsion/dbdata/utils/SortUtil;->p(Z)V

    invoke-static {p2}, Lcom/transsion/dbdata/utils/SortUtil;->q(I)V

    :goto_4
    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object p1

    iget-boolean p3, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    invoke-virtual {p1, p3}, Lsq3;->d(Z)V

    iget-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    invoke-static {p1}, Lp06;->M(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->d:Lcom/transsion/playercommon/widgets/SortGroup$b;

    if-eqz p1, :cond_8

    iget p3, p0, Lcom/transsion/playercommon/widgets/SortGroup;->e:I

    invoke-interface {p1, p0, p3, p2}, Lcom/transsion/playercommon/widgets/SortGroup$b;->a(Lcom/transsion/playercommon/widgets/SortGroup;II)V

    :cond_8
    return-void
.end method

.method public final j(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/transsion/playercommon/widgets/SortItem;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/transsion/playercommon/widgets/SortItem;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/widgets/SortItem;->setSelected(ZZ)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public saveVideoListModeAttr(ZIIZ)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lpp3;->I:Z

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string v3, "video_sort_list_mode_type"

    invoke-static {v0, v3, p3}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const/4 v3, -0x2

    if-ne p3, v3, :cond_1

    move p3, v2

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    const-string v3, "video_adapter_grid_type"

    invoke-static {v0, v3, p3}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string p3, "video_short_list_mode_open"

    sget-boolean v0, Lpp3;->I:Z

    invoke-static {p0, p3, v0}, Lw6c;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    if-eqz p4, :cond_2

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->r(Z)V

    invoke-static {p2}, Lcom/transsion/dbdata/utils/SortUtil;->s(I)V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object p0

    invoke-virtual {p0, v2}, Lsq3;->d(Z)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x482

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x48f

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {v2}, Lp06;->M(Z)V

    :cond_2
    return-void
.end method

.method public saveVideoSortAttr(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string v1, "video_pref_sort_by"

    invoke-static {v0, v1, p1}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    const-string v0, "video_pref_sort_name"

    invoke-static {p0, v0, p2}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/transsion/dbdata/utils/SortUtil;->r(Z)V

    invoke-static {p2}, Lcom/transsion/dbdata/utils/SortUtil;->s(I)V

    invoke-static {}, Lsq3;->a()Lsq3;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lsq3;->d(Z)V

    return-void
.end method

.method public setIsSortVideo(Z)V
    .locals 3

    .line 8
    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    .line 9
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v1, "video_pref_sort_by"

    goto :goto_0

    :cond_0
    const-string v1, "audio_pref_sort_by"

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    .line 10
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p1, "video_pref_sort_name"

    goto :goto_1

    :cond_1
    const-string p1, "audio_pref_sort_name"

    :goto_1
    invoke-static {v0, p1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    .line 11
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortGroup;->h()V

    return-void
.end method

.method public setIsSortVideo(ZZ)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->i:Z

    .line 2
    const-string v0, "video_pref_sort_name"

    const-string v1, "video_pref_sort_by"

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "audio_pref_sort_by_album"

    :goto_0
    invoke-static {p2, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    .line 4
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "audio_pref_sort_name_album"

    :goto_1
    sget-object p1, Lcom/transsion/dbdata/utils/SortUtil$SortType;->NUMBER:Lcom/transsion/dbdata/utils/SortUtil$SortType;

    invoke-virtual {p1}, Lcom/transsion/dbdata/utils/SortUtil$SortType;->getValue()I

    move-result p1

    invoke-static {p2, v0, p1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    goto :goto_4

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "audio_pref_sort_by"

    :goto_2
    invoke-static {p2, v1, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->f:Z

    .line 6
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/SortGroup;->b:Landroid/content/Context;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "audio_pref_sort_name"

    :goto_3
    invoke-static {p2, v0, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->g:I

    .line 7
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/SortGroup;->h()V

    return-void
.end method

.method public setNotPlayNow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->j:Z

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SortGroup;->h:Lcom/transsion/playercommon/widgets/SortGroup$c;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/SortGroup$c;->a(Lcom/transsion/playercommon/widgets/SortGroup$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public setOnSelectedChangeListener(Lcom/transsion/playercommon/widgets/SortGroup$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SortGroup;->d:Lcom/transsion/playercommon/widgets/SortGroup$b;

    return-void
.end method
