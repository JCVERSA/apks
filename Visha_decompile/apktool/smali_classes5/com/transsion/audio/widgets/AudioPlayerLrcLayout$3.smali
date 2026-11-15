.class Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$3;
.super Lcom/transsion/LongClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->initLrcOperate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-direct {p0}, Lcom/transsion/LongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLongClickCallback()V
    .locals 0

    return-void
.end method

.method public longClickCallback()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$3;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->H(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Z)V

    return-void
.end method
