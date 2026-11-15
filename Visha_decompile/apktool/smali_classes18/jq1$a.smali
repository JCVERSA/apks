.class public final Ljq1$a;
.super Ljq1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljq1;->e(Ljava/util/Collection;Ljq1$c;Le74;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le74;

.field public final synthetic b:[Z


# direct methods
.method public constructor <init>(Le74;[Z)V
    .locals 0

    iput-object p1, p0, Ljq1$a;->a:Le74;

    iput-object p2, p0, Ljq1$a;->b:[Z

    invoke-direct {p0}, Ljq1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljq1$a;->d()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Ljq1$a;->a:Le74;

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljq1$a;->b:[Z

    aput-boolean v0, p1, v1

    :cond_0
    iget-object p0, p0, Ljq1$a;->b:[Z

    aget-boolean p0, p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Ljq1$a;->b:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
