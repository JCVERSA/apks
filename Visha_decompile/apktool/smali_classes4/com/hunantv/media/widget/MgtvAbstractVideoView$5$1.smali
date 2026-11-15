.class Lcom/hunantv/media/widget/MgtvAbstractVideoView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->onInfo(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5$1;->this$1:Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5$1;->this$1:Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;

    iget-object p0, p0, Lcom/hunantv/media/widget/MgtvAbstractVideoView$5;->this$0:Lcom/hunantv/media/widget/MgtvAbstractVideoView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/widget/MgtvAbstractVideoView;->toggleRenders(I)V

    return-void
.end method
