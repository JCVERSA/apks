.class public Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->a(Lcom/transsion/dbdata/beans/onlinevideo/TopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$a;->b:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder$a;->b:Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/widgets/topic/HistoryViewHolder;->b(Z)V

    return-void
.end method
