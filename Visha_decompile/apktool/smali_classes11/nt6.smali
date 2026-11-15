.class public final synthetic Lnt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iput-object p2, p0, Lnt6;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iget-object p0, p0, Lnt6;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->e(Lcom/transsion/playercommon/widgets/MusicAlbumView;Landroid/graphics/Bitmap;)V

    return-void
.end method
