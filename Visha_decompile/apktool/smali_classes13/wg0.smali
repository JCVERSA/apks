.class public final synthetic Lwg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-static {p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->w(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method
