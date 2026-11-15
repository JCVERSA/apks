.class public Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;
.super Landroid/widget/ImageView;
.source "source.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->a:Z

    return-void
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public setSoundStatus(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/SoundImageView;->a:Z

    .line 2
    .line 3
    const-string v0, "drawable"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "mbridge_reward_sound_open"

    .line 12
    .line 13
    invoke-static {p1, v1, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "mbridge_reward_sound_close"

    .line 26
    .line 27
    invoke-static {p1, v1, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
