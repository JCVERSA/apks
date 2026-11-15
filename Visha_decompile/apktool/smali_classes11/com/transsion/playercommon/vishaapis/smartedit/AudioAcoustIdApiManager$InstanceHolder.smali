.class final Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioAcoustIdApiManager;

    return-object v0
.end method
