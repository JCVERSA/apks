.class Lcom/mgmi/ads/api/a/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfnd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/o;-><init>(Lcom/mgmi/ads/api/a/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfnd$b;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/a/o;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/o$2;->a:Lcom/mgmi/ads/api/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/mgmi/model/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/mgmi/g/a/a;

    invoke-direct {p0}, Lcom/mgmi/g/a/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/mgmi/g/a/a;->a(Ljava/lang/String;)I

    move-result p1

    const v0, 0x186a0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/mgmi/g/a/a;->a()Lcom/mgmi/model/r;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/o$2;->a([Ljava/lang/String;)Lcom/mgmi/model/r;

    move-result-object p0

    return-object p0
.end method
