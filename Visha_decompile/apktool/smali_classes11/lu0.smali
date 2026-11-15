.class public final synthetic Llu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput-boolean p2, p0, Llu0;->c:Z

    iput p3, p0, Llu0;->d:I

    iput-wide p4, p0, Llu0;->e:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Llu0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget-boolean v1, p0, Llu0;->c:Z

    iget v2, p0, Llu0;->d:I

    iget-wide v3, p0, Llu0;->e:J

    move-object v5, p1

    check-cast v5, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->m(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;ZIJLcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
