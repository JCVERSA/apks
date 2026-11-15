.class public Lpx5$a;
.super Lgu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpx5;->g(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lpx5$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lpx5$a;->b:Landroid/net/Uri;

    iput-object p3, p0, Lpx5$a;->c:Landroid/content/Context;

    iput-object p4, p0, Lpx5$a;->d:Lcom/transsion/widgetslib/dialog/d;

    invoke-direct {p0}, Lgu1;-><init>()V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lpx5$a;->c(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V

    return-void
.end method

.method public static synthetic c(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 2

    sget-object v0, Lpx5$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    sget p0, Lcom/transsion/bt_download/R$string;->bt_file_has_task:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    sget p0, Lcom/transsion/bt_download/R$string;->bt_parse_failed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->g()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v1

    invoke-virtual {v1}, Lpk0;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {p3, v1}, Ltra;->o(Landroid/content/Context;Ljava/util/List;)V

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Lzy5;->b(ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->q()V

    return-void

    :cond_7
    :goto_1
    sget p0, Lcom/transsion/bt_download/R$string;->bt_parse_failed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2, p1, p0, p2}, Lzy5;->b(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-virtual {p0, p1}, Lpx5$a;->d(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V

    return-void
.end method

.method public d(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;)V
    .locals 6

    iget-object v2, p0, Lpx5$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lpx5$a;->b:Landroid/net/Uri;

    iget-object v4, p0, Lpx5$a;->c:Landroid/content/Context;

    iget-object v5, p0, Lpx5$a;->d:Lcom/transsion/widgetslib/dialog/d;

    new-instance p0, Lox5;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lox5;-><init>(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    return-void
.end method
