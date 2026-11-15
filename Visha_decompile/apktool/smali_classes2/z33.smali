.class public final Lz33;
.super Lrm9;
.source "SourceFile"


# instance fields
.field public final o:La43;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    const-string v0, "DvbDecoder"

    invoke-direct {p0, v0}, Lrm9;-><init>(Ljava/lang/String;)V

    new-instance v0, Lqw7;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lqw7;-><init>([B)V

    invoke-virtual {v0}, Lqw7;->I()I

    move-result p1

    invoke-virtual {v0}, Lqw7;->I()I

    move-result v0

    new-instance v1, La43;

    invoke-direct {v1, p1, v0}, La43;-><init>(II)V

    iput-object v1, p0, Lz33;->o:La43;

    return-void
.end method


# virtual methods
.method public v([BIZ)Ll2a;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lz33;->o:La43;

    invoke-virtual {p3}, La43;->r()V

    :cond_0
    new-instance p3, Lb43;

    iget-object p0, p0, Lz33;->o:La43;

    invoke-virtual {p0, p1, p2}, La43;->b([BI)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Lb43;-><init>(Ljava/util/List;)V

    return-object p3
.end method
