.class Lcom/transsion/audio/widgets/MusicPlayListView$2;
.super Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/MusicPlayListView;->initCurrentRv(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;Ljava/util/List;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView$2;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/audio/adapter/AudioSettingLoopAdapter;-><init>(Ljava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public selectItem(ILcom/transsion/audio/data/AudioSettingItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/MusicPlayListView$2;->this$0:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p1, p0, Lcom/transsion/audio/widgets/MusicPlayListView;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/transsion/audio/data/AudioSettingItem;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/widgets/MusicPlayListView;->u(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;I)V

    return-void
.end method
