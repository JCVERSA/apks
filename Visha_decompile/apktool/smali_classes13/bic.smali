.class public final synthetic Lbic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebBookmarkActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbic;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lbic;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->t0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    return-void
.end method
