.class Lcom/mgtv/ssp/control/BaseVideoController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/ssp/control/BaseVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/control/BaseVideoController;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/control/BaseVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/control/BaseVideoController$1;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/control/BaseVideoController$1;->a:Lcom/mgtv/ssp/control/BaseVideoController;

    invoke-virtual {p0}, Lcom/mgtv/ssp/control/BaseVideoController;->hide()V

    return-void
.end method
