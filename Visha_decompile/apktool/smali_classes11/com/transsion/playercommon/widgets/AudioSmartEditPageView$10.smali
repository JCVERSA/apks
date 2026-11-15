.class Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->y(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$10;->this$0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method
