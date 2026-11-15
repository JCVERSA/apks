.class public final synthetic Lj1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lj1c;->c:Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lj1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lj1c;->c:Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/magicvideo/adapter/MediaResolutionItemAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
