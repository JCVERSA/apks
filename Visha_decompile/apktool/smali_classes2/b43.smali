.class public final Lb43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2a;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb43;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lb43;->b:Ljava/util/List;

    return-object p0
.end method

.method public getEventTime(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
