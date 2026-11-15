.class public final Lr6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lr6$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr6$a;->c:Z

    iput-boolean v0, p0, Lr6$a;->e:Z

    invoke-static {p1}, Lr6$b;->b(Lr6$b;)Z

    move-result v0

    iput-boolean v0, p0, Lr6$a;->a:Z

    invoke-static {p1}, Lr6$b;->d(Lr6$b;)Z

    move-result v0

    iput-boolean v0, p0, Lr6$a;->b:Z

    invoke-static {p1}, Lr6$b;->e(Lr6$b;)Z

    move-result v0

    iput-boolean v0, p0, Lr6$a;->c:Z

    invoke-static {p1}, Lr6$b;->f(Lr6$b;)I

    move-result v0

    iput v0, p0, Lr6$a;->d:I

    invoke-static {p1}, Lr6$b;->g(Lr6$b;)Z

    move-result v0

    iput-boolean v0, p0, Lr6$a;->e:Z

    invoke-static {p1}, Lr6$b;->a(Lr6$b;)Z

    move-result p0

    sput-boolean p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b:Z

    return-void
.end method

.method public static synthetic a(Lr6$a;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$a;->c:Z

    return p0
.end method

.method public static synthetic b(Lr6$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lr6$a;->a:Z

    return p1
.end method

.method public static synthetic c(Lr6$a;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$a;->a:Z

    return p0
.end method

.method public static synthetic d(Lr6$a;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$a;->e:Z

    return p0
.end method

.method public static synthetic e(Lr6$a;)Z
    .locals 0

    iget-boolean p0, p0, Lr6$a;->b:Z

    return p0
.end method

.method public static synthetic f(Lr6$a;)I
    .locals 0

    iget p0, p0, Lr6$a;->d:I

    return p0
.end method
