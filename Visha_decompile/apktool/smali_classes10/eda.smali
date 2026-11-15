.class public abstract Leda;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leda$a;
    }
.end annotation


# static fields
.field public static final a:Leda$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leda$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leda$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Leda;->a:Leda$a;

    return-void
.end method

.method public static final a(Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;I)Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Leda;->a:Leda$a;

    invoke-virtual {v0, p0, p1, p2}, Leda$a;->a(Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/List;Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;)Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Leda;->a:Leda$a;

    invoke-virtual {v0, p0, p1, p2}, Leda$a;->c(Ljava/util/List;Ljava/util/List;Lcom/transsion/mediationads/beans/TabStrategy;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final c(ILcom/transsion/mediationads/beans/TabStrategy;)I
    .locals 1

    sget-object v0, Leda;->a:Leda$a;

    invoke-virtual {v0, p0, p1}, Leda$a;->d(ILcom/transsion/mediationads/beans/TabStrategy;)I

    move-result p0

    return p0
.end method

.method public static final d(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;II)Z
    .locals 1

    sget-object v0, Leda;->a:Leda$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Leda$a;->g(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;II)Z

    move-result p0

    return p0
.end method

.method public static final e(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;I)Z
    .locals 1

    sget-object v0, Leda;->a:Leda$a;

    invoke-virtual {v0, p0, p1, p2}, Leda$a;->h(Ljava/util/ArrayList;Lcom/transsion/mediationads/beans/TabStrategy;I)Z

    move-result p0

    return p0
.end method
