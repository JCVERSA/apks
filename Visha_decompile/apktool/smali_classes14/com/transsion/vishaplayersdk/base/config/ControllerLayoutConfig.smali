.class public Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private controllerView:Landroid/view/View;

.field private parentContainer:Landroid/view/ViewGroup;

.field private parentHeight:I

.field private parentWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lei1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->controllerView:Landroid/view/View;

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentHeight:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentWidth:I

    return-void
.end method


# virtual methods
.method public getControllerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->controllerView:Landroid/view/View;

    return-object p0
.end method

.method public getParentContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getParentHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentHeight:I

    return p0
.end method

.method public getParentWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentWidth:I

    return p0
.end method

.method public isValidConfig()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentContainer:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    sget-object p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->TAG:Ljava/lang/String;

    const-string v0, "ControllerLayoutConfig invalid: must set parent view"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerLayoutConfig{parentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->parentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controllerView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->controllerView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
