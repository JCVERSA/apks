.class public Lcom/yandex/div/internal/widget/SwitchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/SwitchView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0010\u0018\u0000 >2\u00020\u0001:\u0001?B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u000f2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000f0\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\'\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010 \u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001b\u0010\"\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\"\u0010\nJ\u001b\u0010#\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008#\u0010\nJ\u000f\u0010$\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008$\u0010\u0017R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R.\u0010/\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0014\u00102\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u00101R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00101R\u001c\u00108\u001a\u0004\u0018\u0001048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u0010\u0017\u001a\u0004\u00085\u00106R\u001c\u0010;\u001a\u0004\u0018\u0001048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008:\u0010\u0017\u001a\u0004\u00089\u00106R$\u0010<\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008<\u0010\r\"\u0004\u0008=\u0010\u0011\u00a8\u0006@"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/SwitchView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "",
        "value",
        "d",
        "(IF)I",
        "",
        "isEnabled",
        "()Z",
        "enabled",
        "Lzfb;",
        "setEnabled",
        "(Z)V",
        "Lkotlin/Function1;",
        "listener",
        "setOnCheckedChangeListener",
        "(Le74;)V",
        "e",
        "()V",
        "m",
        "f",
        "resId",
        "Landroid/util/TypedValue;",
        "typedValue",
        "outputIsResource",
        "h",
        "(ILandroid/util/TypedValue;Z)I",
        "k",
        "(II)I",
        "j",
        "i",
        "g",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "b",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "switch",
        "c",
        "Ljava/lang/Integer;",
        "getColorOn",
        "()Ljava/lang/Integer;",
        "setColorOn",
        "(Ljava/lang/Integer;)V",
        "colorOn",
        "",
        "[I",
        "trackTintColors",
        "thumbTintColors",
        "Landroid/content/res/ColorStateList;",
        "getThumbTintList$div_release",
        "()Landroid/content/res/ColorStateList;",
        "getThumbTintList$div_release$annotations",
        "thumbTintList",
        "getTrackTintList$div_release",
        "getTrackTintList$div_release$annotations",
        "trackTintList",
        "isChecked",
        "setChecked",
        "Companion",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/yandex/div/internal/widget/SwitchView$a;

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[[I


# instance fields
.field public final b:Landroidx/appcompat/widget/SwitchCompat;

.field public c:Ljava/lang/Integer;

.field public final d:[I

.field public final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div/internal/widget/SwitchView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/widget/SwitchView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/widget/SwitchView;->Companion:Lcom/yandex/div/internal/widget/SwitchView$a;

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/internal/widget/SwitchView;->f:[I

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/yandex/div/internal/widget/SwitchView;->g:[I

    const/4 v2, 0x0

    new-array v2, v2, [I

    sput-object v2, Lcom/yandex/div/internal/widget/SwitchView;->h:[I

    filled-new-array {v0, v1, v2}, [[I

    move-result-object v0

    sput-object v0, Lcom/yandex/div/internal/widget/SwitchView;->i:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x3

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SwitchView;->e:[I

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setShowText(Z)V

    sget-object p1, Lb17;->a:Lb17;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {p1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lx7a;

    invoke-direct {p1, p0}, Lx7a;-><init>(Lcom/yandex/div/internal/widget/SwitchView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->f()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/internal/widget/SwitchView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/SwitchView;->c(Lcom/yandex/div/internal/widget/SwitchView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Le74;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/div/internal/widget/SwitchView;->l(Le74;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final c(Lcom/yandex/div/internal/widget/SwitchView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->g()V

    return-void
.end method

.method private final d(IF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/SwitchView;->k(II)I

    move-result p0

    return p0
.end method

.method public static synthetic getThumbTintList$div_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getTrackTintList$div_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final l(Le74;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "$listener"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/SwitchView;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/SwitchView;->e:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    iget-object v1, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v3}, Lcom/yandex/div/internal/widget/SwitchView;->d(IF)I

    move-result v0

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->m()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x1010030

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/yandex/div/internal/widget/SwitchView;->h(ILandroid/util/TypedValue;Z)I

    move-result v1

    const v3, 0x101042a

    invoke-virtual {p0, v3, v0, v2}, Lcom/yandex/div/internal/widget/SwitchView;->h(ILandroid/util/TypedValue;Z)I

    move-result v3

    sget v4, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v0, v5}, Lcom/yandex/div/internal/widget/SwitchView;->h(ILandroid/util/TypedValue;Z)I

    move-result v0

    iget-object v4, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {p0, v3, v6}, Lcom/yandex/div/internal/widget/SwitchView;->d(IF)I

    move-result v7

    aput v7, v4, v5

    iget-object v4, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    invoke-virtual {p0, v1, v6}, Lcom/yandex/div/internal/widget/SwitchView;->j(IF)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v4, v7

    iget-object v4, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v1, v6}, Lcom/yandex/div/internal/widget/SwitchView;->j(IF)I

    move-result v1

    aput v1, v4, v2

    iget-object v1, p0, Lcom/yandex/div/internal/widget/SwitchView;->e:[I

    aput v3, v1, v5

    aput v0, v1, v7

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v3}, Lcom/yandex/div/internal/widget/SwitchView;->i(IF)I

    move-result p0

    aput p0, v1, v2

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public final getColorOn()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getThumbTintList$div_release()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final getTrackTintList$div_release()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public final h(ILandroid/util/TypedValue;Z)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget p0, p2, Landroid/util/TypedValue;->data:I

    :goto_0
    return p0
.end method

.method public final i(IF)I
    .locals 0

    const/4 p0, -0x1

    invoke-static {p1, p0, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    return p0
.end method

.method public final isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final j(IF)I
    .locals 1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/SwitchView;->k(II)I

    move-result p0

    return p0
.end method

.method public final k(II)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2, p0, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/yandex/div/internal/widget/SwitchView;->i:[[I

    iget-object v3, p0, Lcom/yandex/div/internal/widget/SwitchView;->d:[I

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->e:[I

    invoke-direct {v1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final setColorOn(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SwitchView;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/SwitchView;->e()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnCheckedChangeListener(Le74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le74;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SwitchView;->b:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lw7a;

    invoke-direct {v0, p1}, Lw7a;-><init>(Le74;)V

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
