.class public final Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;
.source "source.java"

# interfaces
.implements Lcj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\r\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J!\u0010\u001b\u001a\u00020\n2\u0010\u0010\u001a\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;",
        "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;",
        "Lcj/a;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "index",
        "totalCount",
        "",
        "onSelected",
        "(II)V",
        "onDeselected",
        "changeLocal",
        "()V",
        "resId",
        "setTextById",
        "(I)V",
        "setHintById",
        "",
        "srt",
        "setHintWithString",
        "(Ljava/lang/CharSequence;)V",
        "setTextWithString",
        "Lkotlin/Function0;",
        "action",
        "setTextAction",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lcj/c;",
        "c",
        "Lcj/c;",
        "textDelegate",
        "Downloader_psRelease"
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
.field private final c:Lcj/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x41000000    # 8.0f

    .line 10
    .line 11
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget v1, Lcom/tn/lib/widget/R$color;->main:I

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/tn/lib/widget/R$color;->text_02:I

    .line 25
    .line 26
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    .line 31
    .line 32
    .line 33
    const/high16 v1, 0x41800000    # 16.0f

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x11

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    sget p1, Lcom/transsnet/downloader/R$drawable;->selector_download_resolution_bg:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcj/c;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcj/c;-><init>(Landroid/widget/TextView;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public changeLocal()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcj/c;->changeLocal()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onDeselected(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onDeselected(II)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSelected(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onSelected(II)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/transsnet/downloader/R$drawable;->bg_res_ep_tab:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setHintById(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcj/c;->b(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHintWithString(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcj/c;->c(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLocalChangeListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcj/a$a;->a(Lcj/a;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setTextAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcj/c;->e(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextById(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcj/c;->f(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextWithString(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/ResolutionEpTabTitleView;->c:Lcj/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcj/c;->g(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
