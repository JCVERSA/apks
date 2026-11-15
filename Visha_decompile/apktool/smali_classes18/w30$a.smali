.class public final Lw30$a;
.super Lo95;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# static fields
.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _disposer$volatile:Ljava/lang/Object;

.field public final f:Lcr0;

.field public g:Luc2;

.field public final synthetic h:Lw30;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_disposer$volatile"

    const-class v2, Lw30$a;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lw30$a;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lw30;Lcr0;)V
    .locals 0

    iput-object p1, p0, Lw30$a;->h:Lw30;

    invoke-direct {p0}, Lo95;-><init>()V

    iput-object p2, p0, Lw30$a;->f:Lcr0;

    return-void
.end method

.method public static final synthetic z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lw30$a;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final A(Lw30$b;)V
    .locals 1

    invoke-static {}, Lw30$a;->z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Luc2;)V
    .locals 0

    iput-object p1, p0, Lw30$a;->g:Luc2;

    return-void
.end method

.method public u()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lw30$a;->f:Lcr0;

    invoke-interface {v0, p1}, Lcr0;->tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lw30$a;->f:Lcr0;

    invoke-interface {v0, p1}, Lcr0;->completeResume(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw30$a;->x()Lw30$b;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lw30$b;->b()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lw30;->b()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lw30$a;->h:Lw30;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lw30$a;->f:Lcr0;

    iget-object p0, p0, Lw30$a;->h:Lw30;

    invoke-static {p0}, Lw30;->a(Lw30;)[Ld72;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Ld72;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final x()Lw30$b;
    .locals 1

    invoke-static {}, Lw30$a;->z()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw30$b;

    return-object p0
.end method

.method public final y()Luc2;
    .locals 0

    iget-object p0, p0, Lw30$a;->g:Luc2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "handle"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
