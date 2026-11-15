.class public final Lro/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Z

.field private b:Lcom/transsion/publish/view/LinkEditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lro/b;

.field private j:Landroid/app/Dialog;

.field private k:Lcom/tencent/mmkv/MMKV;

.field private l:Z

.field private m:Lmo/b$b;

.field private n:Landroid/view/View;

.field private final o:Landroid/text/InputFilter$LengthFilter;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lro/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lmo/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lmo/b$b;Landroid/view/View;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p5, p0, Lro/j;->a:Z

    .line 4
    iput-object p3, p0, Lro/j;->m:Lmo/b$b;

    .line 5
    iput-object p4, p0, Lro/j;->n:Landroid/view/View;

    const/4 p3, 0x1

    .line 6
    iput-boolean p3, p0, Lro/j;->l:Z

    if-eqz p1, :cond_0

    .line 7
    sget p3, Lcom/transsion/publish/R$id;->comment_input_edit_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/transsion/publish/view/LinkEditText;

    iput-object p3, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 8
    sget p3, Lcom/transsion/publish/R$id;->tv_add:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lro/j;->e:Landroid/view/View;

    .line 9
    sget p3, Lcom/transsion/publish/R$id;->tv_cancel:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lro/j;->d:Landroid/widget/TextView;

    .line 10
    sget p3, Lcom/transsion/publish/R$id;->comment_input_disable_click:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lro/j;->g:Landroid/view/View;

    .line 11
    sget p3, Lcom/transsion/publish/R$id;->tv_hint:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lro/j;->c:Landroid/widget/TextView;

    .line 12
    sget p3, Lcom/transsion/publish/R$id;->rl_clear:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lro/j;->f:Landroid/widget/RelativeLayout;

    .line 13
    :cond_0
    iput-object p2, p0, Lro/j;->j:Landroid/app/Dialog;

    if-eqz p2, :cond_1

    .line 14
    sget p1, Lcom/transsion/publish/R$id;->comment_input_edit_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/view/LinkEditText;

    iput-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 15
    sget p1, Lcom/transsion/publish/R$id;->tv_add:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lro/j;->e:Landroid/view/View;

    .line 16
    sget p1, Lcom/transsion/publish/R$id;->tv_hint:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lro/j;->c:Landroid/widget/TextView;

    .line 17
    sget p1, Lcom/transsion/publish/R$id;->tv_cancel:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lro/j;->d:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/transsion/publish/R$id;->rl_clear:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lro/j;->f:Landroid/widget/RelativeLayout;

    .line 19
    sget p1, Lcom/transsion/publish/R$id;->comment_input_layout:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lro/j;->h:Landroid/view/View;

    .line 20
    :cond_1
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p1, p5}, Landroid/view/View;->setEnabled(Z)V

    xor-int/lit8 p2, p5, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    xor-int/lit8 p2, p5, 0x1

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    if-eqz p5, :cond_3

    .line 26
    iget-object p1, p0, Lro/j;->e:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_3
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 28
    :cond_4
    :try_start_0
    const-string p1, "kv_link_record"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lro/j;->k:Lcom/tencent/mmkv/MMKV;

    if-eqz p1, :cond_5

    .line 29
    const-string p2, "link"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 31
    iget-object p2, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    :cond_6
    new-instance p1, Lro/j$b;

    invoke-direct {p1}, Lro/j$b;-><init>()V

    iput-object p1, p0, Lro/j;->o:Landroid/text/InputFilter$LengthFilter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/app/Dialog;Lmo/b$b;Landroid/view/View;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x0

    :cond_4
    move p6, p5

    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v0

    .line 33
    invoke-direct/range {p1 .. p6}, Lro/j;-><init>(Landroid/view/View;Landroid/app/Dialog;Lmo/b$b;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic a(Lro/j;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lro/j;->l(Lro/j;Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lro/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lro/j;->o(Lro/j;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lro/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lro/j;->n(Lro/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lro/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lro/j;->q(Lro/j;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lro/j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lro/j;->p(Lro/j;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lro/j;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lro/j;->m(Lro/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lro/j;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lro/j;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method private final h()Lro/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/j;->i:Lro/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lro/b;->a()Lro/a;

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

.method private static final l(Lro/j;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    new-instance p2, Lro/i;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lro/i;-><init>(Lro/j;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private static final m(Lro/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 19
    .line 20
    if-eqz p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method private static final n(Lro/j;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lro/j;->m:Lmo/b$b;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lmo/b$b;->completeLoad()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final o(Lro/j;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lro/j;->s(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final p(Lro/j;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lro/j;->k:Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v1, "link"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lro/j;->i()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final q(Lro/j;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method private final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lro/j;->i:Lro/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lro/b;->c()I

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

.method private final s(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x5

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "substring(...)"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "http"

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    const-string v2, "https"

    .line 44
    .line 45
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    const-string v2, "www."

    .line 52
    .line 53
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 61
    .line 62
    sget v0, Lcom/transsion/publish/R$string;->post_link_hint:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_0
    const-string v1, "http:"

    .line 69
    .line 70
    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    const-string v1, "https:"

    .line 77
    .line 78
    invoke-static {p1, v1, v0, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v1, "https://"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_3
    iget-object v0, p0, Lro/j;->k:Lcom/tencent/mmkv/MMKV;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    const-string v1, "link"

    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    .line 111
    .line 112
    :cond_4
    sget-object v0, Lcom/transsion/publish/c;->a:Lcom/transsion/publish/c$a;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/transsion/publish/c$a;->a()Lcom/transsion/publish/c;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Lcom/transsion/publish/c;->g(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lro/j;->i()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    :goto_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 126
    .line 127
    sget v0, Lcom/transsion/publish/R$string;->post_link_hint:I

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method private final t(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lro/j;->v(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lro/j;->u(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final u(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lro/j;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 8
    .line 9
    sget v0, Lcom/transsion/publish/R$string;->comment_max_tips:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final v(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lro/j;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gt v2, p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lro/j;->r()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-gt p1, v3, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eq p1, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lro/j;->h()Lro/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lro/a;->afterTextChanged(Landroid/text/Editable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lro/j;->h()Lro/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Lro/a;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lro/j;->n:Landroid/view/View;

    .line 3
    .line 4
    iget-object v0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lro/j;->j:Landroid/app/Dialog;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final j()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k(Lro/b;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lro/j;->i:Lro/b;

    .line 2
    .line 3
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lro/j;->i:Lro/b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lro/b;->d()Lcom/transsion/publish/api/LinkEntity;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lro/j;->t(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lro/j;->i:Lro/b;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lro/b;->b()Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-direct {p0, v1}, Lro/j;->t(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0}, Lro/j;->r()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    mul-int/lit8 v1, v1, 0x2

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lro/j;->a:Z

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 77
    .line 78
    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    const/16 v2, 0x1d

    .line 82
    .line 83
    if-lt v1, v2, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget v2, Lcom/transsion/publish/R$drawable;->comment_edit_cursor:I

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Lro/c;->a(Lcom/transsion/publish/view/LinkEditText;Landroid/graphics/drawable/Drawable;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "getFilters(...)"

    .line 103
    .line 104
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->J0([Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lro/j;->o:Landroid/text/InputFilter$LengthFilter;

    .line 112
    .line 113
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    check-cast v1, Ljava/util/Collection;

    .line 117
    .line 118
    new-array v2, v0, [Landroid/text/InputFilter;

    .line 119
    .line 120
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, [Landroid/text/InputFilter;

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object p1, p0, Lro/j;->e:Landroid/view/View;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    new-instance v1, Lro/d;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lro/d;-><init>(Lro/j;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    iget-object p1, p0, Lro/j;->d:Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz p1, :cond_5

    .line 144
    .line 145
    new-instance v1, Lro/e;

    .line 146
    .line 147
    invoke-direct {v1, p0}, Lro/e;-><init>(Lro/j;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    iget-object p1, p0, Lro/j;->f:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    if-eqz p1, :cond_6

    .line 156
    .line 157
    new-instance v1, Lro/f;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lro/f;-><init>(Lro/j;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 166
    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    goto :goto_0

    .line 174
    :cond_7
    const/4 p1, 0x0

    .line 175
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_8

    .line 180
    .line 181
    iget-object v1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :cond_8
    iget-object v1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    new-instance v2, Lro/j$a;

    .line 193
    .line 194
    invoke-direct {v2, p0}, Lro/j$a;-><init>(Lro/j;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    .line 199
    .line 200
    :cond_9
    iget-object v1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 201
    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    new-instance v2, Lro/g;

    .line 205
    .line 206
    invoke-direct {v2, p0}, Lro/g;-><init>(Lro/j;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-object v1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 213
    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 217
    .line 218
    .line 219
    :cond_b
    iget-object v1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 220
    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    if-eqz p1, :cond_c

    .line 224
    .line 225
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    :cond_c
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    .line 231
    .line 232
    :cond_d
    iget-object p1, p0, Lro/j;->b:Lcom/transsion/publish/view/LinkEditText;

    .line 233
    .line 234
    if-eqz p1, :cond_e

    .line 235
    .line 236
    new-instance v0, Lro/h;

    .line 237
    .line 238
    invoke-direct {v0, p0}, Lro/h;-><init>(Lro/j;)V

    .line 239
    .line 240
    .line 241
    const-wide/16 v1, 0x3e8

    .line 242
    .line 243
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    .line 245
    .line 246
    :cond_e
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
    invoke-direct {p0, v1}, Lro/j;->t(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lro/j;->a:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lro/j;->h()Lro/a;

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
    iget-object p2, p0, Lro/j;->e:Landroid/view/View;

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
    return-void
.end method
