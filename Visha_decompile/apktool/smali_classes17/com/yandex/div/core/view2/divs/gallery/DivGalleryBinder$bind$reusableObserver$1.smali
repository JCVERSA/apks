.class final Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;Lcom/yandex/div/core/state/DivStatePath;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $bindingContext:Lcom/yandex/div/core/view2/a;

.field final synthetic $div:Lcom/yandex/div2/DivGallery;

.field final synthetic $this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->this$0:Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$div:Lcom/yandex/div2/DivGallery;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->this$0:Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$this_bind:Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$bindingContext:Lcom/yandex/div/core/view2/a;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder$bind$reusableObserver$1;->$div:Lcom/yandex/div2/DivGallery;

    invoke-static {p1, v0, v1, p0}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;->f(Lcom/yandex/div/core/view2/divs/gallery/DivGalleryBinder;Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGallery;)V

    return-void
.end method
