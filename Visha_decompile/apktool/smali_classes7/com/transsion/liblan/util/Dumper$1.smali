.class Lcom/transsion/liblan/util/Dumper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/TranMediaPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/util/Dumper;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/transsion/liblan/util/Dumper$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/util/Dumper;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/util/Dumper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/util/Dumper$1;->this$0:Lcom/transsion/liblan/util/Dumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/transsion/liblan/TranMediaPlayer$EventTran;)V
    .locals 3

    .line 2
    iget v0, p1, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    const/16 v1, 0x103

    if-eq v0, v1, :cond_2

    const/16 v1, 0x109

    if-eq v0, v1, :cond_0

    const/16 v2, 0x10a

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/liblan/util/Dumper$1;->this$0:Lcom/transsion/liblan/util/Dumper;

    invoke-static {v0}, Lcom/transsion/liblan/util/Dumper;->a(Lcom/transsion/liblan/util/Dumper;)Lcom/transsion/liblan/util/Dumper$Listener;

    move-result-object v0

    iget p1, p1, Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;->type:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/transsion/liblan/util/Dumper$Listener;->onFinish(Z)V

    .line 4
    iget-object p0, p0, Lcom/transsion/liblan/util/Dumper$1;->this$0:Lcom/transsion/liblan/util/Dumper;

    invoke-virtual {p0}, Lcom/transsion/liblan/util/Dumper;->cancel()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/transsion/liblan/util/Dumper$1;->this$0:Lcom/transsion/liblan/util/Dumper;

    invoke-static {p0}, Lcom/transsion/liblan/util/Dumper;->a(Lcom/transsion/liblan/util/Dumper;)Lcom/transsion/liblan/util/Dumper$Listener;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/liblan/TranMediaPlayer$EventTran;->getBuffering()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/liblan/util/Dumper$Listener;->onProgress(F)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onEvent(Lcom/transsion/liblan/interfaces/TranAbstractLANEvent;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/liblan/TranMediaPlayer$EventTran;

    invoke-virtual {p0, p1}, Lcom/transsion/liblan/util/Dumper$1;->onEvent(Lcom/transsion/liblan/TranMediaPlayer$EventTran;)V

    return-void
.end method
