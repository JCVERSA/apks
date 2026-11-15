.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$w;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showSettingsLayout(Landroid/view/View;Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$w;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$w;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$w;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->e1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
