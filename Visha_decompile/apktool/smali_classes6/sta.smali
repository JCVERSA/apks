.class public final synthetic Lsta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsta;->b:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    iput-object p2, p0, Lsta;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsta;->b:Lcom/transsion/btdownload/activiy/TorrentItemViewModel;

    iget-object p0, p0, Lsta;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->i(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/String;Ljava/lang/Long;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method
