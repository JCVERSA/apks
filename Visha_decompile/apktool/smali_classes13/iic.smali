.class public final synthetic Liic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liic;->b:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Liic;->b:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;

    check-cast p1, [B

    invoke-interface {p0, p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;->a([B)V

    return-void
.end method
