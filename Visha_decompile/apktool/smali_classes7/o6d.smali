.class public Lo6d;
.super Lw2d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v0

    invoke-virtual {v0}, Lkhd;->G()Lixd;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0}, Lixd;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v3

    invoke-virtual {v3}, Lkhd;->E()V

    :cond_0
    invoke-virtual {v0}, Lixd;->d()V

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v3

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkhd;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    invoke-virtual {p0}, Lkhd;->C()V

    return-void
.end method
