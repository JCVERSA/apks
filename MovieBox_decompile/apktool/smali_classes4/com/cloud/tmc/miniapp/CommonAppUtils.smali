.class public final Lcom/cloud/tmc/miniapp/CommonAppUtils;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/intf/ICommonApp;


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/CommonAppUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/CommonAppUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    .line 7
    .line 8
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
.method public getDefaultAutoAgreePrivacy()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getDefaultMultiTaskCount()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getStartFromChannel()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "mb"

    .line 2
    .line 3
    return-object v0
.end method

.method public isTargetApp(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isMovieBox(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
