.class public final synthetic Lcom/transsnet/downloader/popup/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/popup/PopupManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/popup/f;->a:Lcom/transsnet/downloader/popup/PopupManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/popup/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/transsnet/downloader/popup/f;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsnet/downloader/popup/f;->d:Lkotlin/jvm/functions/Function2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/popup/f;->a:Lcom/transsnet/downloader/popup/PopupManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/popup/f;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsnet/downloader/popup/f;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsnet/downloader/popup/f;->d:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsnet/downloader/popup/PopupManager;->b(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;Z)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
