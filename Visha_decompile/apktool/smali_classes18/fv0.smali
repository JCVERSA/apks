.class public abstract Lfv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfv0$a;
    }
.end annotation


# static fields
.field public static final e:Lfv0$a;


# instance fields
.field public final b:C

.field public final c:C

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfv0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfv0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfv0;->e:Lfv0$a;

    return-void
.end method

.method public constructor <init>(CCI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    iput-char p1, p0, Lfv0;->b:C

    invoke-static {p1, p2, p3}, Lxh8;->c(III)I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lfv0;->c:C

    iput p3, p0, Lfv0;->d:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()C
    .locals 0

    iget-char p0, p0, Lfv0;->b:C

    return p0
.end method

.method public final c()C
    .locals 0

    iget-char p0, p0, Lfv0;->c:C

    return p0
.end method

.method public f()Lcv0;
    .locals 3

    new-instance v0, Lgv0;

    iget-char v1, p0, Lfv0;->b:C

    iget-char v2, p0, Lfv0;->c:C

    iget p0, p0, Lfv0;->d:I

    invoke-direct {v0, v1, v2, p0}, Lgv0;-><init>(CCI)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lfv0;->f()Lcv0;

    move-result-object p0

    return-object p0
.end method
