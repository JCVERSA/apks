.class public final Lv0h;
.super Ls2h;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public synthetic constructor <init>([BIIZLxzg;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Ls2h;-><init>(Lt1h;)V

    const p2, 0x7fffffff

    iput p2, p0, Lv0h;->e:I

    iput-object p1, p0, Lv0h;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lv0h;->c:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget p1, p0, Lv0h;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lv0h;->e:I

    iget v1, p0, Lv0h;->c:I

    iget v2, p0, Lv0h;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lv0h;->c:I

    if-lez v1, :cond_0

    iput v1, p0, Lv0h;->d:I

    iput v0, p0, Lv0h;->c:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lv0h;->d:I

    :goto_0
    return p1
.end method
