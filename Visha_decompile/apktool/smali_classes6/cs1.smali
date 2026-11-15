.class public final synthetic Lcs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

.field public final synthetic c:Lns1;

.field public final synthetic d:Lnu4;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcs1;->b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iput-object p2, p0, Lcs1;->c:Lns1;

    iput-object p3, p0, Lcs1;->d:Lnu4;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcs1;->b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iget-object v1, p0, Lcs1;->c:Lns1;

    iget-object p0, p0, Lcs1;->d:Lnu4;

    invoke-static {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->g(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;)Lzfb;

    move-result-object p0

    return-object p0
.end method
