.class public final synthetic Lmt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iput-boolean p2, p0, Lmt6;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iget-boolean p0, p0, Lmt6;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->b(Lcom/transsion/playercommon/widgets/MusicAlbumView;Z)V

    return-void
.end method
