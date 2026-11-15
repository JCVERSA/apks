.class public abstract Lqe1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqe1$a;
    }
.end annotation


# static fields
.field public static final a:Lqe1$a;

.field public static volatile b:Lse1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqe1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqe1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lqe1;->a:Lqe1$a;

    return-void
.end method

.method public static final synthetic a()Lse1;
    .locals 1

    sget-object v0, Lqe1;->b:Lse1;

    return-object v0
.end method

.method public static final synthetic b(Lse1;)V
    .locals 0

    sput-object p0, Lqe1;->b:Lse1;

    return-void
.end method
