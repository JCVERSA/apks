.class public final synthetic Lwsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwsa;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwsa;->a:Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;

    check-cast p1, Landroidx/core/util/Pair;

    invoke-static {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;->U(Lcom/transsion/btdownload/activiy/TorrentItemFileFragment;Landroidx/core/util/Pair;)V

    return-void
.end method
