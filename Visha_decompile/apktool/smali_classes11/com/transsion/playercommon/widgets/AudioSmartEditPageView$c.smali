.class public Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;->a:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;->a:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;->a:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->x(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;->a:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->H(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$c;->a(Ljava/lang/String;)V

    return-void
.end method
