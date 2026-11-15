.class public final synthetic Ljw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw0;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    iput-object p2, p0, Ljw0;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Ljw0;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;

    iget-object p0, p0, Ljw0;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;->v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/ClarityDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/ClarityAdatpter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
