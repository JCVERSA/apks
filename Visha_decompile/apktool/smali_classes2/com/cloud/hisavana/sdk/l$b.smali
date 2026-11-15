.class public Lcom/cloud/hisavana/sdk/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgob$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/l;->n(Ldnd;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/l$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Ldnd;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/l$e;

.field public final synthetic d:Lcom/cloud/hisavana/sdk/l;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l$b;->d:Lcom/cloud/hisavana/sdk/l;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/l$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/l$b;->b:Ldnd;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/l$b;->c:Lcom/cloud/hisavana/sdk/l$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$b;->d:Lcom/cloud/hisavana/sdk/l;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l$b;->b:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$b;->c:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, v0, v1, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l$b;->d:Lcom/cloud/hisavana/sdk/l;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l$b;->b:Ldnd;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/l$b;->c:Lcom/cloud/hisavana/sdk/l$e;

    invoke-static {p1, v0, v1, p0}, Lcom/cloud/hisavana/sdk/l;->d(Lcom/cloud/hisavana/sdk/l;Ljava/util/concurrent/atomic/AtomicInteger;Ldnd;Lcom/cloud/hisavana/sdk/l$e;)V

    return-void
.end method
