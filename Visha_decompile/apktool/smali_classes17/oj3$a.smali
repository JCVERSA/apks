.class public final Loj3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loj3;
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
.method public a(Ljava/lang/String;Ljava/util/List;Lc74;)Lqc2;
    .locals 0

    const-string p0, "rawExpression"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "variableNames"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lqc2;->A1:Lqc2;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/evaluable/a;Le74;Lpnb;Lzbb;Llx7;)Ljava/lang/Object;
    .locals 0

    const-string p0, "expressionKey"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rawExpression"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "evaluable"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "validator"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fieldType"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "logger"

    invoke-static {p7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
