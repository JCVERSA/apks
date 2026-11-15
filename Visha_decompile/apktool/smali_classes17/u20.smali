.class public final Lu20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu20$a;
    }
.end annotation


# static fields
.field public static final d:Lu20$a;


# instance fields
.field public final a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

.field public b:Z

.field public c:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu20$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu20$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu20;->d:Lu20$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/internal/widget/EllipsizedTextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    return-void
.end method

.method public static synthetic a(Lu20;)Z
    .locals 0

    invoke-static {p0}, Lu20;->c(Lu20;)Z

    move-result p0

    return p0
.end method

.method public static final c(Lu20;)Z
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lu20;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lpha;->e(Landroid/widget/TextView;I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v0, v4}, Lpha;->f(Landroid/widget/TextView;I)I

    move-result v0

    if-lt v2, v0, :cond_1

    move v3, v4

    :cond_1
    if-lez v3, :cond_3

    iget-object v0, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    sget-object v0, Lne5;->a:Lne5;

    sget-object v1, Lcom/yandex/div/logging/Severity;->DEBUG:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v0, v1}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set new max lines "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Current drawing pass is canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v4, "AutoEllipsizeHelper"

    invoke-virtual {v0, v2, v4, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    invoke-virtual {p0, v3}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setMaxLines(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lu20;->f()V

    :goto_0
    return v1
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lt20;

    invoke-direct {v0, p0}, Lt20;-><init>(Lu20;)V

    iput-object v0, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lu20;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu20;->b()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lu20;->f()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu20;->a:Lcom/yandex/div/internal/widget/EllipsizedTextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lu20;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lu20;->b:Z

    return-void
.end method
