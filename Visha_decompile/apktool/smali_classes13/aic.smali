.class public final synthetic Laic;
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

    iput-object p1, p0, Laic;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Laic;->a:Lcom/transsion/sniffer_load/WebBookmarkActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->q0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;)V

    return-void
.end method
