.class public final Lcom/transsion/subtitle/view/SubtitleOptionsView$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/view/s;


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
    iput-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$c;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 2

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int p1, v0

    .line 11
    iget-object v0, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$c;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, p1, v1, v1}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setPosition(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 0

    .line 1
    const-string p4, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/subtitle/view/SubtitleOptionsView$c;->a:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    .line 7
    .line 8
    long-to-int p2, p2

    .line 9
    const/4 p3, 0x1

    .line 10
    const/4 p4, 0x0

    .line 11
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/subtitle/view/SubtitleOptionsView;->access$setPosition(Lcom/transsion/subtitle/view/SubtitleOptionsView;IZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 1

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
