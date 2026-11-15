.class public abstract Lnxa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnxa$a;
    }
.end annotation


# static fields
.field public static final a:Lnxa$a;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnxa$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnxa$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnxa;->a:Lnxa$a;

    const-string v0, "TranHapProviderHelper"

    sput-object v0, Lnxa;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
