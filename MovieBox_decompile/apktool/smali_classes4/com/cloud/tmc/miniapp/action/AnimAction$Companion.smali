.class public final Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/AnimAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

.field private static final ANIM_BOTTOM:I

.field public static final ANIM_DEFAULT:I = -0x1

.field public static final ANIM_EMPTY:I = 0x0

.field private static final ANIM_LEFT:I

.field private static final ANIM_RIGHT:I

.field private static final ANIM_SCALE:I

.field public static final ANIM_TOAST:I = 0x1030004

.field private static final ANIM_TOP:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 7
    .line 8
    sget v0, Lcom/cloud/tmc/miniapp/R$style;->ScaleAnimStyle:I

    .line 9
    .line 10
    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_SCALE:I

    .line 11
    .line 12
    sget v0, Lcom/cloud/tmc/miniapp/R$style;->TopAnimStyle:I

    .line 13
    .line 14
    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_TOP:I

    .line 15
    .line 16
    sget v0, Lcom/cloud/tmc/miniapp/R$style;->BottomAnimStyle:I

    .line 17
    .line 18
    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_BOTTOM:I

    .line 19
    .line 20
    sget v0, Lcom/cloud/tmc/miniapp/R$style;->LeftAnimStyle:I

    .line 21
    .line 22
    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_LEFT:I

    .line 23
    .line 24
    sget v0, Lcom/cloud/tmc/miniapp/R$style;->RightAnimStyle:I

    .line 25
    .line 26
    sput v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_RIGHT:I

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getANIM_BOTTOM()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_BOTTOM:I

    .line 2
    .line 3
    return v0
.end method

.method public final getANIM_LEFT()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_LEFT:I

    .line 2
    .line 3
    return v0
.end method

.method public final getANIM_RIGHT()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_RIGHT:I

    .line 2
    .line 3
    return v0
.end method

.method public final getANIM_SCALE()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_SCALE:I

    .line 2
    .line 3
    return v0
.end method

.method public final getANIM_TOP()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->ANIM_TOP:I

    .line 2
    .line 3
    return v0
.end method
