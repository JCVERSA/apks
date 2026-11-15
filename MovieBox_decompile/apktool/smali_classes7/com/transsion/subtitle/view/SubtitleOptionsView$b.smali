.class public final Lcom/transsion/subtitle/view/SubtitleOptionsView$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/warkiz/widget/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/view/SubtitleOptionsView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/view/SubtitleOptionsView;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/view/SubtitleOptionsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$b;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$b;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, p1, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setFontSize(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c(Lcom/warkiz/widget/f;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p1, Lcom/warkiz/widget/f;->b:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$b;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, p1, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setFontSize(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
