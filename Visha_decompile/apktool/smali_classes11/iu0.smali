.class public final synthetic Liu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput p2, p0, Liu0;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget p0, p0, Liu0;->c:I

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
