.class public final synthetic Lsg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iput-object p2, p0, Lsg0;->c:Landroid/content/Context;

    iput p3, p0, Lsg0;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsg0;->b:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iget-object v1, p0, Lsg0;->c:Landroid/content/Context;

    iget p0, p0, Lsg0;->d:I

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->c(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;ILcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    return-void
.end method
