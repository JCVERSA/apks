.class final Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/b;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/b;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/ui/adapter/b;->f()Lqr/e0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object p2, p2, Lqr/e0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$a;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
