.class public abstract Lv19;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lv19;->b:Ljava/util/List;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lv19;->a:I

    return v0
.end method

.method public static b()Ljava/util/List;
    .locals 1

    sget-object v0, Lv19;->b:Ljava/util/List;

    return-object v0
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lv19;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lv19;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lv19;->a:I

    return-void
.end method

.method public static e(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lv19;->b:Ljava/util/List;

    return-void
.end method
