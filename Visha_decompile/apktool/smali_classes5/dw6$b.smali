.class public final Ldw6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnu4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldw6;->h(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Ldw6$b;->b(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/transsion/dbdata/engine/base/callback/DataRequestResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    const-string p0, "result"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 p2, 0x481

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
