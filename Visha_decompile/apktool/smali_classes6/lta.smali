.class public final synthetic Llta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llta;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Llta;->a:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->Y(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/List;)V

    return-void
.end method
