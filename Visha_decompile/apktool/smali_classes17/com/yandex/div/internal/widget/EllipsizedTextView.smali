.class public Lcom/yandex/div/internal/widget/EllipsizedTextView;
.super Lcom/yandex/div/internal/widget/SuperLineHeightTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/EllipsizedTextView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u00081\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 o2\u00020\u0001:\u0001@B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ/\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008 \u0010!J!\u0010$\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008$\u0010%J!\u0010&\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008&\u0010%J\u000f\u0010\'\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\'\u0010\u0018J\u000f\u0010(\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008(\u0010\u0018J\u000f\u0010)\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008)\u0010*J#\u0010-\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u00100\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0019\u00104\u001a\u00020\u000c2\u0008\u00103\u001a\u0004\u0018\u000102H\u0016\u00a2\u0006\u0004\u00084\u00105J1\u00109\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u00106\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u00089\u0010:J\u001f\u0010=\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008=\u0010>J/\u0010?\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008?\u0010\u0016J\u000f\u0010@\u001a\u00020\u0006H\u0004\u00a2\u0006\u0004\u0008@\u0010AR*\u0010\u000b\u001a\u00020\n2\u0006\u0010B\u001a\u00020\n8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010C\u001a\u0004\u0008D\u0010*\"\u0004\u0008E\u0010\u000eR*\u0010J\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020\u001b8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010F\u001a\u0004\u0008G\u0010\u001d\"\u0004\u0008H\u0010IR.\u0010P\u001a\u0004\u0018\u0001022\u0008\u0010B\u001a\u0004\u0018\u0001028\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008K\u0010L\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u00105R\u0016\u0010Q\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010FR4\u0010U\u001a\u0004\u0018\u00010\n2\u0008\u0010B\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001c\u0010C\u0012\u0004\u0008T\u0010\u0018\u001a\u0004\u0008R\u0010*\"\u0004\u0008S\u0010\u000eR.\u0010Y\u001a\u0004\u0018\u00010\n2\u0008\u0010V\u001a\u0004\u0018\u00010\n8\u0006@BX\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010C\u0012\u0004\u0008X\u0010\u0018\u001a\u0004\u0008W\u0010*R\"\u0010Z\u001a\u00020\u001b8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010F\u001a\u0004\u0008Z\u0010\u001d\"\u0004\u0008[\u0010IR\u0016\u0010]\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\\R\"\u0010a\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010\\\u001a\u0004\u0008_\u0010A\"\u0004\u0008`\u00101R\u0018\u0010c\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010CR\u0016\u0010g\u001a\u00020d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0016\u0010i\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010FR\u001a\u0010n\u001a\u00020j8\u0002X\u0082\u0004\u00a2\u0006\u000c\n\u0004\u0008k\u0010l\u0012\u0004\u0008m\u0010\u0018\u00a8\u0006p"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/EllipsizedTextView;",
        "Lcom/yandex/div/internal/widget/SuperLineHeightTextView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "ellipsis",
        "Lzfb;",
        "j",
        "(Ljava/lang/CharSequence;)V",
        "text",
        "setTextInternal",
        "width",
        "height",
        "oldWidth",
        "oldHeight",
        "l",
        "(IIII)V",
        "k",
        "()V",
        "e",
        "d",
        "",
        "i",
        "()Z",
        "c",
        "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;",
        "b",
        "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I",
        "textWidth",
        "Landroid/text/Layout;",
        "f",
        "(Ljava/lang/CharSequence;I)Landroid/text/Layout;",
        "h",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "getText",
        "()Ljava/lang/CharSequence;",
        "Landroid/widget/TextView$BufferType;",
        "type",
        "setText",
        "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V",
        "maxLines",
        "setMaxLines",
        "(I)V",
        "Landroid/text/TextUtils$TruncateAt;",
        "where",
        "setEllipsize",
        "(Landroid/text/TextUtils$TruncateAt;)V",
        "start",
        "lengthBefore",
        "lengthAfter",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "onSizeChanged",
        "a",
        "()I",
        "value",
        "Ljava/lang/CharSequence;",
        "getEllipsis",
        "setEllipsis",
        "Z",
        "getAutoEllipsize",
        "setAutoEllipsize",
        "(Z)V",
        "autoEllipsize",
        "g",
        "Landroid/text/TextUtils$TruncateAt;",
        "getEllipsisLocation",
        "()Landroid/text/TextUtils$TruncateAt;",
        "setEllipsisLocation",
        "ellipsisLocation",
        "isRemeasureNeeded",
        "getEllipsizedText",
        "setEllipsizedText",
        "getEllipsizedText$annotations",
        "ellipsizedText",
        "<set-?>",
        "getDisplayText",
        "getDisplayText$annotations",
        "displayText",
        "isInternalTextChange",
        "setInternalTextChange",
        "I",
        "lastMeasuredWidth",
        "m",
        "getLastMeasuredHeight",
        "setLastMeasuredHeight",
        "lastMeasuredHeight",
        "n",
        "originalText",
        "",
        "o",
        "F",
        "cachedEllipsisWidth",
        "p",
        "isEllipsizeRequested",
        "Lu20;",
        "q",
        "Lu20;",
        "getAutoEllipsizeHelper$annotations",
        "autoEllipsizeHelper",
        "Companion",
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
.field public static final Companion:Lcom/yandex/div/internal/widget/EllipsizedTextView$a;

.field public static final DEFAULT_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final NOT_SET:I = -0x1


# instance fields
.field public e:Ljava/lang/CharSequence;

.field public f:Z

.field public g:Landroid/text/TextUtils$TruncateAt;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Ljava/lang/CharSequence;

.field public o:F

.field public p:Z

.field public final q:Lu20;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/internal/widget/EllipsizedTextView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/internal/widget/EllipsizedTextView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->Companion:Lcom/yandex/div/internal/widget/EllipsizedTextView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/EllipsizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/EllipsizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string v0, "\u2026"

    iput-object v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    .line 6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->g:Landroid/text/TextUtils$TruncateAt;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->l:I

    .line 8
    iput v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->m:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 9
    iput v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->o:F

    .line 10
    new-instance v1, Lu20;

    invoke-direct {v1, p0}, Lu20;-><init>(Lcom/yandex/div/internal/widget/EllipsizedTextView;)V

    iput-object v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->q:Lu20;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    sget-object v1, Lcom/yandex/div/R$styleable;->EllipsizedTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026extView, defStyleAttr, 0)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    sget p2, Lcom/yandex/div/R$styleable;->EllipsizedTextView_ellipsis:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsis(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    .line 15
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/EllipsizedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/div/internal/widget/EllipsizedTextView;Ljava/lang/CharSequence;IILjava/lang/Object;)Landroid/text/Layout;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->f(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: layoutText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic getAutoEllipsizeHelper$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDisplayText$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getEllipsizedText$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final setEllipsizedText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setTextInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setTextInternal(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k:Z

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->a()I

    move-result v0

    if-gtz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lpha;->d(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->f(Ljava/lang/CharSequence;I)Landroid/text/Layout;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    const/4 v6, 0x1

    if-lt v3, v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    if-ne v3, v5, :cond_4

    int-to-float v3, v0

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_4

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->o:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, p2, v1, v3, v4}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->g(Lcom/yandex/div/internal/widget/EllipsizedTextView;Ljava/lang/CharSequence;IILjava/lang/Object;)Landroid/text/Layout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    iput p2, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->o:F

    :cond_5
    iput-boolean v6, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h:Z

    int-to-float p2, v0

    iget v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->o:F

    sub-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v2, p0, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    :goto_2
    invoke-virtual {v2, p0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_6

    if-lez p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_6
    if-lez p0, :cond_7

    add-int/lit8 p2, p0, -0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_7

    add-int/lit8 p0, p0, -0x1

    :cond_7
    return p0

    :cond_8
    :goto_3
    iput-boolean v6, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    if-gtz p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p0, v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    const-string v4, "\u2026"

    invoke-static {v1, v4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    if-nez v1, :cond_5

    :cond_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->n:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h:Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsizedText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsizedText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    iput-boolean v3, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->p:Z

    return-void
.end method

.method public final e()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->o:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h:Z

    return-void
.end method

.method public final f(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 9

    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method public final getAutoEllipsize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->f:Z

    return p0
.end method

.method public final getDisplayText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getEllipsis()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getEllipsisLocation()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->g:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public final getEllipsizedText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getLastMeasuredHeight()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->m:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->n:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final h(Ljava/lang/CharSequence;I)Landroid/text/Layout;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const-string p2, "obtain(text, 0, text.length, paint, textWidth)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const-string p1, "builder\n            .set\u2026ncy)\n            .build()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_0
    const-string v0, "\u2026"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->g:Landroid/text/TextUtils$TruncateAt;

    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->p:Z

    return-void
.end method

.method public final l(IIII)V
    .locals 0

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->q:Lu20;

    invoke-virtual {p0}, Lu20;->d()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->q:Lu20;

    invoke-virtual {p0}, Lu20;->e()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->l:I

    iget v3, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->m:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->l(IIII)V

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->d()V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->onMeasure(II)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->l:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->l(IIII)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->n:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k()V

    return-void
.end method

.method public final setAutoEllipsize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->f:Z

    iget-object p0, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->q:Lu20;

    invoke-virtual {p0, p1}, Lu20;->g(Z)V

    return-void
.end method

.method public final setEllipsis(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setEllipsisLocation(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->g:Landroid/text/TextUtils$TruncateAt;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setAutoEllipsize(Z)V

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    return-void
.end method

.method public final setInternalTextChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k:Z

    return-void
.end method

.method public final setLastMeasuredHeight(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->m:I

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->k()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->e()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/EllipsizedTextView;->j:Ljava/lang/CharSequence;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
