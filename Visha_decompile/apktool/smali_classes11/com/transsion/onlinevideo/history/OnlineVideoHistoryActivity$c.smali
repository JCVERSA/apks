.class public Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    sget v0, Lcom/transsion/magicvideo/R$string;->talkback_clear_history:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    sget v2, Lcom/transsion/onlinevideo/R$string;->clear_empty:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity$c;->b:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    sget v2, Lcom/transsion/onlinevideo/R$string;->cancel:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->u1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
