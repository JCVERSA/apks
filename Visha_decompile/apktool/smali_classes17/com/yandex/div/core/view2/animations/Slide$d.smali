.class public final Lcom/yandex/div/core/view2/animations/Slide$d;
.super Lcom/yandex/div/core/view2/animations/Slide$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/animations/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/div/core/view2/animations/Slide$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;I)F
    .locals 0

    const-string p0, "sceneRoot"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sget-object p1, Lcom/yandex/div/core/view2/animations/Slide;->e:Lcom/yandex/div/core/view2/animations/Slide$e;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/yandex/div/core/view2/animations/Slide$e;->a(Lcom/yandex/div/core/view2/animations/Slide$e;II)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    return p0
.end method
