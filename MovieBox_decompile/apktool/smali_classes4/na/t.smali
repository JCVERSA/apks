.class public final Lna/t;
.super Lna/c;
.source "source.java"


# instance fields
.field private final h:I

.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv9/w;II)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lna/t;-><init>(Lv9/w;IIILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lv9/w;IIILjava/lang/Object;)V
    .locals 0

    .line 2
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lna/c;-><init>(Lv9/w;[II)V

    .line 3
    iput p4, p0, Lna/t;->h:I

    .line 4
    iput-object p5, p0, Lna/t;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public f(JJJLjava/util/List;[Lx9/o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lna/t;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 1
    iget v0, p0, Lna/t;->h:I

    .line 2
    .line 3
    return v0
.end method
