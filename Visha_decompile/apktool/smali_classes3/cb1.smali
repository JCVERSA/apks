.class public abstract Lcb1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb1$b;
    }
.end annotation


# static fields
.field public static final a:Lcb1;

.field public static final b:Lcb1;

.field public static final c:Lcb1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcb1$a;

    invoke-direct {v0}, Lcb1$a;-><init>()V

    sput-object v0, Lcb1;->a:Lcb1;

    new-instance v0, Lcb1$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcb1$b;-><init>(I)V

    sput-object v0, Lcb1;->b:Lcb1;

    new-instance v0, Lcb1$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcb1$b;-><init>(I)V

    sput-object v0, Lcb1;->c:Lcb1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcb1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcb1;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcb1;
    .locals 1

    sget-object v0, Lcb1;->b:Lcb1;

    return-object v0
.end method

.method public static synthetic b()Lcb1;
    .locals 1

    sget-object v0, Lcb1;->c:Lcb1;

    return-object v0
.end method

.method public static synthetic c()Lcb1;
    .locals 1

    sget-object v0, Lcb1;->a:Lcb1;

    return-object v0
.end method

.method public static k()Lcb1;
    .locals 1

    sget-object v0, Lcb1;->a:Lcb1;

    return-object v0
.end method


# virtual methods
.method public abstract d(II)Lcb1;
.end method

.method public abstract e(JJ)Lcb1;
.end method

.method public abstract f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcb1;
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcb1;
.end method

.method public abstract h(ZZ)Lcb1;
.end method

.method public abstract i(ZZ)Lcb1;
.end method

.method public abstract j()I
.end method
