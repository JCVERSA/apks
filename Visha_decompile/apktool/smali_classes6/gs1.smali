.class public final synthetic Lgs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

.field public final synthetic c:Lns1;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs1;->b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iput-object p2, p0, Lgs1;->c:Lns1;

    iput-object p3, p0, Lgs1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lgs1;->b:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iget-object v1, p0, Lgs1;->c:Lns1;

    iget-object p0, p0, Lgs1;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p0}, Lcom/transsion/dbdata/engine/DataEngine;->h(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lzfb;

    move-result-object p0

    return-object p0
.end method
