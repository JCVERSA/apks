.class public final Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;->b:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;->c:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-direct {p0, p1}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lrk2;->a()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;->c:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->setGifUrl$div_release(Landroid/net/Uri;)V

    return-void
.end method

.method public b(Ldq0;)V
    .locals 1

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lrk2;->b(Ldq0;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;->b:Lcom/yandex/div/core/view2/divs/DivGifImageBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;->c:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-static {v0, p0, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->h(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Ldq0;)V

    return-void
.end method
