.class Lcom/transsion/playercommon/activities/BaseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/activities/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseActivity$3;->this$0:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseActivity$3;->this$0:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseActivity;->needApplyBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseActivity$3;->this$0:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->V(Lcom/transsion/playercommon/activities/BaseActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->setThemeWindowBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
