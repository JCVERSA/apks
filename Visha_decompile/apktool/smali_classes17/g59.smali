.class public final Lg59;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg59;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lg59;->c:I

    return p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg59;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lg59;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg59;->b:I

    iget v0, p0, Lg59;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg59;->c:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lg59;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg59;->b:I

    iget v0, p0, Lg59;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg59;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lg59;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg59;->c:I

    :goto_0
    return-void
.end method
