.class public final synthetic Leyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/adapter/SettingMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Leyb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p3, p0, Leyb;->d:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 6

    iget-object v0, p0, Leyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Leyb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Leyb;->d:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/playercommon/adapter/SettingMenuAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
