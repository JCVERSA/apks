.class public final synthetic Lmr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iput-wide p2, p0, Lmr4;->c:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmr4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iget-wide v1, p0, Lmr4;->c:J

    invoke-static {v0, v1, v2}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->c(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;J)[B

    move-result-object p0

    return-object p0
.end method
