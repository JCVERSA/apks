.class public abstract Lpz5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpz5$a;
    }
.end annotation


# static fields
.field public static final a:Lpz5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpz5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpz5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpz5;->a:Lpz5$a;

    return-void
.end method

.method public static final a(I)V
    .locals 1

    sget-object v0, Lpz5;->a:Lpz5$a;

    invoke-virtual {v0, p0}, Lpz5$a;->b(I)V

    return-void
.end method

.method public static final b(I)V
    .locals 1

    sget-object v0, Lpz5;->a:Lpz5$a;

    invoke-virtual {v0, p0}, Lpz5$a;->c(I)V

    return-void
.end method
