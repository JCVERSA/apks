.class public final synthetic Ln5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/activities/BaseActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5b;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iput-object p2, p0, Ln5b;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ln5b;->b:Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Ln5b;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0, p1}, Lo5b;->a(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;Landroid/view/View;)V

    return-void
.end method
