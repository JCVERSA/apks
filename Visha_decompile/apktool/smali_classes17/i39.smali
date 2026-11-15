.class public abstract Li39;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li39$a;
    }
.end annotation


# direct methods
.method public static final a(Lcom/yandex/div2/DivGallery$ScrollMode;)Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li39$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;->CENTER:Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;->DEFAULT:Lcom/yandex/div/core/view2/divs/gallery/ScrollPosition;

    :goto_0
    return-object p0
.end method
