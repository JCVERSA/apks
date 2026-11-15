.class public final synthetic Lhh7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh7;->b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    iput-object p2, p0, Lhh7;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lhh7;->b:Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;

    iget-object p0, p0, Lhh7;->c:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->I0(Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;[Ljava/lang/String;)V

    return-void
.end method
