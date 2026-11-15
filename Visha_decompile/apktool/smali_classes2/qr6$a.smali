.class public final Lqr6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ltua;

.field public final b:Lgva;

.field public final c:Lfva;

.field public final d:Lfab;

.field public e:I


# direct methods
.method public constructor <init>(Ltua;Lgva;Lfva;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr6$a;->a:Ltua;

    iput-object p2, p0, Lqr6$a;->b:Lgva;

    iput-object p3, p0, Lqr6$a;->c:Lfva;

    iget-object p1, p1, Ltua;->f:Lcom/google/android/exoplayer2/k;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lfab;

    invoke-direct {p1}, Lfab;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lqr6$a;->d:Lfab;

    return-void
.end method
