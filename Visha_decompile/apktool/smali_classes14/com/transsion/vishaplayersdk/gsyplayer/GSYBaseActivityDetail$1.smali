.class Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->showFull()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseActivityDetail;->clickForFullScreen()V

    return-void
.end method
