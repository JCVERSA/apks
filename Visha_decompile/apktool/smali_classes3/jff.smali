.class public final Ljff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Llff;


# direct methods
.method public constructor <init>(Llff;)V
    .locals 0

    iput-object p1, p0, Ljff;->a:Llff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Ljff;->a:Llff;

    invoke-static {p0}, Llff;->b(Llff;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljff;->a:Llff;

    invoke-static {p0}, Llff;->b(Llff;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
