.class public final synthetic Lq13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/DownloadService$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/DownloadService$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq13;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lq13;->b:Lcom/transsion/sniffer_load/DownloadService$b;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/DownloadService$b;->B(Lcom/transsion/sniffer_load/DownloadService$b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
