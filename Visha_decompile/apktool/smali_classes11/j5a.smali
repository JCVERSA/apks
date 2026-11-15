.class public final synthetic Lj5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5a;->b:Landroid/os/Bundle;

    iput-object p2, p0, Lj5a;->c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lj5a;->b:Landroid/os/Bundle;

    iget-object p0, p0, Lj5a;->c:Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager$initSubtitleManager$aapCallback$1;->c(Landroid/os/Bundle;Lcom/transsion/playercommon/subtitle/middleware/SubtitleNexusFlowManager;)V

    return-void
.end method
