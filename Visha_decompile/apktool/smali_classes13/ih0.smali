.class public final synthetic Lih0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

.field public final synthetic c:Lcom/transsion/dbdata/beans/sniff/Bookmark;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lih0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iput-object p2, p0, Lih0;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lih0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    iget-object p0, p0, Lih0;->c:Lcom/transsion/dbdata/beans/sniff/Bookmark;

    check-cast p1, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;

    invoke-static {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->d(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
