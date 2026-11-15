.class public Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a0(Landroid/content/Context;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;->c:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p2, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;->c:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;->b:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->V(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel$d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
