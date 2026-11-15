.class public final Le8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Le8;


# direct methods
.method public constructor <init>(Le8;)V
    .locals 0

    iput-object p1, p0, Le8$c;->b:Le8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Le8$c;->b:Le8;

    invoke-static {v0}, Le8;->b(Le8;)Le8$a;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Le8$c;->b:Le8;

    invoke-static {v2}, Le8;->c(Le8;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Le8$c;->b:Le8;

    invoke-static {v2}, Le8;->d(Le8;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v0, p0, Le8$c;->b:Le8;

    invoke-static {v0}, Le8;->e(Le8;)V

    iget-object p0, p0, Le8$c;->b:Le8;

    invoke-static {p0, v3}, Le8;->f(Le8;Z)V

    return v1

    :cond_2
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, p0, Le8$c;->b:Le8;

    invoke-static {v4}, Le8;->c(Le8;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    invoke-virtual {v0}, Le8$a;->b()I

    move-result v5

    if-gt v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Le8$a;->a()I

    move-result v0

    :goto_1
    iget-object v2, p0, Le8$c;->b:Le8;

    invoke-static {v2}, Le8;->c(Le8;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v2, p0, Le8$c;->b:Le8;

    invoke-static {v2}, Le8;->c(Le8;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p0, p0, Le8$c;->b:Le8;

    invoke-static {p0, v1}, Le8;->f(Le8;Z)V

    move v1, v3

    goto :goto_2

    :cond_5
    iget-object p0, p0, Le8$c;->b:Le8;

    invoke-static {p0}, Le8;->e(Le8;)V

    :goto_2
    return v1
.end method
