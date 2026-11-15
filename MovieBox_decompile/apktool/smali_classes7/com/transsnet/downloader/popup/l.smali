.class public final synthetic Lcom/transsnet/downloader/popup/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/l;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/l;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/l;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/l;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    check-cast p1, Landroid/net/Uri;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/transsnet/downloader/popup/PopupManager;->c(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/net/Uri;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
