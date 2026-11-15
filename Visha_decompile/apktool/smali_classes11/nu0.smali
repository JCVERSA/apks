.class public final synthetic Lnu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:Z

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-boolean p2, p0, Lnu0;->c:Z

    iput-wide p3, p0, Lnu0;->d:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lnu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-boolean v1, p0, Lnu0;->c:Z

    iget-wide v2, p0, Lnu0;->d:J

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->j(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
