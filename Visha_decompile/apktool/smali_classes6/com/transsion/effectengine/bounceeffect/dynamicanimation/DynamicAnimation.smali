.class public abstract Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MinMaxConstant"
        }
    .end annotation
.end field

.field public static final ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCROLL_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCROLL_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field public static final TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final TRANSLATION_Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;


# instance fields
.field private mAnimationHandler:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObyte;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObyte;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcase;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcase;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOchar;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOchar;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOelse;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOelse;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOgoto;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOgoto;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOlong;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOlong;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOthis;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOthis;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOvoid;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOvoid;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObreak;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObreak;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOdo;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOdo;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOif;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOif;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfor;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfor;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOint;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOint;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCROLL_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOnew;

    invoke-direct {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOnew;-><init>()V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCROLL_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOfor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    const p1, -0x800001

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOtry;

    invoke-direct {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOtry;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    const v0, -0x800001

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_0

    goto :goto_2

    :cond_0
    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    :goto_0
    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_3

    :cond_1
    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_3

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    :goto_1
    const p1, 0x3b03126f    # 0.002f

    goto :goto_0

    :cond_4
    :goto_2
    const p1, 0x3dcccccd    # 0.1f

    goto :goto_0

    :goto_3
    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOif(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    :goto_0
    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .locals 1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;->z1OoOdo(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    :cond_0
    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOif;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;->z1OoOdo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iput-wide p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    iget p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    sget p1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->mCurrentRefreshRate:F

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    iget p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_2
    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    iget p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_3
    return p1
.end method

.method public abstract getAcceleration(FF)F
.end method

.method public getAnimationHandler()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOdo()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    :cond_0
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    return-object p0
.end method

.method public getMinimumVisibleChange()F
    .locals 0

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    return p0
.end method

.method public getValueThreshold()F
    .locals 1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    return p0
.end method

.method public removeEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimationHandler(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;)V
    .locals 1
    .param p1    # Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations are still running and the animationhandler should not be set at this timming"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPropertyValue(F)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;->z1OoOdo(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;->z1OoOnew:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;

    invoke-interface {v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;->z1OoOdo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->startAnimationInternal()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
