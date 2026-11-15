.class public final synthetic Lgvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iput-object p2, p0, Lgvb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lgvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iget-object p0, p0, Lgvb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->l4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
