.class public final synthetic Lhla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lhla;->c:Landroid/widget/ImageView;

    iput-object p3, p0, Lhla;->d:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lhla;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iget-object v1, p0, Lhla;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lhla;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->u(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
