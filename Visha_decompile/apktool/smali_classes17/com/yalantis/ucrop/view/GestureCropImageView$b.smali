.class public Lcom/yalantis/ucrop/view/GestureCropImageView$b;
.super Lyv8$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yalantis/ucrop/view/GestureCropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/view/GestureCropImageView;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-direct {p0}, Lyv8$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;Ltd4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yalantis/ucrop/view/GestureCropImageView$b;-><init>(Lcom/yalantis/ucrop/view/GestureCropImageView;)V

    return-void
.end method


# virtual methods
.method public a(Lyv8;)Z
    .locals 2

    iget-object v0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p1}, Lyv8;->c()F

    move-result p1

    iget-object v1, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;->p(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result v1

    iget-object p0, p0, Lcom/yalantis/ucrop/view/GestureCropImageView$b;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-static {p0}, Lcom/yalantis/ucrop/view/GestureCropImageView;->q(Lcom/yalantis/ucrop/view/GestureCropImageView;)F

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/yalantis/ucrop/view/TransformImageView;->postRotate(FFF)V

    const/4 p0, 0x1

    return p0
.end method
