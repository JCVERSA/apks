.class public Lwk$d;
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
    name = "d"
.end annotation


# instance fields
.field public b:I

.field public c:D

.field public final synthetic d:Lwk;


# direct methods
.method public constructor <init>(Lwk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwk$d;->d:Lwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwk;Lwk$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lwk$d;-><init>(Lwk;)V

    return-void
.end method


# virtual methods
.method public a(Lwk$d;)I
    .locals 2

    iget-wide v0, p0, Lwk$d;->c:D

    iget-wide p0, p1, Lwk$d;->c:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lwk$d;

    invoke-virtual {p0, p1}, Lwk$d;->a(Lwk$d;)I

    move-result p0

    return p0
.end method
