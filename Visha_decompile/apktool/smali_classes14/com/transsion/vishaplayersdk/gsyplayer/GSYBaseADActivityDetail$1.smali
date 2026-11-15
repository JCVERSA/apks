.class Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->showADFull()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/GSYBaseADActivityDetail;->clickForFullScreen()V

    return-void
.end method
