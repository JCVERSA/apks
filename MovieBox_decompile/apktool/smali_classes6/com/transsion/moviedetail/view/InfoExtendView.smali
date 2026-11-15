.class public final Lcom/transsion/moviedetail/view/InfoExtendView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010&\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/moviedetail/view/InfoExtendView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "j",
        "()V",
        "m",
        "",
        "getNewTextByConfig",
        "()Ljava/lang/String;",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "showData",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "desc",
        "(Ljava/lang/String;)V",
        "",
        "a",
        "Z",
        "isExtend",
        "Llm/a0;",
        "b",
        "Llm/a0;",
        "mViewBinding",
        "c",
        "Ljava/lang/String;",
        "description",
        "d",
        "I",
        "mMaxLinesOnShrink",
        "MovieDetail_psRelease"
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
.field private a:Z

.field private b:Llm/a0;

.field private c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/moviedetail/view/InfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/moviedetail/view/InfoExtendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/InfoExtendView;->j()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->a:Z

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->d:I

    return-void
.end method

.method private final getNewTextByConfig()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->b:Llm/a0;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v1, Llm/a0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v2, "getPaint(...)"

    .line 20
    .line 21
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v4, 0x17

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    if-le v2, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v0, v9, v2, v3, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v10, Landroid/text/StaticLayout;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x1

    .line 58
    const/high16 v6, 0x3f800000    # 1.0f

    .line 59
    .line 60
    move-object v1, v10

    .line 61
    move-object v2, v0

    .line 62
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget v3, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->d:I

    .line 73
    .line 74
    if-gt v2, v3, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/lit8 v1, v1, -0x3

    .line 84
    .line 85
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "..."

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/moviedetail/view/InfoExtendView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/InfoExtendView;->k(Lcom/transsion/moviedetail/view/InfoExtendView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/transsion/moviedetail/view/InfoExtendView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/moviedetail/view/InfoExtendView;->l(Lcom/transsion/moviedetail/view/InfoExtendView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/moviedetail/R$layout;->view_info_extend_layout:I

    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Llm/a0;->a(Landroid/view/View;)Llm/a0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->b:Llm/a0;

    .line 16
    .line 17
    return-void
.end method

.method private static final k(Lcom/transsion/moviedetail/view/InfoExtendView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/InfoExtendView;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final l(Lcom/transsion/moviedetail/view/InfoExtendView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/moviedetail/view/InfoExtendView;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->b:Llm/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Llm/a0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final showData(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->c:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->b:Llm/a0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Llm/a0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/transsion/moviedetail/view/n;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/view/n;-><init>(Lcom/transsion/moviedetail/view/InfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final showData(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->c:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/transsion/moviedetail/view/InfoExtendView;->b:Llm/a0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Llm/a0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/transsion/moviedetail/view/o;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/view/o;-><init>(Lcom/transsion/moviedetail/view/InfoExtendView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
