.class public final synthetic Lsu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-object p2, p0, Lsu0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-object p0, p0, Lsu0;->c:Ljava/util/List;

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->h(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;Ljava/util/List;Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
