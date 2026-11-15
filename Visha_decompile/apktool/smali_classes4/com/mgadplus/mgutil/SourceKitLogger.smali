.class public abstract Lcom/mgadplus/mgutil/SourceKitLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/mgutil/SourceKitLogger$a;
    }
.end annotation


# static fields
.field public static a:Lcom/mgadplus/mgutil/SourceKitLogger$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger$a;->invalid:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    sput-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v0

    sget-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->alldebug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v1}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v1

    const-string v2, "null"

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mgmisdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v0

    sget-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->error:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v1}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v0

    sget-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->alldebug:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v1}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v1

    const-string v2, "null"

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    move-object p1, v2

    :cond_0
    const-string p0, "mgmisdk_"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v0

    sget-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->error:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v1}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_3

    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/mgadplus/mgutil/SourceKitLogger;->a:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v0}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v0

    sget-object v1, Lcom/mgadplus/mgutil/SourceKitLogger$a;->info:Lcom/mgadplus/mgutil/SourceKitLogger$a;

    invoke-virtual {v1}, Lcom/mgadplus/mgutil/SourceKitLogger$a;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
