.class public final Lid9$a;
.super Lid9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lid9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid9$a;

    invoke-direct {v0}, Lid9$a;-><init>()V

    sput-object v0, Lid9$a;->a:Lid9$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lid9;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
