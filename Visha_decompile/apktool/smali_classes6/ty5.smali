.class public abstract Lty5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lty5$a;
    }
.end annotation


# static fields
.field public static final a:Lty5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lty5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lty5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lty5;->a:Lty5$a;

    return-void
.end method
