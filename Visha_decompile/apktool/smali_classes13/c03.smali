.class public final synthetic Lc03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc03;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    iput p2, p0, Lc03;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc03;->b:Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;

    iget p0, p0, Lc03;->c:I

    invoke-static {v0, p0}, Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;->n0(Lcom/transsion/sniffer_load/fragment/DownloadMainFragmentNew;I)V

    return-void
.end method
