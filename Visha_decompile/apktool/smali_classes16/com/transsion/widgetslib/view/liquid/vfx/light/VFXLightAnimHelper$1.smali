.class Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$1;->this$0:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper$1;->this$0:Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;->d(Lcom/transsion/widgetslib/view/liquid/vfx/light/VFXLightAnimHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
