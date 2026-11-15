.class public Lcom/mgtv/ssp/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/ssp/utils/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgtv/ssp/utils/e;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/mgtv/ssp/utils/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .locals 1

    .line 2
    sget v0, Lcom/mgtv/ssp/utils/e;->c:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgtv/ssp/utils/e;->d:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/mgtv/ssp/utils/e;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/ssp/utils/e;->d:I

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/mgtv/ssp/utils/e;->e:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/ssp/utils/e;->e:Ljava/lang/String;

    return-object v0
.end method
