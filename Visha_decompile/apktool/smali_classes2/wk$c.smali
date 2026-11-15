.class public Lwk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:D

.field public final synthetic f:Lwk;


# direct methods
.method public constructor <init>(Lwk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwk$c;->f:Lwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwk;Lwk$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwk$c;-><init>(Lwk;)V

    return-void
.end method


# virtual methods
.method public a(Lwk$c;)I
    .locals 6

    iget-wide v0, p0, Lwk$c;->e:D

    iget-wide v2, p1, Lwk$c;->e:D

    cmpg-double v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget p0, p0, Lwk$c;->d:I

    iget p1, p1, Lwk$c;->d:I

    if-le p0, p1, :cond_1

    return v5

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lwk$c;

    invoke-virtual {p0, p1}, Lwk$c;->a(Lwk$c;)I

    move-result p0

    return p0
.end method
