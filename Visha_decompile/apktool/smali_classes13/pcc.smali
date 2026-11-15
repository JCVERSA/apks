.class public abstract Lpcc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;FIF)V
    .locals 1

    new-instance v0, Lpcc$d;

    invoke-direct {v0, p2, p3}, Lpcc$d;-><init>(IF)V

    invoke-static {p0, v0, p1}, Lpcc;->e(Landroid/view/View;Landroid/view/ViewOutlineProvider;F)V

    return-void
.end method

.method public static b(Lcom/transsion/widgets/RoundImageView;)V
    .locals 2

    new-instance v0, Lpcc$c;

    invoke-direct {v0, p0}, Lpcc$c;-><init>(Lcom/transsion/widgets/RoundImageView;)V

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v0, v1}, Lpcc;->e(Landroid/view/View;Landroid/view/ViewOutlineProvider;F)V

    return-void
.end method

.method public static c(Lcom/transsion/widgets/RoundImageView;)V
    .locals 2

    new-instance v0, Lpcc$b;

    invoke-direct {v0, p0}, Lpcc$b;-><init>(Lcom/transsion/widgets/RoundImageView;)V

    const/high16 v1, 0x43070000    # 135.0f

    invoke-static {p0, v0, v1}, Lpcc;->e(Landroid/view/View;Landroid/view/ViewOutlineProvider;F)V

    return-void
.end method

.method public static d(Landroid/widget/ImageView;)V
    .locals 2

    new-instance v0, Lpcc$a;

    invoke-direct {v0}, Lpcc$a;-><init>()V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v0, v1}, Lpcc;->e(Landroid/view/View;Landroid/view/ViewOutlineProvider;F)V

    return-void
.end method

.method public static e(Landroid/view/View;Landroid/view/ViewOutlineProvider;F)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
