.class public Lo2$c;
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

    iput-object p1, p0, Lo2$c;->b:Lo2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lro8;
    .locals 1

    new-instance v0, Laj5;

    iget-object p0, p0, Lo2$c;->b:Lo2;

    invoke-direct {v0, p0}, Laj5;-><init>(Lqw0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo2$c;->a()Lro8;

    move-result-object p0

    return-object p0
.end method
