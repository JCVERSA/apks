.class public final synthetic Lox5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox5;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    iput-object p2, p0, Lox5;->c:Ljava/lang/String;

    iput-object p3, p0, Lox5;->d:Landroid/net/Uri;

    iput-object p4, p0, Lox5;->e:Landroid/content/Context;

    iput-object p5, p0, Lox5;->f:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lox5;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    iget-object v1, p0, Lox5;->c:Ljava/lang/String;

    iget-object v2, p0, Lox5;->d:Landroid/net/Uri;

    iget-object v3, p0, Lox5;->e:Landroid/content/Context;

    iget-object p0, p0, Lox5;->f:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0, v1, v2, v3, p0}, Lpx5$a;->b(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V

    return-void
.end method
