.class final Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;-><init>(Lpe;)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/appconfig/AppControlManager;

    return-object v0
.end method
