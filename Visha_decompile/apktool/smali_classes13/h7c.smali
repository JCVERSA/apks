.class public final synthetic Lh7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7c;->b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p2, p0, Lh7c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lh7c;->b:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lh7c;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->a(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)V

    return-void
.end method
