.class public final synthetic Lita;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lita;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    iput-object p2, p0, Lita;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lita;->b:Lcom/transsion/btdownload/activiy/TorrentItemFragment;

    iget-object p0, p0, Lita;->c:Ljava/util/Set;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemFragment;->S(Lcom/transsion/btdownload/activiy/TorrentItemFragment;Ljava/util/Set;Ljava/lang/Boolean;)V

    return-void
.end method
