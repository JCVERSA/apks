.class public Lpcc$c;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpcc;->b(Lcom/transsion/widgets/RoundImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgets/RoundImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lpcc$c;->a:Lcom/transsion/widgets/RoundImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/lit8 v4, p1, 0x14

    iget-object p0, p0, Lpcc$c;->a:Lcom/transsion/widgets/RoundImageView;

    invoke-virtual {p0}, Lcom/transsion/widgets/RoundImageView;->getCornerRadius()F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
