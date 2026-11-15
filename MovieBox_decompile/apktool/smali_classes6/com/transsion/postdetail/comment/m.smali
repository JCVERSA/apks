.class public final Lcom/transsion/postdetail/comment/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Lcom/transsion/postdetail/comment/SocialStatus;

.field private final b:Z

.field private c:Landroidx/appcompat/widget/AppCompatEditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private j:Landroidx/appcompat/widget/AppCompatTextView;

.field private k:Landroidx/appcompat/widget/AppCompatTextView;

.field private l:Landroidx/appcompat/widget/AppCompatTextView;

.field private m:Landroidx/appcompat/widget/AppCompatImageView;

.field private n:Lcom/google/android/material/imageview/ShapeableImageView;

.field private o:Lcom/google/android/material/imageview/ShapeableImageView;

.field private p:Landroidx/appcompat/widget/AppCompatImageView;

.field private q:Lvn/a;

.field private r:Ljava/util/List;

.field private final s:Landroid/text/InputFilter$LengthFilter;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;Z)V
    .locals 1

    const-string v0, "socialStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    .line 4
    iput-boolean p4, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 6
    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_limit:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    .line 8
    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_edit_post:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 9
    sget p3, Lcom/transsion/postdetail/R$id;->comment_input_disable_click:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->g:Landroid/view/View;

    .line 10
    sget p3, Lcom/transsion/postdetail/R$id;->tv_hint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    .line 11
    sget p3, Lcom/transsion/postdetail/R$id;->progress_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    .line 12
    sget p3, Lcom/transsion/postdetail/R$id;->ll_tint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    sget p3, Lcom/transsion/postdetail/R$id;->tv_like:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    sget p3, Lcom/transsion/postdetail/R$id;->tv_comment:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    sget p3, Lcom/transsion/postdetail/R$id;->tv_share:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    sget p3, Lcom/transsion/postdetail/R$id;->iv_download:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 17
    sget p3, Lcom/transsion/postdetail/R$id;->iv_choose_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    sget p3, Lcom/transsion/postdetail/R$id;->iv_selected_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p3, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 19
    sget p3, Lcom/transsion/postdetail/R$id;->icon_delete_image:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    invoke-direct {p0, p4}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 22
    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_limit:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    .line 23
    sget p1, Lcom/transsion/postdetail/R$id;->comment_input_edit_post:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 24
    sget p1, Lcom/transsion/postdetail/R$id;->tv_hint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    .line 25
    sget p1, Lcom/transsion/postdetail/R$id;->progress_bar:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    .line 26
    sget p1, Lcom/transsion/postdetail/R$id;->ll_tint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 27
    sget p1, Lcom/transsion/postdetail/R$id;->tv_like:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    sget p1, Lcom/transsion/postdetail/R$id;->tv_comment:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    sget p1, Lcom/transsion/postdetail/R$id;->tv_share:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    sget p1, Lcom/transsion/postdetail/R$id;->iv_download:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 31
    sget p1, Lcom/transsion/postdetail/R$id;->iv_choose_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 32
    sget p1, Lcom/transsion/postdetail/R$id;->iv_selected_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 33
    sget p1, Lcom/transsion/postdetail/R$id;->icon_delete_image:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    invoke-direct {p0, p4}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    xor-int/lit8 p2, p4, 0x1

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    xor-int/lit8 p2, p4, 0x1

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 41
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 42
    :cond_3
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 43
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_5
    new-instance p1, Lcom/transsion/postdetail/comment/m$a;

    invoke-direct {p1}, Lcom/transsion/postdetail/comment/m$a;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->s:Landroid/text/InputFilter$LengthFilter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 45
    new-instance p3, Lcom/transsion/postdetail/comment/SocialStatus;

    const/4 p6, 0x1

    invoke-direct {p3, p6, p6, p6, p6}, Lcom/transsion/postdetail/comment/SocialStatus;-><init>(ZZZZ)V

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 46
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/m;-><init>(Landroid/view/View;Landroid/app/Dialog;Lcom/transsion/postdetail/comment/SocialStatus;Z)V

    return-void
.end method

.method private final A(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->D(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->C(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final C(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, "/"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 40
    .line 41
    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-le p1, v0, :cond_2

    .line 58
    .line 59
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 60
    .line 61
    sget v0, Lcom/transsion/postdetail/R$string;->comment_max_tips:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method private final D(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-gt v1, p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-gt p1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 16
    .line 17
    check-cast p1, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eq p1, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->o(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->n(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->l(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/comment/m;->m(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()Lcom/transsion/postdetail/comment/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lvn/a;->a()Lcom/transsion/postdetail/comment/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method private final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/comment/m;->D(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final l(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/comment/m;->r(Landroid/text/Editable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final m(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o(Lcom/transsion/postdetail/comment/m;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object p1, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/transsion/publish/n;->f(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    .line 13
    .line 14
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string p1, "getApp(...)"

    .line 19
    .line 20
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/publish/ui/GalleryActivity$a;->a(Landroid/content/Context;Ljava/util/List;III)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final p(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 32
    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowTint()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {p1, v0}, Luf/c;->j(Landroid/view/View;Z)V

    .line 50
    .line 51
    .line 52
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    if-eqz p1, :cond_6

    .line 55
    .line 56
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowLike()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-static {p1, v0}, Luf/c;->j(Landroid/view/View;Z)V

    .line 63
    .line 64
    .line 65
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowShare()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {p1, v0}, Luf/c;->j(Landroid/view/View;Z)V

    .line 76
    .line 77
    .line 78
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->m:Landroidx/appcompat/widget/AppCompatImageView;

    .line 79
    .line 80
    if-eqz p1, :cond_8

    .line 81
    .line 82
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->a:Lcom/transsion/postdetail/comment/SocialStatus;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/transsion/postdetail/comment/SocialStatus;->getShowDownload()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {p1, v0}, Luf/c;->j(Landroid/view/View;Z)V

    .line 89
    .line 90
    .line 91
    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 92
    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :cond_9
    :goto_0
    return-void
.end method

.method private final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lvn/a;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0xa

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method private final r(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lvn/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/transsion/postdetail/comment/i0;->T(Landroid/text/Editable;Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private final s()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/transsion/postdetail/comment/i0;->F()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/transsion/postdetail/comment/i0;->afterTextChanged(Landroid/text/Editable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->e:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v2, 0x8

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    move v2, v1

    .line 28
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_3
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :cond_4
    const/16 p1, 0x127

    .line 38
    .line 39
    if-lt v1, p1, :cond_5

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz p1, :cond_6

    .line 44
    .line 45
    sget v0, Lcom/tn/lib/widget/R$color;->error_50:I

    .line 46
    .line 47
    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->d:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz p1, :cond_6

    .line 58
    .line 59
    sget v0, Lcom/tn/lib/widget/R$color;->text_02:I

    .line 60
    .line 61
    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    :cond_6
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/postdetail/comment/i0;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final h()Landroid/text/Editable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final i()Lcom/transsion/moviedetailapi/bean/CommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lvn/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lvn/a;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-object p1, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 6
    .line 7
    if-eqz p1, :cond_5

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lvn/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    const-string v3, ""

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget v5, Lcom/transsion/postdetail/R$string;->comment_hint_add:I

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2}, Lvn/a;->d()Lcom/transsion/moviedetailapi/bean/CommentBean;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sget v5, Lcom/transsion/postdetail/R$string;->comment_reply_to:I

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/CommentBean;->getNickName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    new-array v6, v0, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v2, v6, v1

    .line 88
    .line 89
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v2}, Lvn/a;->b()Landroid/text/Editable;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-direct {p0, v2}, Lcom/transsion/postdetail/comment/m;->A(I)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->q()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    mul-int/lit8 v2, v2, 0x2

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 130
    .line 131
    .line 132
    iget-boolean v2, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    .line 133
    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 140
    .line 141
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 143
    .line 144
    const/16 v2, 0x1d

    .line 145
    .line 146
    if-lt v0, v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sget v2, Lcom/transsion/postdetail/R$drawable;->comment_edit_cursor:I

    .line 153
    .line 154
    invoke-static {v0, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Lcom/transsion/postdetail/comment/h;->a(Landroidx/appcompat/widget/AppCompatEditText;Landroid/graphics/drawable/Drawable;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const-string v2, "getFilters(...)"

    .line 166
    .line 167
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->J0([Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->s:Landroid/text/InputFilter$LengthFilter;

    .line 175
    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    check-cast v0, Ljava/util/Collection;

    .line 180
    .line 181
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 182
    .line 183
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, [Landroid/text/InputFilter;

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    .line 191
    .line 192
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 193
    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    new-instance v0, Lcom/transsion/postdetail/comment/i;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/i;-><init>(Lcom/transsion/postdetail/comment/m;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 205
    .line 206
    if-eqz p1, :cond_7

    .line 207
    .line 208
    new-instance v0, Lcom/transsion/postdetail/comment/j;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/j;-><init>(Lcom/transsion/postdetail/comment/m;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->p:Landroidx/appcompat/widget/AppCompatImageView;

    .line 217
    .line 218
    if-eqz p1, :cond_8

    .line 219
    .line 220
    new-instance v0, Lcom/transsion/postdetail/comment/k;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/k;-><init>(Lcom/transsion/postdetail/comment/m;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    :cond_8
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 229
    .line 230
    if-eqz p1, :cond_9

    .line 231
    .line 232
    new-instance v0, Lcom/transsion/postdetail/comment/l;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/comment/l;-><init>(Lcom/transsion/postdetail/comment/m;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    :cond_9
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->A(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/transsion/postdetail/comment/m;->e()Lcom/transsion/postdetail/comment/i0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 24
    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p1, v0

    .line 39
    :goto_1
    if-lez p1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/16 v0, 0x8

    .line 43
    .line 44
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    invoke-static {p1, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 53
    .line 54
    .line 55
    :cond_5
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/comment/m;->x(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lvn/a;->e()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/comment/m;->p(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final v(Lcom/transsion/moviedetailapi/bean/CommentBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->q:Lvn/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lvn/a;->i(Lcom/transsion/moviedetailapi/bean/CommentBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final w(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 3

    .line 1
    const-string v0, "photoEntity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/postdetail/comment/m;->r:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    :cond_0
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/postdetail/comment/m;->D(I)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/comment/m;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->h:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/comment/m;->f:Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method
