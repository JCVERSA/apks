.class public final synthetic Lcom/transsion/subtitle/fragment/c0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/c0;->a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/c0;->a:Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;

    .line 2
    .line 3
    check-cast p1, Lht/a;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v0, p1, v1, v2}, Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;->g0(Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;Lht/a;J)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
