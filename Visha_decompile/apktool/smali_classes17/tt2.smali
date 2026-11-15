.class public final Ltt2;
.super Lb19;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 1

    const-string v0, "contentView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lb19;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ltt2;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
