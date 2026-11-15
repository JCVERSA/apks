.class public final synthetic Lcom/transsnet/downloader/widget/g0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/widget/TransferBottomToolsView;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/widget/g0;->a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/transsnet/downloader/widget/g0;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/g0;->a:Lcom/transsnet/downloader/widget/TransferBottomToolsView;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsnet/downloader/widget/g0;->b:J

    .line 4
    .line 5
    check-cast p1, Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/transsnet/downloader/widget/TransferBottomToolsView;->q(Lcom/transsnet/downloader/widget/TransferBottomToolsView;JLjava/util/List;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
