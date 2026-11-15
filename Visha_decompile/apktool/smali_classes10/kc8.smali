.class public Lkc8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lhx8;

.field public final g:Lrlb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lhx8;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc8;->f:Lhx8;

    invoke-virtual {p1}, Lhx8;->d()I

    move-result v0

    iput v0, p0, Lkc8;->e:I

    invoke-virtual {p1}, Lhx8;->e()I

    move-result v0

    iput v0, p0, Lkc8;->d:I

    shl-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkc8;->a:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkc8;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkc8;->c:I

    invoke-virtual {p1}, Lhx8;->g()Lrlb;

    move-result-object p1

    iput-object p1, p0, Lkc8;->g:Lrlb;

    return-void
.end method
