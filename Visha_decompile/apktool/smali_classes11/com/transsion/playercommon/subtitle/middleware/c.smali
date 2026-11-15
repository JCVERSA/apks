.class public final synthetic Lcom/transsion/playercommon/subtitle/middleware/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/subtitle/middleware/c;->b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;

    iput p2, p0, Lcom/transsion/playercommon/subtitle/middleware/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/subtitle/middleware/c;->b:Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;

    iget p0, p0, Lcom/transsion/playercommon/subtitle/middleware/c;->c:I

    invoke-static {v0, p0}, Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;->c(Lcom/transsion/playercommon/subtitle/middleware/SubtitleLiveCaptionManager$1;I)V

    return-void
.end method
