.class public final Lcom/transsion/subtitle/VideoSubtitleControl$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleControl;->J(Lcom/avery/subtitle/widget/SimpleSubtitleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->g(Lcom/transsion/subtitle/VideoSubtitleControl;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getSpeed()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->o(Lcom/transsion/subtitle/VideoSubtitleControl;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$a;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->K()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
