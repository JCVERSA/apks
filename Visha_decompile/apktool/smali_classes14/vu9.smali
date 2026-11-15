.class public final synthetic Lvu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvu9;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;

    iput-object p2, p0, Lvu9;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lvu9;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;

    iget-object p0, p0, Lvu9;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;->v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SpeedDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/PlaySpeedAdatpter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
