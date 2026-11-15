.class final Lfa/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lda/i;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/c;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p1, p0, Lfa/c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public getEventTime(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method
