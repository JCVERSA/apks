.class Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;-><init>(JJ)V

    sput-object v0, Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils$Holder;->INSTANCE:Lcom/transsion/playercommon/vishaapis/aistatistics/SnowFlakeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
