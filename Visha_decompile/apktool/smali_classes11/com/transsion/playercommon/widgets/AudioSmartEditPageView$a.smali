.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->j0(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->c:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->a:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$a;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0}, Ltn;->j(Lcom/transsion/dbdata/beans/media/AudioItem;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
