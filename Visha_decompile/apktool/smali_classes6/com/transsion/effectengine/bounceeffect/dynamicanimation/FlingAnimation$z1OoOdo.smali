.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z1OoOdo"
.end annotation


# instance fields
.field public z1OoOdo:F

.field public final z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

.field public z1OoOif:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    return-void
.end method


# virtual methods
.method public final z1OoOdo(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOif:F

    return-void
.end method
