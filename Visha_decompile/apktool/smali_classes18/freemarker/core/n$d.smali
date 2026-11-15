.class public Lfreemarker/core/n$d;
.super Lfreemarker/core/n$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfreemarker/core/n$a;-><init>(Ljava/lang/Boolean;I)V

    iput-boolean p3, p0, Lfreemarker/core/n$d;->m:Z

    return-void
.end method


# virtual methods
.method public h0(Ljava/util/Date;ILfreemarker/core/Environment;)Lzfa;
    .locals 10

    invoke-virtual {p0, p2}, Lfreemarker/core/n$a;->j0(I)V

    new-instance v0, Lfreemarker/template/SimpleScalar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/n$a;->k0(Ljava/util/Date;ILfreemarker/core/Environment;)Z

    move-result v6

    iget v7, p0, Lfreemarker/core/n$a;->l:I

    iget-boolean p0, p0, Lfreemarker/core/n$d;->m:Z

    if-eqz p0, :cond_2

    sget-object p0, Lfreemarker/template/utility/DateUtil;->a:Ljava/util/TimeZone;

    :goto_2
    move-object v8, p0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p0}, Lfreemarker/core/Environment;->U1(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lfreemarker/core/Configurable;->E()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-virtual {p3}, Lfreemarker/core/Environment;->M0()Lfreemarker/template/utility/DateUtil$b;

    move-result-object v9

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lfreemarker/template/utility/DateUtil;->b(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
