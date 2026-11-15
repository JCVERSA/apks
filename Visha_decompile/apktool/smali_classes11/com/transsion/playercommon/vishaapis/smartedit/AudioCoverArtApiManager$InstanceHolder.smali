.class final Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;

    invoke-direct {v0}, Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;-><init>()V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;
    .locals 1

    sget-object v0, Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager$InstanceHolder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/smartedit/AudioCoverArtApiManager;

    return-object v0
.end method
