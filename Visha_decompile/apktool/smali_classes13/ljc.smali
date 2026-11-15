.class public final synthetic Lljc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Ls74;


# direct methods
.method public synthetic constructor <init>(Ls74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lljc;->b:Ls74;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lljc;->b:Ls74;

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment;->i2(Ls74;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
