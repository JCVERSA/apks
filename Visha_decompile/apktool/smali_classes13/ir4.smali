.class public final synthetic Lir4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iput-object p2, p0, Lir4;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lir4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iget-object p0, p0, Lir4;->c:Ljava/util/List;

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->d(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;Ljava/util/List;Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
