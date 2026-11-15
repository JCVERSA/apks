.class public Lcom/yalantis/ucrop/view/TransformImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/view/TransformImageView;->setImageUri(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/yalantis/ucrop/view/TransformImageView;


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/TransformImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "TransformImageView"

    const-string v1, "onFailure: setImageUri"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView;->h:Lcom/yalantis/ucrop/view/TransformImageView$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView$b;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lnf3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {v0, p3}, Lcom/yalantis/ucrop/view/TransformImageView;->b(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {p3, p4}, Lcom/yalantis/ucrop/view/TransformImageView;->c(Lcom/yalantis/ucrop/view/TransformImageView;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    invoke-static {p3, p2}, Lcom/yalantis/ucrop/view/TransformImageView;->a(Lcom/yalantis/ucrop/view/TransformImageView;Lnf3;)V

    iget-object p0, p0, Lcom/yalantis/ucrop/view/TransformImageView$a;->a:Lcom/yalantis/ucrop/view/TransformImageView;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/yalantis/ucrop/view/TransformImageView;->k:Z

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/view/TransformImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
