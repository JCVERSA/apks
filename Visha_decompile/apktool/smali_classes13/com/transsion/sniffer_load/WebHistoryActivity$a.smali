.class public Lcom/transsion/sniffer_load/WebHistoryActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/WebHistoryActivity;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/sniffer_load/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$a;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$a;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->w0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity$a;->b:Lcom/transsion/sniffer_load/WebHistoryActivity;

    invoke-static {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->t0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->w(Z)V

    return-void
.end method
