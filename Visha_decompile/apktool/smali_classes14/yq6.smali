.class public final synthetic Lyq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;

.field public final synthetic c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyq6;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;

    iput-object p2, p0, Lyq6;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;

    iput-object p3, p0, Lyq6;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Lyq6;->b:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;

    iget-object v1, p0, Lyq6;->c:Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;

    iget-object v2, p0, Lyq6;->d:Landroid/view/View;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;->v(Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/MoreDialog;Lcom/transsion/vishaplayersdk/gsyplayer/video/controller/adapter/SettingAdatpter;Landroid/view/View;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
