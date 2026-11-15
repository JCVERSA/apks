.class public final synthetic Lh5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5a;->b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    iput p2, p0, Lh5a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lh5a;->b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    iget p0, p0, Lh5a;->c:I

    invoke-static {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->a(Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;I)V

    return-void
.end method
