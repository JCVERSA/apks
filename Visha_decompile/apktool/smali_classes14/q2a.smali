.class public final synthetic Lq2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2a;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    iput-object p2, p0, Lq2a;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;

    iput-boolean p3, p0, Lq2a;->d:Z

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lq2a;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;

    iget-object v1, p0, Lq2a;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;

    iget-boolean v2, p0, Lq2a;->d:Z

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;->v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/SubtitleDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SubtitleAdapter;ZLcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
