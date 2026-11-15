.class public Lrm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public final synthetic c:Lrm0;


# direct methods
.method public constructor <init>(Lrm0;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lrm0$a;->c:Lrm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lrm0$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lrm0;Ljava/lang/String;Lam0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lrm0$a;-><init>(Lrm0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lrm0$a;->c:Lrm0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    iget-object v0, p0, Lrm0$a;->c:Lrm0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->d0(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v2, p0, Lrm0$a;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iget-object p0, p0, Lrm0$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
