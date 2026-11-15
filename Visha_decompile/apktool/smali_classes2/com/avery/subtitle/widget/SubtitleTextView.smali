.class public Lcom/avery/subtitle/widget/SubtitleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/avery/subtitle/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/widget/SubtitleTextView$a;
    }
.end annotation


# static fields
.field public static final EMPTY_TEXT:Ljava/lang/String; = ""

.field public static final PLACEHOLDER_TEXT:Ljava/lang/String; = "                    "


# instance fields
.field public b:Lcom/avery/subtitle/widget/SubtitleTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addLocalSubtitleTextListener()V
    .locals 0

    return-void
.end method

.method public bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V
    .locals 0

    return-void
.end method

.method public clearAISubtitleText()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public onAISubtitleText(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onLocalSubtitleTranText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSubtitleText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTransCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public removeLocalSubtitleTextListener()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setMeasureTextLineHeightCallBack(Lcom/avery/subtitle/widget/SubtitleTextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/widget/SubtitleTextView;->b:Lcom/avery/subtitle/widget/SubtitleTextView$a;

    return-void
.end method

.method public setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V
    .locals 0

    return-void
.end method

.method public setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V
    .locals 0

    return-void
.end method

.method public setShowSetting(Z)V
    .locals 0

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    return-void
.end method

.method public setSubtitleDelayMs(J)V
    .locals 0

    return-void
.end method

.method public setSubtitlePath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
