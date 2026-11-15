.class public final synthetic Lju0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iput p2, p0, Lju0;->c:I

    iput p3, p0, Lju0;->d:I

    iput p4, p0, Lju0;->e:I

    iput p5, p0, Lju0;->f:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lju0;->b:Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    iget v1, p0, Lju0;->c:I

    iget v2, p0, Lju0;->d:I

    iget v3, p0, Lju0;->e:I

    iget v4, p0, Lju0;->f:I

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->g(Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;IIIILjava/util/List;)V

    return-void
.end method
