.class public final Lcom/tn/lib/view/DefaultView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/DefaultView$DefaultViewStyle;,
        Lcom/tn/lib/view/DefaultView$ModelStyle;,
        Lcom/tn/lib/view/DefaultView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u0002[\\B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000cB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\rB#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000eJA\u0010\u0016\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\u0015\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008!\u0010\u001aJ\u0017\u0010#\u001a\u00020\u00152\u0008\u0008\u0001\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u0008#\u0010\u001aJ\u0015\u0010$\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008$\u0010 J\u0015\u0010\'\u001a\u00020\u00152\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u00152\u0008\u0008\u0001\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u0008)\u0010\u001aJ\u0015\u0010*\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008*\u0010\u001aJ\u0015\u0010+\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008+\u0010 J\u0017\u0010.\u001a\u00020\u00152\u0008\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00100\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u00080\u0010\u001aJ\u0015\u00101\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u00081\u0010\u001aJ\u0017\u00104\u001a\u00020\u00152\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00084\u00105J\u0015\u00106\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u00086\u0010\u001aJ\u0015\u00107\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u00087\u0010 J\u0017\u00108\u001a\u00020\u00152\u0008\u0010-\u001a\u0004\u0018\u00010,\u00a2\u0006\u0004\u00088\u0010/J\u0015\u00109\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u00089\u0010\u001aJ\u0015\u0010:\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008:\u0010\u001aJ\u0017\u0010;\u001a\u00020\u00152\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u0008;\u00105J\u0015\u0010<\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008<\u0010 J\u0017\u0010=\u001a\u00020\u00152\u0008\u0008\u0001\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u0008=\u0010\u001aJ\u0015\u0010>\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008>\u0010\u001aJ\u0017\u0010?\u001a\u00020\u00152\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u0008?\u00105J\u0015\u0010B\u001a\u00020\u00152\u0006\u0010A\u001a\u00020@\u00a2\u0006\u0004\u0008B\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010JR\u0018\u0010Q\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010JR\u0018\u0010U\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR\u0018\u0010W\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010JR\u0018\u0010Z\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/tn/lib/view/DefaultView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "Lcom/tn/lib/view/DefaultView$ModelStyle;",
        "modelStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/tn/lib/view/DefaultView$ModelStyle;)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/tn/lib/view/DefaultView$ModelStyle;)V",
        "",
        "showImage",
        "showTitle",
        "showBtn",
        "showDesc",
        "showTip",
        "",
        "j",
        "(ZZZZZ)V",
        "resId",
        "setDefaultImage",
        "(I)V",
        "visibility",
        "setDefaultImageViewVisibility",
        "",
        "text",
        "setTitleText",
        "(Ljava/lang/CharSequence;)V",
        "setTitleViewVisibility",
        "color",
        "setTitleTextColor",
        "setDescText",
        "",
        "size",
        "setDescTextSize",
        "(F)V",
        "setDescTextColor",
        "setDescViewVisibility",
        "setBtnText",
        "Landroid/graphics/drawable/Drawable;",
        "background",
        "setBtnBg",
        "(Landroid/graphics/drawable/Drawable;)V",
        "setBtnTextColor",
        "setBtnVisibility",
        "Landroid/view/View$OnClickListener;",
        "onClickListener",
        "setBtnClickListener",
        "(Landroid/view/View$OnClickListener;)V",
        "setBtnLayoutVisibility",
        "setLeftBtnText",
        "setLeftBtnBg",
        "setLeftBtnTextColor",
        "setLeftBtnVisibility",
        "setLeftBtnClickListener",
        "setTipOperationText",
        "setTipTextColor",
        "setTipOperationVisibility",
        "setTipOperationClickListener",
        "Lcom/tn/lib/view/DefaultView$DefaultViewStyle;",
        "style",
        "setStyle",
        "(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V",
        "Lcom/tn/lib/view/TRImageView;",
        "a",
        "Lcom/tn/lib/view/TRImageView;",
        "defaultImageView",
        "Landroid/widget/TextView;",
        "b",
        "Landroid/widget/TextView;",
        "tvTitle",
        "c",
        "tvDesc",
        "d",
        "btnLeft",
        "e",
        "btnRight",
        "Landroid/widget/LinearLayout;",
        "f",
        "Landroid/widget/LinearLayout;",
        "btnLayout",
        "g",
        "tvTipOperation",
        "h",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "llTip",
        "DefaultViewStyle",
        "ModelStyle",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/tn/lib/view/TRImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroidx/appcompat/widget/LinearLayoutCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/tn/lib/view/DefaultView$ModelStyle;->MODEL_STYLE_WHITE:Lcom/tn/lib/view/DefaultView$ModelStyle;

    invoke-direct {p0, p1, v0}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/tn/lib/view/DefaultView$ModelStyle;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelStyle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    const/16 p3, 0x31

    .line 3
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 4
    sget-object p3, Lzg/h;->a:Lzg/h;

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-virtual {p3, p1, v0}, Lzg/h;->a(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x42e80000    # 116.0f

    .line 5
    invoke-virtual {p3, p1, v1}, Lzg/h;->a(Landroid/content/Context;F)I

    move-result p3

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/tn/lib/widget/R$layout;->libui_layout_default_view:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget p1, Lcom/tn/lib/widget/R$id;->iv_default_image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/tn/lib/view/TRImageView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->a:Lcom/tn/lib/view/TRImageView;

    .line 9
    sget p1, Lcom/tn/lib/widget/R$id;->tv_default_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->b:Landroid/widget/TextView;

    .line 10
    sget p1, Lcom/tn/lib/widget/R$id;->tv_desc:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 11
    sget p1, Lcom/tn/lib/widget/R$id;->btn_left:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 12
    sget p1, Lcom/tn/lib/widget/R$id;->btn_right:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 13
    sget p1, Lcom/tn/lib/widget/R$id;->ll_btn:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->f:Landroid/widget/LinearLayout;

    .line 14
    sget p1, Lcom/tn/lib/widget/R$id;->tv_tip_operation:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->g:Landroid/widget/TextView;

    .line 15
    sget p1, Lcom/tn/lib/widget/R$id;->ll_tip:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p1, p0, Lcom/tn/lib/view/DefaultView;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 16
    iget-object p1, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 17
    :cond_0
    sget-object p1, Lcom/tn/lib/view/DefaultView$ModelStyle;->MODEL_STYLE_NIGHT:Lcom/tn/lib/view/DefaultView$ModelStyle;

    if-ne p4, p1, :cond_1

    const/high16 p1, -0x1000000

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    iget-object p1, p0, Lcom/tn/lib/view/DefaultView;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 21
    sget p3, Lcom/tn/lib/widget/R$color;->base_color_999999:I

    .line 22
    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p1, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 25
    sget p3, Lcom/tn/lib/widget/R$color;->base_color_999999:I

    .line 26
    invoke-static {p2, p3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/tn/lib/view/DefaultView$ModelStyle;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/tn/lib/view/DefaultView$ModelStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tn/lib/view/DefaultView$ModelStyle;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, p2}, Lcom/tn/lib/view/DefaultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/tn/lib/view/DefaultView$ModelStyle;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/lib/view/DefaultView;->h(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/lib/view/DefaultView;->i(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tn/lib/view/DefaultView;->g(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final h(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final i(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final j(ZZZZZ)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move p1, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/DefaultView;->setDefaultImageViewVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    move p1, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move p1, v0

    .line 17
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/DefaultView;->setTitleViewVisibility(I)V

    .line 18
    .line 19
    .line 20
    if-eqz p3, :cond_2

    .line 21
    .line 22
    move p1, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move p1, v0

    .line 25
    :goto_2
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/DefaultView;->setBtnLayoutVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p4, :cond_3

    .line 29
    .line 30
    move p1, v1

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move p1, v0

    .line 33
    :goto_3
    invoke-virtual {p0, p1}, Lcom/tn/lib/view/DefaultView;->setDescViewVisibility(I)V

    .line 34
    .line 35
    .line 36
    if-eqz p5, :cond_4

    .line 37
    .line 38
    move v0, v1

    .line 39
    :cond_4
    invoke-virtual {p0, v0}, Lcom/tn/lib/view/DefaultView;->setTipOperationVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    move p3, v0

    .line 17
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 18
    .line 19
    if-eqz p7, :cond_3

    .line 20
    .line 21
    move p4, v0

    .line 22
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 23
    .line 24
    if-eqz p6, :cond_4

    .line 25
    .line 26
    move p5, v0

    .line 27
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/tn/lib/view/DefaultView;->j(ZZZZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final setBtnBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/tn/lib/view/g;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/tn/lib/view/g;-><init>(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setBtnLayoutVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setBtnText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setBtnTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setBtnVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDefaultImage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->a:Lcom/tn/lib/view/TRImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDefaultImageViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->a:Lcom/tn/lib/view/TRImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDescText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setDescTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDescTextSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDescViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setLeftBtnBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setLeftBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/tn/lib/view/h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/tn/lib/view/h;-><init>(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setLeftBtnText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setLeftBtnTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setLeftBtnVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setStyle(Lcom/tn/lib/view/DefaultView$DefaultViewStyle;)V
    .locals 13

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tn/lib/view/DefaultView$a;->a:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/high16 v8, 0x41600000    # 14.0f

    .line 15
    .line 16
    const/high16 v9, 0x41800000    # 16.0f

    .line 17
    .line 18
    const-string v10, "getContext(...)"

    .line 19
    .line 20
    const-string v11, "null cannot be cast to non-null type androidx.appcompat.widget.LinearLayoutCompat.LayoutParams"

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 27
    .line 28
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :pswitch_0
    const/16 v6, 0xc

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v0, p0

    .line 41
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    :cond_1
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 63
    .line 64
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 78
    .line 79
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v0, :cond_a

    .line 82
    .line 83
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :pswitch_1
    const/16 v6, 0x8

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    move-object v0, p0

    .line 97
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 101
    .line 102
    if-eqz v0, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :pswitch_2
    const/16 v6, 0x9

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    const/4 v1, 0x0

    .line 113
    const/4 v2, 0x0

    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    move-object v0, p0

    .line 118
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 122
    .line 123
    if-eqz v0, :cond_a

    .line 124
    .line 125
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_3
    const/16 v6, 0x10

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    const/4 v1, 0x0

    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    const/4 v5, 0x0

    .line 138
    move-object v0, p0

    .line 139
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_4
    const/16 v6, 0x18

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    const/4 v1, 0x0

    .line 148
    const/4 v2, 0x0

    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v5, 0x0

    .line 152
    move-object v0, p0

    .line 153
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 157
    .line 158
    if-eqz v0, :cond_2

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 161
    .line 162
    .line 163
    :cond_2
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    :cond_3
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 175
    .line 176
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 190
    .line 191
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :pswitch_5
    const/16 v6, 0x18

    .line 201
    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v1, 0x0

    .line 204
    const/4 v2, 0x0

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v4, 0x0

    .line 207
    const/4 v5, 0x0

    .line 208
    move-object v0, p0

    .line 209
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 213
    .line 214
    if-eqz v0, :cond_4

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    sget v2, Lcom/tn/lib/widget/R$color;->cl33:I

    .line 221
    .line 222
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    :cond_4
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 230
    .line 231
    if-eqz v0, :cond_5

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    :cond_5
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 241
    .line 242
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 256
    .line 257
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :pswitch_6
    const/16 v6, 0x1a

    .line 267
    .line 268
    const/4 v7, 0x0

    .line 269
    const/4 v1, 0x0

    .line 270
    const/4 v2, 0x0

    .line 271
    const/4 v3, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    const/4 v5, 0x0

    .line 274
    move-object v0, p0

    .line 275
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 279
    .line 280
    if-eqz v0, :cond_6

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 283
    .line 284
    .line 285
    move-result-object v12

    .line 286
    :cond_6
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 290
    .line 291
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 305
    .line 306
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 307
    .line 308
    if-eqz v0, :cond_a

    .line 309
    .line 310
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :pswitch_7
    const/16 v6, 0x1e

    .line 316
    .line 317
    const/4 v7, 0x0

    .line 318
    const/4 v1, 0x0

    .line 319
    const/4 v2, 0x0

    .line 320
    const/4 v3, 0x0

    .line 321
    const/4 v4, 0x0

    .line 322
    const/4 v5, 0x0

    .line 323
    move-object v0, p0

    .line 324
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :pswitch_8
    const/16 v6, 0xd

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    const/4 v1, 0x0

    .line 333
    const/4 v2, 0x0

    .line 334
    const/4 v3, 0x0

    .line 335
    const/4 v4, 0x0

    .line 336
    const/4 v5, 0x0

    .line 337
    move-object v0, p0

    .line 338
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 342
    .line 343
    if-eqz v0, :cond_a

    .line 344
    .line 345
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    :pswitch_9
    const/16 v6, 0x19

    .line 351
    .line 352
    const/4 v7, 0x0

    .line 353
    const/4 v1, 0x0

    .line 354
    const/4 v2, 0x0

    .line 355
    const/4 v3, 0x0

    .line 356
    const/4 v4, 0x0

    .line 357
    const/4 v5, 0x0

    .line 358
    move-object v0, p0

    .line 359
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 363
    .line 364
    if-eqz v0, :cond_7

    .line 365
    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    sget v2, Lcom/tn/lib/widget/R$color;->cl33:I

    .line 371
    .line 372
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    .line 378
    .line 379
    :cond_7
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 380
    .line 381
    if-eqz v0, :cond_8

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    :cond_8
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 391
    .line 392
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 393
    .line 394
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 406
    .line 407
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 408
    .line 409
    if-eqz v0, :cond_a

    .line 410
    .line 411
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    .line 413
    .line 414
    goto :goto_0

    .line 415
    :pswitch_a
    const/16 v6, 0x1b

    .line 416
    .line 417
    const/4 v7, 0x0

    .line 418
    const/4 v1, 0x0

    .line 419
    const/4 v2, 0x0

    .line 420
    const/4 v3, 0x0

    .line 421
    const/4 v4, 0x0

    .line 422
    const/4 v5, 0x0

    .line 423
    move-object v0, p0

    .line 424
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 428
    .line 429
    if-eqz v0, :cond_9

    .line 430
    .line 431
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    :cond_9
    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$a;

    .line 439
    .line 440
    sget-object v0, Lzg/h;->a:Lzg/h;

    .line 441
    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v1, v9}, Lzg/h;->a(Landroid/content/Context;F)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 454
    .line 455
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->c:Landroid/widget/TextView;

    .line 456
    .line 457
    if-eqz v0, :cond_a

    .line 458
    .line 459
    invoke-virtual {v0, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .line 461
    .line 462
    goto :goto_0

    .line 463
    :pswitch_b
    const/16 v6, 0x1f

    .line 464
    .line 465
    const/4 v7, 0x0

    .line 466
    const/4 v1, 0x0

    .line 467
    const/4 v2, 0x0

    .line 468
    const/4 v3, 0x0

    .line 469
    const/4 v4, 0x0

    .line 470
    const/4 v5, 0x0

    .line 471
    move-object v0, p0

    .line 472
    invoke-static/range {v0 .. v7}, Lcom/tn/lib/view/DefaultView;->k(Lcom/tn/lib/view/DefaultView;ZZZZZILjava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    :cond_a
    :goto_0
    return-void

    .line 476
    nop

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setTipOperationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/tn/lib/view/i;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/tn/lib/view/i;-><init>(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setTipOperationText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->g:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setTipOperationVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setTipTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setTitleTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setTitleViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tn/lib/view/DefaultView;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
