.class public final Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\r\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\r\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u000cR\"\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001b\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "idleTrigger",
        "()V",
        "refreshTrigger",
        "secondFloorTrigger",
        "refreshing",
        "Lpw/e;",
        "a",
        "Lpw/e;",
        "getBinding",
        "()Lpw/e;",
        "setBinding",
        "(Lpw/e;)V",
        "binding",
        "",
        "b",
        "Z",
        "isAbMode",
        "()Z",
        "setAbMode",
        "(Z)V",
        "wrapperad_psRelease"
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
.field private a:Lpw/e;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lpw/e;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpw/e;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->i(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    invoke-virtual {p0}, Lpw/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getBinding()Lpw/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final idleTrigger()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    iget-object v0, v0, Lpw/e;->d:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const-string v1, "progressBar"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 14
    .line 15
    iget-object v0, v0, Lpw/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "Pull to refresh"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lcom/transsion/wrapperad/R$drawable;->ic_loading_white:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final isAbMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final refreshTrigger()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    iget-object v0, v0, Lpw/e;->d:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const-string v1, "progressBar"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 14
    .line 15
    iget-object v0, v0, Lpw/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v1, "Release to refresh or keep pulling"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lcom/transsion/wrapperad/R$drawable;->ic_loading_white:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2, v1, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final refreshing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    iget-object v0, v0, Lpw/e;->d:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const-string v1, "progressBar"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 14
    .line 15
    iget-object v0, v0, Lpw/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final secondFloorTrigger()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 2
    .line 3
    iget-object v0, v0, Lpw/e;->d:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    const-string v1, "progressBar"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 14
    .line 15
    iget-object v0, v0, Lpw/e;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    const-string v1, "Release for surprise"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    sget v2, Lcom/transsion/wrapperad/R$drawable;->ic_gift_white:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 29
    .line 30
    invoke-virtual {v0}, Lpw/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/transsion/wrapperad/view/secondfloor/f;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/transsion/wrapperad/view/secondfloor/f;-><init>(Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final setAbMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setBinding(Lpw/e;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/wrapperad/view/secondfloor/SecondFloorArcCoverView;->a:Lpw/e;

    .line 7
    .line 8
    return-void
.end method
