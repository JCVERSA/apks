.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static findIconView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const v0, 0x1020006

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, p0

    .line 13
    :goto_0
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    return-object p0
.end method

.method public static findMessageView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    .line 1
    const-string p0, "view"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p0, p1, Landroid/widget/TextView;

    .line 7
    .line 8
    const v0, 0x102000b

    .line 9
    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne p0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string p1, "You must set the ID value of TextView to android.R.id.message"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    instance-of p1, p0, Landroid/widget/TextView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    check-cast p0, Landroid/widget/TextView;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string p1, "You must include a TextView with an ID value of android.R.id.message"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method
