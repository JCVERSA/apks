.class public abstract Lkm2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/CharSequence;Lcom/yandex/div/core/util/text/DivBackgroundSpan;IILoj3;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundSpan"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->getTextRoundedBgHelper$div_release()Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    invoke-direct {p1, p0, p5}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;-><init>(Landroid/view/View;Loj3;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->setTextRoundedBgHelper$div_release(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->getTextRoundedBgHelper$div_release()Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->i(Ljava/lang/CharSequence;Lcom/yandex/div/core/util/text/DivBackgroundSpan;II)Z

    move-result p0

    return p0
.end method
