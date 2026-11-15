.class Lcom/transsion/audio/widgets/AudioPlayerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->lambda$getItemClickListener$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->lambda$getItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->lambda$getItemClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$getItemClickListener$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->showEq()V

    return-void
.end method

.method private synthetic lambda$getItemClickListener$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->showSpeed()V

    return-void
.end method

.method private synthetic lambda$getItemClickListener$2(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->showTimer()V

    return-void
.end method


# virtual methods
.method public getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/widgets/CustomMediaOperateIconView$a;->getItemClickListener(Lcom/transsion/playercommon/data/CustomIconItemData;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/CustomIconItemData;->getType()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/audio/widgets/b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/b;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/transsion/audio/widgets/c;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/c;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/transsion/audio/widgets/d;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/d;-><init>(Lcom/transsion/audio/widgets/AudioPlayerLayout$1;)V

    :goto_0
    return-object v0
.end method

.method public showEq()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->showEq()V

    return-void
.end method

.method public showSpeed()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->speedSetting()V

    return-void
.end method

.method public showTimer()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout;->y(Lcom/transsion/audio/widgets/AudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/audio/widgets/AudioPlayerLayout$AudioPlayClickListener;->showTimer()V

    return-void
.end method
