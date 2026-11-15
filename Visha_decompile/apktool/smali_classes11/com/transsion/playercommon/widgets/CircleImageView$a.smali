.class public Lcom/transsion/playercommon/widgets/CircleImageView$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/CircleImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CircleImageView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CircleImageView$a;->a:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/CircleImageView;Lgw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/playercommon/widgets/CircleImageView$a;-><init>(Lcom/transsion/playercommon/widgets/CircleImageView;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CircleImageView$a;->a:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/CircleImageView;->b(Lcom/transsion/playercommon/widgets/CircleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CircleImageView$a;->a:Lcom/transsion/playercommon/widgets/CircleImageView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/CircleImageView;->a(Lcom/transsion/playercommon/widgets/CircleImageView;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_0
    return-void
.end method
