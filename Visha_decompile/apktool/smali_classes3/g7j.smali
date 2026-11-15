.class public final Lg7j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lo9j;

.field public c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lo9j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7j;->b:Lo9j;

    return-void
.end method

.method public static bridge synthetic d(Lg7j;)Z
    .locals 0

    iget-boolean p0, p0, Lg7j;->a:Z

    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-boolean v0, p0, Lg7j;->a:Z

    or-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lg7j;->a:Z

    iget v0, p0, Lg7j;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lg7j;->c:I

    return-void
.end method

.method public final b(Lo9j;)V
    .locals 2

    iget-boolean v0, p0, Lg7j;->a:Z

    iget-object v1, p0, Lg7j;->b:Lo9j;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lg7j;->a:Z

    iput-object p1, p0, Lg7j;->b:Lo9j;

    return-void
.end method

.method public final c(I)V
    .locals 3

    iget-boolean v0, p0, Lg7j;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lg7j;->e:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln7g;->d(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lg7j;->a:Z

    iput-boolean v1, p0, Lg7j;->d:Z

    iput p1, p0, Lg7j;->e:I

    return-void
.end method
