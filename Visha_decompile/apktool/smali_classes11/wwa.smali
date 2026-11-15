.class public final synthetic Lwwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/convert/TranConvertingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/convert/TranConvertingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwwa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 0

    iget-object p0, p0, Lwwa;->b:Lcom/transsion/playercommon/convert/TranConvertingTask;

    invoke-virtual {p0}, Lcom/transsion/playercommon/convert/TranConvertingTask;->onError()V

    return-void
.end method
