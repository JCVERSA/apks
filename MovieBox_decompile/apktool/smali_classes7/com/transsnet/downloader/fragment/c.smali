.class public final synthetic Lcom/transsnet/downloader/fragment/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/c;->a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/fragment/c;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/c;->a:Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/fragment/c;->b:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    check-cast p2, Ljava/lang/String;

    .line 12
    .line 13
    check-cast p3, Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->k0(Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;IILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
