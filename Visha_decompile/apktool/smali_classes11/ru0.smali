.class public final synthetic Lru0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru0;->b:Ljava/util/List;

    iput p2, p0, Lru0;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lru0;->b:Ljava/util/List;

    iget p0, p0, Lru0;->c:I

    check-cast p1, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/viewmodel/ChannelViewModel;->i(Ljava/util/List;ILcom/transsion/onlinevideo/viewmodel/ChannelViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
