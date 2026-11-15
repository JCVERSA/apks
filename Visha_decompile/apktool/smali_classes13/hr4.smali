.class public final synthetic Lhr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhr4;->b:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->a(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
