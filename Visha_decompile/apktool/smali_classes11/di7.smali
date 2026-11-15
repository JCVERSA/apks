.class public final synthetic Ldi7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi7;->a:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 0

    iget-object p0, p0, Ldi7;->a:Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->s0(Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;)V

    return-void
.end method
