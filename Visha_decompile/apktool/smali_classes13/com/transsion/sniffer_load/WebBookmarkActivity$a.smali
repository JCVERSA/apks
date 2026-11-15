.class public Lcom/transsion/sniffer_load/WebBookmarkActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebBookmarkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/sniffer_load/WebBookmarkActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwoc;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->G0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->G0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->D0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lwoc;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;->a(Lwoc;)V

    return-void
.end method
