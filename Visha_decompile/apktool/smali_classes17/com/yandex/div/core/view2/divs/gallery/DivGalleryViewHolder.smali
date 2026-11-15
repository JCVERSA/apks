.class public final Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;
.super Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;",
        "Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;",
        "Lcom/yandex/div/core/view2/a;",
        "parentContext",
        "Lcom/yandex/div/core/widget/DivViewWrapper;",
        "rootView",
        "Lrg2;",
        "divBinder",
        "Lcom/yandex/div/core/view2/DivViewCreator;",
        "viewCreator",
        "Lcom/yandex/div/core/state/DivStatePath;",
        "path",
        "<init>",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/widget/DivViewWrapper;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V",
        "bindingContext",
        "Lcom/yandex/div2/Div;",
        "div",
        "",
        "position",
        "index",
        "Lzfb;",
        "f",
        "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)V",
        "d",
        "()V",
        "w",
        "Lcom/yandex/div/core/widget/DivViewWrapper;",
        "x",
        "Lrg2;",
        "y",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final y:Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder$a;


# instance fields
.field public final w:Lcom/yandex/div/core/widget/DivViewWrapper;

.field public final x:Lrg2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;->y:Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder$a;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/widget/DivViewWrapper;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 6

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;-><init>(Lcom/yandex/div/core/widget/DivViewWrapper;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;->w:Lcom/yandex/div/core/widget/DivViewWrapper;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;->x:Lrg2;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    sget-object p0, Lne5;->a:Lne5;

    sget-object v0, Lcom/yandex/div/logging/Severity;->DEBUG:Lcom/yandex/div/logging/Severity;

    invoke-virtual {p0, v0}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "Gallery holder reuse failed"

    const-string v2, "DivGalleryViewHolder"

    invoke-virtual {p0, v0, v2, v1}, Lne5;->b(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)V
    .locals 1

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivCollectionViewHolder;->a(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;I)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;->w:Lcom/yandex/div/core/widget/DivViewWrapper;

    sget p2, Lcom/yandex/div/R$id;->div_gallery_item_index:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/gallery/DivGalleryViewHolder;->x:Lrg2;

    invoke-virtual {p0}, Lrg2;->a()V

    return-void
.end method
