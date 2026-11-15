.class public final synthetic Lku0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p2, p0, Lku0;->c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lku0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p0, p0, Lku0;->c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->e(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
