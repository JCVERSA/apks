.class public abstract Lwx0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwx0$a;
    }
.end annotation


# static fields
.field public static final a:Lwx0$a;

.field public static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwx0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwx0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwx0;->a:Lwx0$a;

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lwx0;->b:J

    return-wide v0
.end method

.method public static final synthetic b(J)V
    .locals 0

    sput-wide p0, Lwx0;->b:J

    return-void
.end method
