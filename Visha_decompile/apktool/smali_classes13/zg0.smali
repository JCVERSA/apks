.class public final synthetic Lzg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzg0;->b:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzg0;->b:Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->n(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    move-result-object p0

    return-object p0
.end method
