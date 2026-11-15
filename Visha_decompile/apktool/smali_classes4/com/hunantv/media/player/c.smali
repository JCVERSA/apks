.class public Lcom/hunantv/media/player/c;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:Lcom/hunantv/media/player/f/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/hunantv/media/player/f/c;

    invoke-direct {p1, p0}, Lcom/hunantv/media/player/f/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->a(II)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/hunantv/media/player/f/c;->c(II)V

    iget-object p1, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p1}, Lcom/hunantv/media/player/f/c;->b()I

    move-result p1

    iget-object p2, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {p2}, Lcom/hunantv/media/player/f/c;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->b(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/c;->a:Lcom/hunantv/media/player/f/c;

    invoke-virtual {v0, p1}, Lcom/hunantv/media/player/f/c;->a(I)V

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
