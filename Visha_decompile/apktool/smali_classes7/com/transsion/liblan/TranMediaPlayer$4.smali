.class Lcom/transsion/liblan/TranMediaPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranMediaPlayer;->onEventNative(IJJFLjava/lang/String;)Lcom/transsion/liblan/TranMediaPlayer$EventTran;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/TranMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$4;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$4;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-virtual {p0}, Lcom/transsion/liblan/TranMediaPlayer;->updateVideoSurfaces()V

    return-void
.end method
