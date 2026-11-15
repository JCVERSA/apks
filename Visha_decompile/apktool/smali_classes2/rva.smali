.class public abstract Lrva;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrva$a;
    }
.end annotation


# instance fields
.field public a:Lrva$a;

.field public b:Lo70;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo70;
    .locals 0

    iget-object p0, p0, Lrva;->b:Lo70;

    invoke-static {p0}, Lzi;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo70;

    return-object p0
.end method

.method public b(Lrva$a;Lo70;)V
    .locals 0

    iput-object p1, p0, Lrva;->a:Lrva$a;

    iput-object p2, p0, Lrva;->b:Lo70;

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lrva;->a:Lrva$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrva$a;->onTrackSelectionsInvalidated()V

    :cond_0
    return-void
.end method

.method public abstract d()Z
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lrva;->a:Lrva$a;

    iput-object v0, p0, Lrva;->b:Lo70;

    return-void
.end method

.method public abstract g([Lks8;Leva;Lcom/google/android/exoplayer2/source/i$b;Lcom/google/android/exoplayer2/a0;)Lsva;
.end method

.method public abstract h(Lcom/google/android/exoplayer2/audio/a;)V
.end method
