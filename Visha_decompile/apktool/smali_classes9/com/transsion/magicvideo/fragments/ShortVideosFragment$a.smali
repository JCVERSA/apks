.class public Lcom/transsion/magicvideo/fragments/ShortVideosFragment$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/ShortVideosFragment;->S2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/transsion/magicvideo/fragments/ShortVideosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/ShortVideosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/ShortVideosFragment$a;->c:Lcom/transsion/magicvideo/fragments/ShortVideosFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p0, 0x2

    const/16 p1, 0x485

    if-eq p2, p0, :cond_1

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_END:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/fragments/BaseFragment;->SCROLL_START:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
