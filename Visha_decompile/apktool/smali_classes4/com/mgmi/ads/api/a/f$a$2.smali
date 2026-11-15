.class Lcom/mgmi/ads/api/a/f$a$2;
.super Lcom/mgadplus/netlib/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/a/f$a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgmi/ads/api/a/d;Landroid/content/Context;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgadplus/netlib/base/b<",
        "Lcom/mgmi/net/bean/BootAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mgmi/ads/api/a/f$a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/f$a;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iput-object p2, p0, Lcom/mgmi/ads/api/a/f$a$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mgmi/ads/api/a/f$a$2;->b:I

    invoke-direct {p0}, Lcom/mgadplus/netlib/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object p4, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p4, p4, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    .line 5
    iget-object p4, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p4, p4, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p4}, Lcom/mgmi/ads/api/a/f;->m()V

    const/16 p4, 0xc8

    if-eq p1, p4, :cond_0

    .line 6
    iget-object p2, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v1, p2, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p3

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/16 p1, 0xbba

    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-eq p2, p4, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v1, p1, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p0, v0, p2}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v1, p2, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/e;->i()Lcom/mgmi/ads/api/a/d;

    move-result-object v2

    move-object v3, p0

    move-object v4, p5

    move-object v5, p3

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgadplus/netlib/base/b;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {p0, v0, p1}, Lcom/mgmi/ads/api/a/f;->a(ZI)V

    :goto_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 3
    .param p1    # Lcom/mgmi/net/bean/BootAdBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/e;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/f;->m()V

    .line 3
    iget-object v0, p0, Lcom/mgmi/ads/api/a/f$a$2;->c:Lcom/mgmi/ads/api/a/f$a;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/f$a;->a:Lcom/mgmi/ads/api/a/f;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/f$a$2;->a:Ljava/lang/String;

    iget v2, p0, Lcom/mgmi/ads/api/a/f$a$2;->b:I

    invoke-virtual {v0, p1, v1, p0, v2}, Lcom/mgmi/ads/api/a/f;->a(Lcom/mgmi/net/bean/BootAdBean;Ljava/lang/String;Lcom/mgadplus/netlib/base/b;I)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/f$a$2;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    return-void
.end method
