.class public final synthetic Lgv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lgv6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->j(Lcom/transsion/audio/widgets/MusicPlayListView;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
