.class Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;
.super Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/player/MusicFade/MusicFade;->d(FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

.field final synthetic val$endVolume:F

.field final synthetic val$fadeEvent:Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/player/MusicFade/MusicFade;FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;F)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->this$0:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    iput-object p8, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->val$fadeEvent:Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;

    iput p9, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->val$endVolume:F

    invoke-direct/range {p0 .. p7}, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;-><init>(Lcom/transsion/playercommon/player/MusicFade/MusicFade;FFJJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;->getValue(J)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->val$fadeEvent:Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;

    invoke-interface {v1, v0}, Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;->a(F)V

    iget v1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->val$endVolume:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;->this$0:Lcom/transsion/playercommon/player/MusicFade/MusicFade;

    invoke-static {v0}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->a(Lcom/transsion/playercommon/player/MusicFade/MusicFade;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/player/MusicFade/a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/player/MusicFade/a;-><init>(Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
