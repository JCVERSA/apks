.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfor;
.super Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final z1OoOdo(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public final z1OoOdo(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
