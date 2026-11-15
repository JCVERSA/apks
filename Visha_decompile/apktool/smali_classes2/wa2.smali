.class public abstract Lwa2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa2$a;,
        Lwa2$c;,
        Lwa2$b;
    }
.end annotation


# static fields
.field public static final a:Lwa2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwa2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwa2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwa2;->a:Lwa2$a;

    return-void
.end method
