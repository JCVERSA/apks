.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->e(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$s;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;I)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/widget/MBImageView;->setImageUrl(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/widget/MBImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->d(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/videocommon/view/MyImageView;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance p2, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l$a;

    .line 64
    .line 65
    invoke-direct {p2, p0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l$a;-><init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$l;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method
