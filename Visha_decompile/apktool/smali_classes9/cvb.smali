.class public final synthetic Lcvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvb;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcvb;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->r4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
