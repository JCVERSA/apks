.class public Lcom/transsion/sniffer_load/WebHistoryActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/transsion/sniffer_load/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebHistoryActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$f;->c:Lcom/transsion/sniffer_load/WebHistoryActivity;

    iput-boolean p2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$f;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$f;->c:Lcom/transsion/sniffer_load/WebHistoryActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$f;->c:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
