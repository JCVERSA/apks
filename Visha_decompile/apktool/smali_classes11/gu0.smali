.class public final synthetic Lgu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p2, p0, Lgu0;->c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iput-object p3, p0, Lgu0;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object v1, p0, Lgu0;->c:Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    iget-object p0, p0, Lgu0;->d:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->d(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Landroid/content/Context;)V

    return-void
.end method
