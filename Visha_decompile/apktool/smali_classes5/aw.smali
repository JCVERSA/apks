.class public final synthetic Law;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayerItemView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerItemView;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law;->b:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iput-object p2, p0, Law;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Law;->b:Lcom/transsion/audio/widgets/AudioPlayerItemView;

    iget-object p0, p0, Law;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->c(Lcom/transsion/audio/widgets/AudioPlayerItemView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
