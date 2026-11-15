.class public Lrtd$a;
.super Lowd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrtd;->o()Lowd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lrtd;


# direct methods
.method public constructor <init>(Lrtd;)V
    .locals 0

    iput-object p1, p0, Lrtd$a;->d:Lrtd;

    invoke-direct {p0}, Lowd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0, p1}, Ltfd;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public b(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    iget-object p0, p0, Ltfd;->c:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method public c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0, p1, p2}, Ltfd;->e(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0}, Ltfd;->clear()V

    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0, p1}, Ltfd;->m(I)Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0, p1, p2}, Ltfd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    invoke-virtual {p0, p1}, Ltfd;->h(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public k()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    return-object p0
.end method

.method public n()I
    .locals 0

    iget-object p0, p0, Lrtd$a;->d:Lrtd;

    iget p0, p0, Ltfd;->d:I

    return p0
.end method
