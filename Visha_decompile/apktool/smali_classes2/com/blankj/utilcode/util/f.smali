.class public abstract Lcom/blankj/utilcode/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/f$a;
    .locals 1

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/f;->b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/f$a;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/f$a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/f;->c([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/f$a;

    move-result-object p0

    return-object p0
.end method

.method public static c([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/f$a;
    .locals 0

    new-instance p0, Lcom/blankj/utilcode/util/f$a;

    const/4 p1, 0x0

    const-string p2, ""

    invoke-direct {p0, p1, p2, p2}, Lcom/blankj/utilcode/util/f$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
