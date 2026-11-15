.class public Lcom/transsion/playercommon/convert/ConvertingTask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/convert/ConvertingTask;->scanFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/convert/ConvertingTask;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/convert/ConvertingTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask$a;->a:Lcom/transsion/playercommon/convert/ConvertingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanCompleted path:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConvertingTask"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lao;->U()Lao;

    move-result-object p2

    invoke-virtual {p2, p1}, Lao;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    :goto_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lao;->h(ILjava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScanCompleted mediaId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/convert/ConvertingTask$a;->a:Lcom/transsion/playercommon/convert/ConvertingTask;

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/playercommon/convert/ConvertingTask;->taskStatus:I

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/convert/ConvertingTask;->onExportCompleted(I)V

    return-void
.end method
