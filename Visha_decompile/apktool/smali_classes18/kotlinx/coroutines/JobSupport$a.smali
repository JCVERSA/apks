.class public final Lkotlinx/coroutines/JobSupport$a;
.super Lo95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Lkotlinx/coroutines/JobSupport;

.field public final g:Lkotlinx/coroutines/JobSupport$b;

.field public final h:Lwv0;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$b;Lwv0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$a;->f:Lkotlinx/coroutines/JobSupport;

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$a;->g:Lkotlinx/coroutines/JobSupport$b;

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$a;->h:Lwv0;

    iput-object p4, p0, Lkotlinx/coroutines/JobSupport$a;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$a;->f:Lkotlinx/coroutines/JobSupport;

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$a;->g:Lkotlinx/coroutines/JobSupport$b;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$a;->h:Lwv0;

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$a;->i:Ljava/lang/Object;

    invoke-static {p1, v0, v1, p0}, Lkotlinx/coroutines/JobSupport;->access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$b;Lwv0;Ljava/lang/Object;)V

    return-void
.end method
