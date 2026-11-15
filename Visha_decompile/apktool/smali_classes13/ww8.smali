.class public final Lww8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llq0;


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Lio/reactivex/Scheduler;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lww8;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lww8;->b:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lww8;->c:Z

    iput-boolean p4, p0, Lww8;->d:Z

    iput-boolean p5, p0, Lww8;->e:Z

    iput-boolean p6, p0, Lww8;->f:Z

    iput-boolean p7, p0, Lww8;->g:Z

    iput-boolean p8, p0, Lww8;->h:Z

    iput-boolean p9, p0, Lww8;->i:Z

    return-void
.end method


# virtual methods
.method public adapt(Ljq0;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lww8;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnq0;

    invoke-direct {v0, p1}, Lnq0;-><init>(Ljq0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Loq0;

    invoke-direct {v0, p1}, Loq0;-><init>(Ljq0;)V

    :goto_0
    iget-boolean p1, p0, Lww8;->d:Z

    if-eqz p1, :cond_1

    new-instance p1, Lmu8;

    invoke-direct {p1, v0}, Lmu8;-><init>(Lmc7;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lww8;->e:Z

    if-eqz p1, :cond_2

    new-instance p1, Lhg0;

    invoke-direct {p1, v0}, Lhg0;-><init>(Lmc7;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lww8;->b:Lio/reactivex/Scheduler;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    :cond_3
    iget-boolean p1, p0, Lww8;->f:Z

    if-eqz p1, :cond_4

    sget-object p0, Lio/reactivex/BackpressureStrategy;->MISSING:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, p0}, Lmc7;->i0(Lio/reactivex/BackpressureStrategy;)Lr14;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean p1, p0, Lww8;->g:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lmc7;->W()Lxm9;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean p1, p0, Lww8;->h:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lmc7;->V()Lb96;

    move-result-object p0

    return-object p0

    :cond_6
    iget-boolean p0, p0, Lww8;->i:Z

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lmc7;->G()Lhb1;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lww8;->a:Ljava/lang/reflect/Type;

    return-object p0
.end method
