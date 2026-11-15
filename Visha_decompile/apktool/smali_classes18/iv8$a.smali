.class public final Liv8$a;
.super Lb3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liv8;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public final synthetic f:Liv8;


# direct methods
.method public constructor <init>(Liv8;)V
    .locals 1

    iput-object p1, p0, Liv8$a;->f:Liv8;

    invoke-direct {p0}, Lb3;-><init>()V

    invoke-virtual {p1}, Lr2;->size()I

    move-result v0

    iput v0, p0, Liv8$a;->d:I

    invoke-static {p1}, Liv8;->l(Liv8;)I

    move-result p1

    iput p1, p0, Liv8$a;->e:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget v0, p0, Liv8$a;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb3;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liv8$a;->f:Liv8;

    invoke-static {v0}, Liv8;->f(Liv8;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Liv8$a;->e:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lb3;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Liv8$a;->f:Liv8;

    iget v1, p0, Liv8$a;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Liv8;->k(Liv8;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Liv8$a;->e:I

    iget v0, p0, Liv8$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Liv8$a;->d:I

    :goto_0
    return-void
.end method
