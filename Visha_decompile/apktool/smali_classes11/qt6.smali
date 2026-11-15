.class public final synthetic Lqt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/MusicAlbumView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lqt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    check-cast p1, Lcom/trello/rxlifecycle3/android/ActivityEvent;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->f(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/trello/rxlifecycle3/android/ActivityEvent;)V

    return-void
.end method
