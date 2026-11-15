.class public final Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerLayoutConfigBuilder"
.end annotation


# instance fields
.field private controllerView:Landroid/view/View;

.field private parentContainer:Landroid/view/ViewGroup;

.field private parentHeight:I

.field private parentWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aControllerLayoutConfig()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;-><init>(Lei1;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->controllerView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->a(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;Landroid/view/View;)V

    iget v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentHeight:I

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->c(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;I)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->b(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;Landroid/view/ViewGroup;)V

    iget p0, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentWidth:I

    invoke-static {v0, p0}, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;->d(Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig;I)V

    return-object v0
.end method

.method public withControllerView(Landroid/view/View;)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->controllerView:Landroid/view/View;

    return-object p0
.end method

.method public withParentContainer(Landroid/view/ViewGroup;)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public withParentHeight(I)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentHeight:I

    return-object p0
.end method

.method public withParentWidth(I)Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;
    .locals 0

    iput p1, p0, Lcom/transsion/vishaplayersdk/base/config/ControllerLayoutConfig$ControllerLayoutConfigBuilder;->parentWidth:I

    return-object p0
.end method
