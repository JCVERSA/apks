.class public final synthetic Lnr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lzf1;


# direct methods
.method public synthetic constructor <init>(Lzf1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnr4;->b:Lzf1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lnr4;->b:Lzf1;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b(Lzf1;Ljava/lang/Throwable;)V

    return-void
.end method
