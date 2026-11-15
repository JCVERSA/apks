.class public final synthetic Li5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li5a;->b:I

    iput-object p2, p0, Li5a;->c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Li5a;->b:I

    iget-object p0, p0, Li5a;->c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->b(ILcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    return-void
.end method
