.class public final synthetic Lvf7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvf7;->b:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    iput-object p2, p0, Lvf7;->c:Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lvf7;->b:Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;

    iget-object p0, p0, Lvf7;->c:Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;->b(Lcom/transsion/onlinevideo/adapter/OnlineHistoryAdapter;Lcom/transsion/dbdata/beans/onlinevideo/SuperiorRecommend;Landroid/view/View;)V

    return-void
.end method
