.class public final Lcom/cloud/hisavana/sdk/q$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q$b;->a:Lcom/cloud/hisavana/sdk/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q$b;->a:Lcom/cloud/hisavana/sdk/q;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/q;->b(Lcom/cloud/hisavana/sdk/q;)Lcom/cloud/hisavana/sdk/f4;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/f4;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q$b;->a:Lcom/cloud/hisavana/sdk/q;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/q;->h(Lcom/cloud/hisavana/sdk/q;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
