.class public final Lcom/transsion/onlinevideo/tiktok/repository/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/onlinevideo/tiktok/repository/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/onlinevideo/tiktok/repository/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/onlinevideo/tiktok/repository/a;
    .locals 0

    sget-object p0, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;->a:Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/tiktok/repository/a$a$a;->a()Lcom/transsion/onlinevideo/tiktok/repository/a;

    move-result-object p0

    return-object p0
.end method

.method public final b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
