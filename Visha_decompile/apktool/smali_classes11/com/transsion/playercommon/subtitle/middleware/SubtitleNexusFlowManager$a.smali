.class public final Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->b()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    invoke-direct {v0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$a;->b()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;
    .locals 0

    invoke-static {}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->c()Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;->f(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    return-void
.end method
