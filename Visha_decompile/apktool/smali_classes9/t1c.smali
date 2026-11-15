.class public final synthetic Lt1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lt1c;->c:Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;

    iput-object p3, p0, Lt1c;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lt1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lt1c;->c:Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;

    iget-object v2, p0, Lt1c;->d:Ljava/util/List;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/magicvideo/adapter/AudioTrackItemAdapter;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
