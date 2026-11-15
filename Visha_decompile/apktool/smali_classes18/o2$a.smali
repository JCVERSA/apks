.class public Lo2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2;-><init>(Lvx9;Lby6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lo2;


# direct methods
.method public constructor <init>(Lo2;)V
    .locals 0

    iput-object p1, p0, Lo2$a;->b:Lo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsm9;
    .locals 3

    iget-object v0, p0, Lo2$a;->b:Lo2;

    invoke-virtual {v0}, Lo2;->E()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    new-instance v2, Lo2$a$a;

    invoke-direct {v2, p0}, Lo2$a$a;-><init>(Lo2$a;)V

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/n;->u(Lpx0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Le74;)Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo2$a;->a()Lsm9;

    move-result-object p0

    return-object p0
.end method
