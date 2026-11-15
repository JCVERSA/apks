.class public final synthetic Lkt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/MusicAlbumView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt6;->a:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkt6;->a:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    check-cast p1, Lwoc;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->c(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lwoc;)V

    return-void
.end method
